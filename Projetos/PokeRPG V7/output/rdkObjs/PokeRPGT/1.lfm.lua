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
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(900);
    obj.layout1:setHeight(450);
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(620);
    obj.layout2:setTop(265);
    obj.layout2:setWidth(400);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout2);
    obj.imageCheckBox1:setField("vitalidade_1");
    obj.imageCheckBox1:setLeft(10);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(20);
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox1:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout2);
    obj.imageCheckBox2:setField("vitalidade_2");
    obj.imageCheckBox2:setLeft(30);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(20);
    obj.imageCheckBox2:setHeight(20);
    obj.imageCheckBox2:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox2:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout2);
    obj.imageCheckBox3:setField("vitalidade_3");
    obj.imageCheckBox3:setLeft(50);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(20);
    obj.imageCheckBox3:setHeight(20);
    obj.imageCheckBox3:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox3:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout2);
    obj.imageCheckBox4:setField("vitalidade_4");
    obj.imageCheckBox4:setLeft(70);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(20);
    obj.imageCheckBox4:setHeight(20);
    obj.imageCheckBox4:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox4:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout2);
    obj.imageCheckBox5:setField("vitalidade_5");
    obj.imageCheckBox5:setLeft(90);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(20);
    obj.imageCheckBox5:setHeight(20);
    obj.imageCheckBox5:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox5:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout2);
    obj.imageCheckBox6:setField("vitalidade_6");
    obj.imageCheckBox6:setLeft(110);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(20);
    obj.imageCheckBox6:setHeight(20);
    obj.imageCheckBox6:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox6:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout2);
    obj.imageCheckBox7:setField("vitalidade_7");
    obj.imageCheckBox7:setLeft(130);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(20);
    obj.imageCheckBox7:setHeight(20);
    obj.imageCheckBox7:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox7:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout2);
    obj.imageCheckBox8:setField("vitalidade_8");
    obj.imageCheckBox8:setLeft(150);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(20);
    obj.imageCheckBox8:setHeight(20);
    obj.imageCheckBox8:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox8:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout2);
    obj.imageCheckBox9:setField("vitalidade_9");
    obj.imageCheckBox9:setLeft(170);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(20);
    obj.imageCheckBox9:setHeight(20);
    obj.imageCheckBox9:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox9:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout2);
    obj.imageCheckBox10:setField("vitalidade_10");
    obj.imageCheckBox10:setLeft(190);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(20);
    obj.imageCheckBox10:setHeight(20);
    obj.imageCheckBox10:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox10:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout2);
    obj.imageCheckBox11:setField("vitalidade_11");
    obj.imageCheckBox11:setLeft(210);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(20);
    obj.imageCheckBox11:setHeight(20);
    obj.imageCheckBox11:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox11:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout2);
    obj.imageCheckBox12:setField("vitalidade_12");
    obj.imageCheckBox12:setLeft(230);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(20);
    obj.imageCheckBox12:setHeight(20);
    obj.imageCheckBox12:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox12:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(90);
    obj.layout3:setTop(268);
    obj.layout3:setWidth(210);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout3);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(16);
    obj.edit1:setFontColor("#ffffff");
    obj.edit1:setHorzTextAlign("leading");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(210);
    obj.edit1:setHeight(31);
    obj.edit1:setField("personagem");
    obj.edit1:setName("edit1");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setLeft(368);
    obj.layout4:setTop(268);
    obj.layout4:setWidth(210);
    obj.layout4:setHeight(30);
    obj.layout4:setName("layout4");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout4);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(16);
    obj.edit2:setFontColor("#ffffff");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(210);
    obj.edit2:setHeight(31);
    obj.edit2:setField("classeBasica");
    obj.edit2:setName("edit2");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout1);
    obj.layout5:setLeft(90);
    obj.layout5:setTop(320);
    obj.layout5:setWidth(210);
    obj.layout5:setHeight(30);
    obj.layout5:setName("layout5");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout5);
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

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout1);
    obj.layout6:setLeft(368);
    obj.layout6:setTop(320);
    obj.layout6:setWidth(210);
    obj.layout6:setHeight(30);
    obj.layout6:setName("layout6");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout6);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(16);
    obj.edit4:setFontColor("#ffffff");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(210);
    obj.edit4:setHeight(31);
    obj.edit4:setField("classeAvacada");
    obj.edit4:setName("edit4");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout1);
    obj.layout7:setLeft(90);
    obj.layout7:setTop(375);
    obj.layout7:setWidth(210);
    obj.layout7:setHeight(30);
    obj.layout7:setName("layout7");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout7);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(16);
    obj.edit5:setFontColor("#ffffff");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(210);
    obj.edit5:setHeight(31);
    obj.edit5:setField("professor");
    obj.edit5:setName("edit5");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout1);
    obj.layout8:setLeft(368);
    obj.layout8:setTop(375);
    obj.layout8:setWidth(210);
    obj.layout8:setHeight(30);
    obj.layout8:setName("layout8");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout8);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(16);
    obj.edit6:setFontColor("#ffffff");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(210);
    obj.edit6:setHeight(31);
    obj.edit6:setField("tendencia");
    obj.edit6:setName("edit6");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout1);
    obj.layout9:setLeft(630);
    obj.layout9:setTop(383);
    obj.layout9:setWidth(85);
    obj.layout9:setHeight(50);
    obj.layout9:setName("layout9");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout9);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(16);
    obj.edit7:setFontColor("#ffffff");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(85);
    obj.edit7:setHeight(30);
    obj.edit7:setField("experiencia");
    obj.edit7:setName("edit7");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout1);
    obj.layout10:setLeft(768);
    obj.layout10:setTop(383);
    obj.layout10:setWidth(85);
    obj.layout10:setHeight(50);
    obj.layout10:setName("layout10");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout10);
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

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout1);
    obj.layout11:setLeft(620);
    obj.layout11:setTop(315);
    obj.layout11:setWidth(400);
    obj.layout11:setHeight(30);
    obj.layout11:setName("layout11");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout11);
    obj.imageCheckBox13:setField("acoesDiarias_1");
    obj.imageCheckBox13:setLeft(10);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(20);
    obj.imageCheckBox13:setHeight(20);
    obj.imageCheckBox13:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox13:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout11);
    obj.imageCheckBox14:setField("acoesDiarias_2");
    obj.imageCheckBox14:setLeft(30);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(20);
    obj.imageCheckBox14:setHeight(20);
    obj.imageCheckBox14:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox14:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout11);
    obj.imageCheckBox15:setField("acoesDiarias_3");
    obj.imageCheckBox15:setLeft(50);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(20);
    obj.imageCheckBox15:setHeight(20);
    obj.imageCheckBox15:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox15:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout11);
    obj.imageCheckBox16:setField("acoesDiarias_4");
    obj.imageCheckBox16:setLeft(70);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(20);
    obj.imageCheckBox16:setHeight(20);
    obj.imageCheckBox16:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox16:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout11);
    obj.imageCheckBox17:setField("acoesDiarias_5");
    obj.imageCheckBox17:setLeft(90);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(20);
    obj.imageCheckBox17:setHeight(20);
    obj.imageCheckBox17:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox17:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout11);
    obj.imageCheckBox18:setField("acoesDiarias_6");
    obj.imageCheckBox18:setLeft(110);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(20);
    obj.imageCheckBox18:setHeight(20);
    obj.imageCheckBox18:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox18:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout11);
    obj.imageCheckBox19:setField("acoesDiarias_7");
    obj.imageCheckBox19:setLeft(130);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(20);
    obj.imageCheckBox19:setHeight(20);
    obj.imageCheckBox19:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox19:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout11);
    obj.imageCheckBox20:setField("acoesDiarias_8");
    obj.imageCheckBox20:setLeft(150);
    obj.imageCheckBox20:setTop(4);
    obj.imageCheckBox20:setWidth(20);
    obj.imageCheckBox20:setHeight(20);
    obj.imageCheckBox20:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox20:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout11);
    obj.imageCheckBox21:setField("acoesDiarias_9");
    obj.imageCheckBox21:setLeft(170);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(20);
    obj.imageCheckBox21:setHeight(20);
    obj.imageCheckBox21:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox21:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout11);
    obj.imageCheckBox22:setField("acoesDiarias_10");
    obj.imageCheckBox22:setLeft(190);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(20);
    obj.imageCheckBox22:setHeight(20);
    obj.imageCheckBox22:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox22:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout11);
    obj.imageCheckBox23:setField("acoesDiarias_11");
    obj.imageCheckBox23:setLeft(210);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(20);
    obj.imageCheckBox23:setHeight(20);
    obj.imageCheckBox23:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox23:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout11);
    obj.imageCheckBox24:setField("acoesDiarias_12");
    obj.imageCheckBox24:setLeft(230);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(20);
    obj.imageCheckBox24:setHeight(20);
    obj.imageCheckBox24:setImageChecked("PokeRPGT/images/premierball_on.png");
    obj.imageCheckBox24:setImageUnchecked("PokeRPGT/images/premierball_off.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(0);
    obj.layout12:setTop(400);
    obj.layout12:setWidth(930);
    obj.layout12:setHeight(200);
    obj.layout12:setName("layout12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout12);
    obj.layout13:setLeft(120);
    obj.layout13:setTop(121);
    obj.layout13:setWidth(200);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout13);
    obj.imageCheckBox25:setField("forca_1");
    obj.imageCheckBox25:setLeft(10);
    obj.imageCheckBox25:setTop(4);
    obj.imageCheckBox25:setWidth(19);
    obj.imageCheckBox25:setHeight(19);
    obj.imageCheckBox25:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox25:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout13);
    obj.imageCheckBox26:setField("forca_2");
    obj.imageCheckBox26:setLeft(29);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(19);
    obj.imageCheckBox26:setHeight(19);
    obj.imageCheckBox26:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox26:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout13);
    obj.imageCheckBox27:setField("forca_3");
    obj.imageCheckBox27:setLeft(48);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(19);
    obj.imageCheckBox27:setHeight(19);
    obj.imageCheckBox27:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox27:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout13);
    obj.imageCheckBox28:setField("forca_4");
    obj.imageCheckBox28:setLeft(67);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(19);
    obj.imageCheckBox28:setHeight(19);
    obj.imageCheckBox28:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox28:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout13);
    obj.imageCheckBox29:setField("forca_5");
    obj.imageCheckBox29:setLeft(86);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(19);
    obj.imageCheckBox29:setHeight(19);
    obj.imageCheckBox29:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox29:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout13);
    obj.imageCheckBox30:setField("forca_6");
    obj.imageCheckBox30:setLeft(105);
    obj.imageCheckBox30:setTop(4);
    obj.imageCheckBox30:setWidth(19);
    obj.imageCheckBox30:setHeight(19);
    obj.imageCheckBox30:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox30:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout13);
    obj.imageCheckBox31:setField("forca_7");
    obj.imageCheckBox31:setLeft(124);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(19);
    obj.imageCheckBox31:setHeight(19);
    obj.imageCheckBox31:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox31:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout13);
    obj.imageCheckBox32:setField("forca_8");
    obj.imageCheckBox32:setLeft(143);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(19);
    obj.imageCheckBox32:setHeight(19);
    obj.imageCheckBox32:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox32:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout13);
    obj.imageCheckBox33:setField("forca_9");
    obj.imageCheckBox33:setLeft(162);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(19);
    obj.imageCheckBox33:setHeight(19);
    obj.imageCheckBox33:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox33:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout12);
    obj.layout14:setLeft(120);
    obj.layout14:setTop(147);
    obj.layout14:setWidth(200);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout14);
    obj.imageCheckBox34:setField("destreza_1");
    obj.imageCheckBox34:setLeft(10);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(19);
    obj.imageCheckBox34:setHeight(19);
    obj.imageCheckBox34:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox34:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout14);
    obj.imageCheckBox35:setField("destreza_2");
    obj.imageCheckBox35:setLeft(29);
    obj.imageCheckBox35:setTop(4);
    obj.imageCheckBox35:setWidth(19);
    obj.imageCheckBox35:setHeight(19);
    obj.imageCheckBox35:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox35:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout14);
    obj.imageCheckBox36:setField("destreza_3");
    obj.imageCheckBox36:setLeft(48);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(19);
    obj.imageCheckBox36:setHeight(19);
    obj.imageCheckBox36:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox36:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout14);
    obj.imageCheckBox37:setField("destreza_4");
    obj.imageCheckBox37:setLeft(67);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(19);
    obj.imageCheckBox37:setHeight(19);
    obj.imageCheckBox37:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox37:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout14);
    obj.imageCheckBox38:setField("destreza_5");
    obj.imageCheckBox38:setLeft(86);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(19);
    obj.imageCheckBox38:setHeight(19);
    obj.imageCheckBox38:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox38:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout14);
    obj.imageCheckBox39:setField("destreza_6");
    obj.imageCheckBox39:setLeft(105);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(19);
    obj.imageCheckBox39:setHeight(19);
    obj.imageCheckBox39:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox39:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout14);
    obj.imageCheckBox40:setField("destreza_7");
    obj.imageCheckBox40:setLeft(124);
    obj.imageCheckBox40:setTop(4);
    obj.imageCheckBox40:setWidth(19);
    obj.imageCheckBox40:setHeight(19);
    obj.imageCheckBox40:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox40:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout14);
    obj.imageCheckBox41:setField("destreza_8");
    obj.imageCheckBox41:setLeft(143);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(19);
    obj.imageCheckBox41:setHeight(19);
    obj.imageCheckBox41:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox41:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout14);
    obj.imageCheckBox42:setField("destreza_9");
    obj.imageCheckBox42:setLeft(162);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(19);
    obj.imageCheckBox42:setHeight(19);
    obj.imageCheckBox42:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox42:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout12);
    obj.layout15:setLeft(120);
    obj.layout15:setTop(172);
    obj.layout15:setWidth(200);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout15);
    obj.imageCheckBox43:setField("vigor_1");
    obj.imageCheckBox43:setLeft(10);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(19);
    obj.imageCheckBox43:setHeight(19);
    obj.imageCheckBox43:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox43:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout15);
    obj.imageCheckBox44:setField("vigor_2");
    obj.imageCheckBox44:setLeft(29);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(19);
    obj.imageCheckBox44:setHeight(19);
    obj.imageCheckBox44:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox44:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout15);
    obj.imageCheckBox45:setField("vigor_3");
    obj.imageCheckBox45:setLeft(48);
    obj.imageCheckBox45:setTop(4);
    obj.imageCheckBox45:setWidth(19);
    obj.imageCheckBox45:setHeight(19);
    obj.imageCheckBox45:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox45:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout15);
    obj.imageCheckBox46:setField("vigor_4");
    obj.imageCheckBox46:setLeft(67);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(19);
    obj.imageCheckBox46:setHeight(19);
    obj.imageCheckBox46:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox46:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout15);
    obj.imageCheckBox47:setField("vigor_5");
    obj.imageCheckBox47:setLeft(86);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(19);
    obj.imageCheckBox47:setHeight(19);
    obj.imageCheckBox47:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox47:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout15);
    obj.imageCheckBox48:setField("vigor_6");
    obj.imageCheckBox48:setLeft(105);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(19);
    obj.imageCheckBox48:setHeight(19);
    obj.imageCheckBox48:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox48:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout15);
    obj.imageCheckBox49:setField("vigor_7");
    obj.imageCheckBox49:setLeft(124);
    obj.imageCheckBox49:setTop(4);
    obj.imageCheckBox49:setWidth(19);
    obj.imageCheckBox49:setHeight(19);
    obj.imageCheckBox49:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox49:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout15);
    obj.imageCheckBox50:setField("vigor_8");
    obj.imageCheckBox50:setLeft(143);
    obj.imageCheckBox50:setTop(4);
    obj.imageCheckBox50:setWidth(19);
    obj.imageCheckBox50:setHeight(19);
    obj.imageCheckBox50:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox50:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout15);
    obj.imageCheckBox51:setField("vigor_9");
    obj.imageCheckBox51:setLeft(162);
    obj.imageCheckBox51:setTop(4);
    obj.imageCheckBox51:setWidth(19);
    obj.imageCheckBox51:setHeight(19);
    obj.imageCheckBox51:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox51:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout12);
    obj.layout16:setLeft(425);
    obj.layout16:setTop(121);
    obj.layout16:setWidth(200);
    obj.layout16:setHeight(25);
    obj.layout16:setName("layout16");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout16);
    obj.imageCheckBox52:setField("carisma_1");
    obj.imageCheckBox52:setLeft(10);
    obj.imageCheckBox52:setTop(4);
    obj.imageCheckBox52:setWidth(19);
    obj.imageCheckBox52:setHeight(19);
    obj.imageCheckBox52:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox52:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout16);
    obj.imageCheckBox53:setField("carisma_2");
    obj.imageCheckBox53:setLeft(29);
    obj.imageCheckBox53:setTop(4);
    obj.imageCheckBox53:setWidth(19);
    obj.imageCheckBox53:setHeight(19);
    obj.imageCheckBox53:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox53:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout16);
    obj.imageCheckBox54:setField("carisma_3");
    obj.imageCheckBox54:setLeft(48);
    obj.imageCheckBox54:setTop(4);
    obj.imageCheckBox54:setWidth(19);
    obj.imageCheckBox54:setHeight(19);
    obj.imageCheckBox54:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox54:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout16);
    obj.imageCheckBox55:setField("carisma_4");
    obj.imageCheckBox55:setLeft(67);
    obj.imageCheckBox55:setTop(4);
    obj.imageCheckBox55:setWidth(19);
    obj.imageCheckBox55:setHeight(19);
    obj.imageCheckBox55:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox55:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout16);
    obj.imageCheckBox56:setField("carisma_5");
    obj.imageCheckBox56:setLeft(86);
    obj.imageCheckBox56:setTop(4);
    obj.imageCheckBox56:setWidth(19);
    obj.imageCheckBox56:setHeight(19);
    obj.imageCheckBox56:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox56:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout16);
    obj.imageCheckBox57:setField("carisma_6");
    obj.imageCheckBox57:setLeft(105);
    obj.imageCheckBox57:setTop(4);
    obj.imageCheckBox57:setWidth(19);
    obj.imageCheckBox57:setHeight(19);
    obj.imageCheckBox57:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox57:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout16);
    obj.imageCheckBox58:setField("carisma_7");
    obj.imageCheckBox58:setLeft(124);
    obj.imageCheckBox58:setTop(4);
    obj.imageCheckBox58:setWidth(19);
    obj.imageCheckBox58:setHeight(19);
    obj.imageCheckBox58:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox58:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout16);
    obj.imageCheckBox59:setField("carisma_8");
    obj.imageCheckBox59:setLeft(143);
    obj.imageCheckBox59:setTop(4);
    obj.imageCheckBox59:setWidth(19);
    obj.imageCheckBox59:setHeight(19);
    obj.imageCheckBox59:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox59:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout16);
    obj.imageCheckBox60:setField("carisma_9");
    obj.imageCheckBox60:setLeft(162);
    obj.imageCheckBox60:setTop(4);
    obj.imageCheckBox60:setWidth(19);
    obj.imageCheckBox60:setHeight(19);
    obj.imageCheckBox60:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox60:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout12);
    obj.layout17:setLeft(425);
    obj.layout17:setTop(147);
    obj.layout17:setWidth(200);
    obj.layout17:setHeight(25);
    obj.layout17:setName("layout17");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout17);
    obj.imageCheckBox61:setField("manipulacao_1");
    obj.imageCheckBox61:setLeft(10);
    obj.imageCheckBox61:setTop(4);
    obj.imageCheckBox61:setWidth(19);
    obj.imageCheckBox61:setHeight(19);
    obj.imageCheckBox61:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox61:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout17);
    obj.imageCheckBox62:setField("manipulacao_2");
    obj.imageCheckBox62:setLeft(29);
    obj.imageCheckBox62:setTop(4);
    obj.imageCheckBox62:setWidth(19);
    obj.imageCheckBox62:setHeight(19);
    obj.imageCheckBox62:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox62:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout17);
    obj.imageCheckBox63:setField("manipulacao_3");
    obj.imageCheckBox63:setLeft(48);
    obj.imageCheckBox63:setTop(4);
    obj.imageCheckBox63:setWidth(19);
    obj.imageCheckBox63:setHeight(19);
    obj.imageCheckBox63:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox63:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout17);
    obj.imageCheckBox64:setField("manipulacao_4");
    obj.imageCheckBox64:setLeft(67);
    obj.imageCheckBox64:setTop(4);
    obj.imageCheckBox64:setWidth(19);
    obj.imageCheckBox64:setHeight(19);
    obj.imageCheckBox64:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox64:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout17);
    obj.imageCheckBox65:setField("manipulacao_5");
    obj.imageCheckBox65:setLeft(86);
    obj.imageCheckBox65:setTop(4);
    obj.imageCheckBox65:setWidth(19);
    obj.imageCheckBox65:setHeight(19);
    obj.imageCheckBox65:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox65:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout17);
    obj.imageCheckBox66:setField("manipulacao_6");
    obj.imageCheckBox66:setLeft(105);
    obj.imageCheckBox66:setTop(4);
    obj.imageCheckBox66:setWidth(19);
    obj.imageCheckBox66:setHeight(19);
    obj.imageCheckBox66:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox66:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout17);
    obj.imageCheckBox67:setField("manipulacao_7");
    obj.imageCheckBox67:setLeft(124);
    obj.imageCheckBox67:setTop(4);
    obj.imageCheckBox67:setWidth(19);
    obj.imageCheckBox67:setHeight(19);
    obj.imageCheckBox67:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox67:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout17);
    obj.imageCheckBox68:setField("manipulacao_8");
    obj.imageCheckBox68:setLeft(143);
    obj.imageCheckBox68:setTop(4);
    obj.imageCheckBox68:setWidth(19);
    obj.imageCheckBox68:setHeight(19);
    obj.imageCheckBox68:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox68:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout17);
    obj.imageCheckBox69:setField("manipulacao_9");
    obj.imageCheckBox69:setLeft(162);
    obj.imageCheckBox69:setTop(4);
    obj.imageCheckBox69:setWidth(19);
    obj.imageCheckBox69:setHeight(19);
    obj.imageCheckBox69:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox69:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout12);
    obj.layout18:setLeft(425);
    obj.layout18:setTop(172);
    obj.layout18:setWidth(200);
    obj.layout18:setHeight(25);
    obj.layout18:setName("layout18");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout18);
    obj.imageCheckBox70:setField("aparencia_1");
    obj.imageCheckBox70:setLeft(10);
    obj.imageCheckBox70:setTop(4);
    obj.imageCheckBox70:setWidth(19);
    obj.imageCheckBox70:setHeight(19);
    obj.imageCheckBox70:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox70:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout18);
    obj.imageCheckBox71:setField("aparencia_2");
    obj.imageCheckBox71:setLeft(29);
    obj.imageCheckBox71:setTop(4);
    obj.imageCheckBox71:setWidth(19);
    obj.imageCheckBox71:setHeight(19);
    obj.imageCheckBox71:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox71:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout18);
    obj.imageCheckBox72:setField("aparencia_3");
    obj.imageCheckBox72:setLeft(48);
    obj.imageCheckBox72:setTop(4);
    obj.imageCheckBox72:setWidth(19);
    obj.imageCheckBox72:setHeight(19);
    obj.imageCheckBox72:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox72:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout18);
    obj.imageCheckBox73:setField("aparencia_4");
    obj.imageCheckBox73:setLeft(67);
    obj.imageCheckBox73:setTop(4);
    obj.imageCheckBox73:setWidth(19);
    obj.imageCheckBox73:setHeight(19);
    obj.imageCheckBox73:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox73:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout18);
    obj.imageCheckBox74:setField("aparencia_5");
    obj.imageCheckBox74:setLeft(86);
    obj.imageCheckBox74:setTop(4);
    obj.imageCheckBox74:setWidth(19);
    obj.imageCheckBox74:setHeight(19);
    obj.imageCheckBox74:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox74:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout18);
    obj.imageCheckBox75:setField("aparencia_6");
    obj.imageCheckBox75:setLeft(105);
    obj.imageCheckBox75:setTop(4);
    obj.imageCheckBox75:setWidth(19);
    obj.imageCheckBox75:setHeight(19);
    obj.imageCheckBox75:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox75:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout18);
    obj.imageCheckBox76:setField("aparencia_7");
    obj.imageCheckBox76:setLeft(124);
    obj.imageCheckBox76:setTop(4);
    obj.imageCheckBox76:setWidth(19);
    obj.imageCheckBox76:setHeight(19);
    obj.imageCheckBox76:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox76:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout18);
    obj.imageCheckBox77:setField("aparencia_8");
    obj.imageCheckBox77:setLeft(143);
    obj.imageCheckBox77:setTop(4);
    obj.imageCheckBox77:setWidth(19);
    obj.imageCheckBox77:setHeight(19);
    obj.imageCheckBox77:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox77:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout18);
    obj.imageCheckBox78:setField("aparencia_9");
    obj.imageCheckBox78:setLeft(162);
    obj.imageCheckBox78:setTop(4);
    obj.imageCheckBox78:setWidth(19);
    obj.imageCheckBox78:setHeight(19);
    obj.imageCheckBox78:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox78:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout12);
    obj.layout19:setLeft(730);
    obj.layout19:setTop(121);
    obj.layout19:setWidth(200);
    obj.layout19:setHeight(25);
    obj.layout19:setName("layout19");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout19);
    obj.imageCheckBox79:setField("percepcao_1");
    obj.imageCheckBox79:setLeft(10);
    obj.imageCheckBox79:setTop(4);
    obj.imageCheckBox79:setWidth(19);
    obj.imageCheckBox79:setHeight(19);
    obj.imageCheckBox79:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox79:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout19);
    obj.imageCheckBox80:setField("percepcao_2");
    obj.imageCheckBox80:setLeft(29);
    obj.imageCheckBox80:setTop(4);
    obj.imageCheckBox80:setWidth(19);
    obj.imageCheckBox80:setHeight(19);
    obj.imageCheckBox80:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox80:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout19);
    obj.imageCheckBox81:setField("percepcao_3");
    obj.imageCheckBox81:setLeft(48);
    obj.imageCheckBox81:setTop(4);
    obj.imageCheckBox81:setWidth(19);
    obj.imageCheckBox81:setHeight(19);
    obj.imageCheckBox81:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox81:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout19);
    obj.imageCheckBox82:setField("percepcao_4");
    obj.imageCheckBox82:setLeft(67);
    obj.imageCheckBox82:setTop(4);
    obj.imageCheckBox82:setWidth(19);
    obj.imageCheckBox82:setHeight(19);
    obj.imageCheckBox82:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox82:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout19);
    obj.imageCheckBox83:setField("percepcao_5");
    obj.imageCheckBox83:setLeft(86);
    obj.imageCheckBox83:setTop(4);
    obj.imageCheckBox83:setWidth(19);
    obj.imageCheckBox83:setHeight(19);
    obj.imageCheckBox83:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox83:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout19);
    obj.imageCheckBox84:setField("percepcao_6");
    obj.imageCheckBox84:setLeft(105);
    obj.imageCheckBox84:setTop(4);
    obj.imageCheckBox84:setWidth(19);
    obj.imageCheckBox84:setHeight(19);
    obj.imageCheckBox84:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox84:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout19);
    obj.imageCheckBox85:setField("percepcao_7");
    obj.imageCheckBox85:setLeft(124);
    obj.imageCheckBox85:setTop(4);
    obj.imageCheckBox85:setWidth(19);
    obj.imageCheckBox85:setHeight(19);
    obj.imageCheckBox85:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox85:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout19);
    obj.imageCheckBox86:setField("percepcao_8");
    obj.imageCheckBox86:setLeft(143);
    obj.imageCheckBox86:setTop(4);
    obj.imageCheckBox86:setWidth(19);
    obj.imageCheckBox86:setHeight(19);
    obj.imageCheckBox86:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox86:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout19);
    obj.imageCheckBox87:setField("percepcao_9");
    obj.imageCheckBox87:setLeft(162);
    obj.imageCheckBox87:setTop(4);
    obj.imageCheckBox87:setWidth(19);
    obj.imageCheckBox87:setHeight(19);
    obj.imageCheckBox87:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox87:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout12);
    obj.layout20:setLeft(730);
    obj.layout20:setTop(147);
    obj.layout20:setWidth(200);
    obj.layout20:setHeight(25);
    obj.layout20:setName("layout20");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout20);
    obj.imageCheckBox88:setField("inteligencia_1");
    obj.imageCheckBox88:setLeft(10);
    obj.imageCheckBox88:setTop(4);
    obj.imageCheckBox88:setWidth(19);
    obj.imageCheckBox88:setHeight(19);
    obj.imageCheckBox88:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox88:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout20);
    obj.imageCheckBox89:setField("inteligencia_2");
    obj.imageCheckBox89:setLeft(29);
    obj.imageCheckBox89:setTop(4);
    obj.imageCheckBox89:setWidth(19);
    obj.imageCheckBox89:setHeight(19);
    obj.imageCheckBox89:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox89:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout20);
    obj.imageCheckBox90:setField("inteligencia_3");
    obj.imageCheckBox90:setLeft(48);
    obj.imageCheckBox90:setTop(4);
    obj.imageCheckBox90:setWidth(19);
    obj.imageCheckBox90:setHeight(19);
    obj.imageCheckBox90:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox90:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout20);
    obj.imageCheckBox91:setField("inteligencia_4");
    obj.imageCheckBox91:setLeft(67);
    obj.imageCheckBox91:setTop(4);
    obj.imageCheckBox91:setWidth(19);
    obj.imageCheckBox91:setHeight(19);
    obj.imageCheckBox91:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox91:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout20);
    obj.imageCheckBox92:setField("inteligencia_5");
    obj.imageCheckBox92:setLeft(86);
    obj.imageCheckBox92:setTop(4);
    obj.imageCheckBox92:setWidth(19);
    obj.imageCheckBox92:setHeight(19);
    obj.imageCheckBox92:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox92:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout20);
    obj.imageCheckBox93:setField("inteligencia_6");
    obj.imageCheckBox93:setLeft(105);
    obj.imageCheckBox93:setTop(4);
    obj.imageCheckBox93:setWidth(19);
    obj.imageCheckBox93:setHeight(19);
    obj.imageCheckBox93:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox93:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout20);
    obj.imageCheckBox94:setField("inteligencia_7");
    obj.imageCheckBox94:setLeft(124);
    obj.imageCheckBox94:setTop(4);
    obj.imageCheckBox94:setWidth(19);
    obj.imageCheckBox94:setHeight(19);
    obj.imageCheckBox94:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox94:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout20);
    obj.imageCheckBox95:setField("inteligencia_8");
    obj.imageCheckBox95:setLeft(143);
    obj.imageCheckBox95:setTop(4);
    obj.imageCheckBox95:setWidth(19);
    obj.imageCheckBox95:setHeight(19);
    obj.imageCheckBox95:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox95:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout20);
    obj.imageCheckBox96:setField("inteligencia_9");
    obj.imageCheckBox96:setLeft(162);
    obj.imageCheckBox96:setTop(4);
    obj.imageCheckBox96:setWidth(19);
    obj.imageCheckBox96:setHeight(19);
    obj.imageCheckBox96:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox96:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout12);
    obj.layout21:setLeft(730);
    obj.layout21:setTop(172);
    obj.layout21:setWidth(200);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout21);
    obj.imageCheckBox97:setField("raciocinio_1");
    obj.imageCheckBox97:setLeft(10);
    obj.imageCheckBox97:setTop(4);
    obj.imageCheckBox97:setWidth(19);
    obj.imageCheckBox97:setHeight(19);
    obj.imageCheckBox97:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox97:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout21);
    obj.imageCheckBox98:setField("raciocinio_2");
    obj.imageCheckBox98:setLeft(29);
    obj.imageCheckBox98:setTop(4);
    obj.imageCheckBox98:setWidth(19);
    obj.imageCheckBox98:setHeight(19);
    obj.imageCheckBox98:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox98:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout21);
    obj.imageCheckBox99:setField("raciocinio_3");
    obj.imageCheckBox99:setLeft(48);
    obj.imageCheckBox99:setTop(4);
    obj.imageCheckBox99:setWidth(19);
    obj.imageCheckBox99:setHeight(19);
    obj.imageCheckBox99:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox99:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout21);
    obj.imageCheckBox100:setField("raciocinio_4");
    obj.imageCheckBox100:setLeft(67);
    obj.imageCheckBox100:setTop(4);
    obj.imageCheckBox100:setWidth(19);
    obj.imageCheckBox100:setHeight(19);
    obj.imageCheckBox100:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox100:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout21);
    obj.imageCheckBox101:setField("raciocinio_5");
    obj.imageCheckBox101:setLeft(86);
    obj.imageCheckBox101:setTop(4);
    obj.imageCheckBox101:setWidth(19);
    obj.imageCheckBox101:setHeight(19);
    obj.imageCheckBox101:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox101:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout21);
    obj.imageCheckBox102:setField("raciocinio_6");
    obj.imageCheckBox102:setLeft(105);
    obj.imageCheckBox102:setTop(4);
    obj.imageCheckBox102:setWidth(19);
    obj.imageCheckBox102:setHeight(19);
    obj.imageCheckBox102:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox102:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout21);
    obj.imageCheckBox103:setField("raciocinio_7");
    obj.imageCheckBox103:setLeft(124);
    obj.imageCheckBox103:setTop(4);
    obj.imageCheckBox103:setWidth(19);
    obj.imageCheckBox103:setHeight(19);
    obj.imageCheckBox103:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox103:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout21);
    obj.imageCheckBox104:setField("raciocinio_8");
    obj.imageCheckBox104:setLeft(143);
    obj.imageCheckBox104:setTop(4);
    obj.imageCheckBox104:setWidth(19);
    obj.imageCheckBox104:setHeight(19);
    obj.imageCheckBox104:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox104:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout21);
    obj.imageCheckBox105:setField("raciocinio_9");
    obj.imageCheckBox105:setLeft(162);
    obj.imageCheckBox105:setTop(4);
    obj.imageCheckBox105:setWidth(19);
    obj.imageCheckBox105:setHeight(19);
    obj.imageCheckBox105:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox105:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(0);
    obj.layout22:setTop(570);
    obj.layout22:setWidth(930);
    obj.layout22:setHeight(500);
    obj.layout22:setName("layout22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout22);
    obj.layout23:setLeft(120);
    obj.layout23:setTop(121);
    obj.layout23:setWidth(200);
    obj.layout23:setHeight(25);
    obj.layout23:setName("layout23");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout23);
    obj.imageCheckBox106:setField("prontidao_1");
    obj.imageCheckBox106:setLeft(10);
    obj.imageCheckBox106:setTop(4);
    obj.imageCheckBox106:setWidth(19);
    obj.imageCheckBox106:setHeight(19);
    obj.imageCheckBox106:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox106:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout23);
    obj.imageCheckBox107:setField("prontidao_2");
    obj.imageCheckBox107:setLeft(29);
    obj.imageCheckBox107:setTop(4);
    obj.imageCheckBox107:setWidth(19);
    obj.imageCheckBox107:setHeight(19);
    obj.imageCheckBox107:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox107:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout23);
    obj.imageCheckBox108:setField("prontidao_3");
    obj.imageCheckBox108:setLeft(48);
    obj.imageCheckBox108:setTop(4);
    obj.imageCheckBox108:setWidth(19);
    obj.imageCheckBox108:setHeight(19);
    obj.imageCheckBox108:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox108:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout23);
    obj.imageCheckBox109:setField("prontidao_4");
    obj.imageCheckBox109:setLeft(67);
    obj.imageCheckBox109:setTop(4);
    obj.imageCheckBox109:setWidth(19);
    obj.imageCheckBox109:setHeight(19);
    obj.imageCheckBox109:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox109:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout23);
    obj.imageCheckBox110:setField("prontidao_5");
    obj.imageCheckBox110:setLeft(86);
    obj.imageCheckBox110:setTop(4);
    obj.imageCheckBox110:setWidth(19);
    obj.imageCheckBox110:setHeight(19);
    obj.imageCheckBox110:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox110:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout23);
    obj.imageCheckBox111:setField("prontidao_6");
    obj.imageCheckBox111:setLeft(105);
    obj.imageCheckBox111:setTop(4);
    obj.imageCheckBox111:setWidth(19);
    obj.imageCheckBox111:setHeight(19);
    obj.imageCheckBox111:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox111:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout23);
    obj.imageCheckBox112:setField("prontidao_7");
    obj.imageCheckBox112:setLeft(124);
    obj.imageCheckBox112:setTop(4);
    obj.imageCheckBox112:setWidth(19);
    obj.imageCheckBox112:setHeight(19);
    obj.imageCheckBox112:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox112:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout23);
    obj.imageCheckBox113:setField("prontidao_8");
    obj.imageCheckBox113:setLeft(143);
    obj.imageCheckBox113:setTop(4);
    obj.imageCheckBox113:setWidth(19);
    obj.imageCheckBox113:setHeight(19);
    obj.imageCheckBox113:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox113:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout23);
    obj.imageCheckBox114:setField("prontidao_9");
    obj.imageCheckBox114:setLeft(162);
    obj.imageCheckBox114:setTop(4);
    obj.imageCheckBox114:setWidth(19);
    obj.imageCheckBox114:setHeight(19);
    obj.imageCheckBox114:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox114:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout22);
    obj.layout24:setLeft(120);
    obj.layout24:setTop(148);
    obj.layout24:setWidth(200);
    obj.layout24:setHeight(25);
    obj.layout24:setName("layout24");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout24);
    obj.imageCheckBox115:setField("esportes_1");
    obj.imageCheckBox115:setLeft(10);
    obj.imageCheckBox115:setTop(4);
    obj.imageCheckBox115:setWidth(19);
    obj.imageCheckBox115:setHeight(19);
    obj.imageCheckBox115:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox115:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout24);
    obj.imageCheckBox116:setField("esportes_2");
    obj.imageCheckBox116:setLeft(29);
    obj.imageCheckBox116:setTop(4);
    obj.imageCheckBox116:setWidth(19);
    obj.imageCheckBox116:setHeight(19);
    obj.imageCheckBox116:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox116:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout24);
    obj.imageCheckBox117:setField("esportes_3");
    obj.imageCheckBox117:setLeft(48);
    obj.imageCheckBox117:setTop(4);
    obj.imageCheckBox117:setWidth(19);
    obj.imageCheckBox117:setHeight(19);
    obj.imageCheckBox117:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox117:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout24);
    obj.imageCheckBox118:setField("esportes_4");
    obj.imageCheckBox118:setLeft(67);
    obj.imageCheckBox118:setTop(4);
    obj.imageCheckBox118:setWidth(19);
    obj.imageCheckBox118:setHeight(19);
    obj.imageCheckBox118:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox118:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout24);
    obj.imageCheckBox119:setField("esportes_5");
    obj.imageCheckBox119:setLeft(86);
    obj.imageCheckBox119:setTop(4);
    obj.imageCheckBox119:setWidth(19);
    obj.imageCheckBox119:setHeight(19);
    obj.imageCheckBox119:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox119:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout24);
    obj.imageCheckBox120:setField("esportes_6");
    obj.imageCheckBox120:setLeft(105);
    obj.imageCheckBox120:setTop(4);
    obj.imageCheckBox120:setWidth(19);
    obj.imageCheckBox120:setHeight(19);
    obj.imageCheckBox120:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox120:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout24);
    obj.imageCheckBox121:setField("esportes_7");
    obj.imageCheckBox121:setLeft(124);
    obj.imageCheckBox121:setTop(4);
    obj.imageCheckBox121:setWidth(19);
    obj.imageCheckBox121:setHeight(19);
    obj.imageCheckBox121:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox121:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout24);
    obj.imageCheckBox122:setField("esportes_8");
    obj.imageCheckBox122:setLeft(143);
    obj.imageCheckBox122:setTop(4);
    obj.imageCheckBox122:setWidth(19);
    obj.imageCheckBox122:setHeight(19);
    obj.imageCheckBox122:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox122:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout24);
    obj.imageCheckBox123:setField("esportes_9");
    obj.imageCheckBox123:setLeft(162);
    obj.imageCheckBox123:setTop(4);
    obj.imageCheckBox123:setWidth(19);
    obj.imageCheckBox123:setHeight(19);
    obj.imageCheckBox123:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox123:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout22);
    obj.layout25:setLeft(120);
    obj.layout25:setTop(175);
    obj.layout25:setWidth(200);
    obj.layout25:setHeight(25);
    obj.layout25:setName("layout25");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout25);
    obj.imageCheckBox124:setField("briga_1");
    obj.imageCheckBox124:setLeft(10);
    obj.imageCheckBox124:setTop(4);
    obj.imageCheckBox124:setWidth(19);
    obj.imageCheckBox124:setHeight(19);
    obj.imageCheckBox124:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox124:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout25);
    obj.imageCheckBox125:setField("briga_2");
    obj.imageCheckBox125:setLeft(29);
    obj.imageCheckBox125:setTop(4);
    obj.imageCheckBox125:setWidth(19);
    obj.imageCheckBox125:setHeight(19);
    obj.imageCheckBox125:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox125:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout25);
    obj.imageCheckBox126:setField("briga_3");
    obj.imageCheckBox126:setLeft(48);
    obj.imageCheckBox126:setTop(4);
    obj.imageCheckBox126:setWidth(19);
    obj.imageCheckBox126:setHeight(19);
    obj.imageCheckBox126:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox126:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout25);
    obj.imageCheckBox127:setField("briga_4");
    obj.imageCheckBox127:setLeft(67);
    obj.imageCheckBox127:setTop(4);
    obj.imageCheckBox127:setWidth(19);
    obj.imageCheckBox127:setHeight(19);
    obj.imageCheckBox127:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox127:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout25);
    obj.imageCheckBox128:setField("briga_5");
    obj.imageCheckBox128:setLeft(86);
    obj.imageCheckBox128:setTop(4);
    obj.imageCheckBox128:setWidth(19);
    obj.imageCheckBox128:setHeight(19);
    obj.imageCheckBox128:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox128:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout25);
    obj.imageCheckBox129:setField("briga_6");
    obj.imageCheckBox129:setLeft(105);
    obj.imageCheckBox129:setTop(4);
    obj.imageCheckBox129:setWidth(19);
    obj.imageCheckBox129:setHeight(19);
    obj.imageCheckBox129:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox129:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout25);
    obj.imageCheckBox130:setField("briga_7");
    obj.imageCheckBox130:setLeft(124);
    obj.imageCheckBox130:setTop(4);
    obj.imageCheckBox130:setWidth(19);
    obj.imageCheckBox130:setHeight(19);
    obj.imageCheckBox130:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox130:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout25);
    obj.imageCheckBox131:setField("briga_8");
    obj.imageCheckBox131:setLeft(143);
    obj.imageCheckBox131:setTop(4);
    obj.imageCheckBox131:setWidth(19);
    obj.imageCheckBox131:setHeight(19);
    obj.imageCheckBox131:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox131:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout25);
    obj.imageCheckBox132:setField("briga_9");
    obj.imageCheckBox132:setLeft(162);
    obj.imageCheckBox132:setTop(4);
    obj.imageCheckBox132:setWidth(19);
    obj.imageCheckBox132:setHeight(19);
    obj.imageCheckBox132:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox132:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout22);
    obj.layout26:setLeft(120);
    obj.layout26:setTop(200);
    obj.layout26:setWidth(200);
    obj.layout26:setHeight(25);
    obj.layout26:setName("layout26");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout26);
    obj.imageCheckBox133:setField("esquiva_1");
    obj.imageCheckBox133:setLeft(10);
    obj.imageCheckBox133:setTop(4);
    obj.imageCheckBox133:setWidth(19);
    obj.imageCheckBox133:setHeight(19);
    obj.imageCheckBox133:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox133:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout26);
    obj.imageCheckBox134:setField("esquiva_2");
    obj.imageCheckBox134:setLeft(29);
    obj.imageCheckBox134:setTop(4);
    obj.imageCheckBox134:setWidth(19);
    obj.imageCheckBox134:setHeight(19);
    obj.imageCheckBox134:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox134:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout26);
    obj.imageCheckBox135:setField("esquiva_3");
    obj.imageCheckBox135:setLeft(48);
    obj.imageCheckBox135:setTop(4);
    obj.imageCheckBox135:setWidth(19);
    obj.imageCheckBox135:setHeight(19);
    obj.imageCheckBox135:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox135:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout26);
    obj.imageCheckBox136:setField("esquiva_4");
    obj.imageCheckBox136:setLeft(67);
    obj.imageCheckBox136:setTop(4);
    obj.imageCheckBox136:setWidth(19);
    obj.imageCheckBox136:setHeight(19);
    obj.imageCheckBox136:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox136:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout26);
    obj.imageCheckBox137:setField("esquiva_5");
    obj.imageCheckBox137:setLeft(86);
    obj.imageCheckBox137:setTop(4);
    obj.imageCheckBox137:setWidth(19);
    obj.imageCheckBox137:setHeight(19);
    obj.imageCheckBox137:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox137:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout26);
    obj.imageCheckBox138:setField("esquiva_6");
    obj.imageCheckBox138:setLeft(105);
    obj.imageCheckBox138:setTop(4);
    obj.imageCheckBox138:setWidth(19);
    obj.imageCheckBox138:setHeight(19);
    obj.imageCheckBox138:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox138:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout26);
    obj.imageCheckBox139:setField("esquiva_7");
    obj.imageCheckBox139:setLeft(124);
    obj.imageCheckBox139:setTop(4);
    obj.imageCheckBox139:setWidth(19);
    obj.imageCheckBox139:setHeight(19);
    obj.imageCheckBox139:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox139:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout26);
    obj.imageCheckBox140:setField("esquiva_8");
    obj.imageCheckBox140:setLeft(143);
    obj.imageCheckBox140:setTop(4);
    obj.imageCheckBox140:setWidth(19);
    obj.imageCheckBox140:setHeight(19);
    obj.imageCheckBox140:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox140:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout26);
    obj.imageCheckBox141:setField("esquiva_9");
    obj.imageCheckBox141:setLeft(162);
    obj.imageCheckBox141:setTop(4);
    obj.imageCheckBox141:setWidth(19);
    obj.imageCheckBox141:setHeight(19);
    obj.imageCheckBox141:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox141:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout22);
    obj.layout27:setLeft(120);
    obj.layout27:setTop(225);
    obj.layout27:setWidth(200);
    obj.layout27:setHeight(25);
    obj.layout27:setName("layout27");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout27);
    obj.imageCheckBox142:setField("empatia_1");
    obj.imageCheckBox142:setLeft(10);
    obj.imageCheckBox142:setTop(4);
    obj.imageCheckBox142:setWidth(19);
    obj.imageCheckBox142:setHeight(19);
    obj.imageCheckBox142:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox142:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout27);
    obj.imageCheckBox143:setField("empatia_2");
    obj.imageCheckBox143:setLeft(29);
    obj.imageCheckBox143:setTop(4);
    obj.imageCheckBox143:setWidth(19);
    obj.imageCheckBox143:setHeight(19);
    obj.imageCheckBox143:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox143:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout27);
    obj.imageCheckBox144:setField("empatia_3");
    obj.imageCheckBox144:setLeft(48);
    obj.imageCheckBox144:setTop(4);
    obj.imageCheckBox144:setWidth(19);
    obj.imageCheckBox144:setHeight(19);
    obj.imageCheckBox144:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox144:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout27);
    obj.imageCheckBox145:setField("empatia_4");
    obj.imageCheckBox145:setLeft(67);
    obj.imageCheckBox145:setTop(4);
    obj.imageCheckBox145:setWidth(19);
    obj.imageCheckBox145:setHeight(19);
    obj.imageCheckBox145:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox145:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout27);
    obj.imageCheckBox146:setField("empatia_5");
    obj.imageCheckBox146:setLeft(86);
    obj.imageCheckBox146:setTop(4);
    obj.imageCheckBox146:setWidth(19);
    obj.imageCheckBox146:setHeight(19);
    obj.imageCheckBox146:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox146:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout27);
    obj.imageCheckBox147:setField("empatia_6");
    obj.imageCheckBox147:setLeft(105);
    obj.imageCheckBox147:setTop(4);
    obj.imageCheckBox147:setWidth(19);
    obj.imageCheckBox147:setHeight(19);
    obj.imageCheckBox147:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox147:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout27);
    obj.imageCheckBox148:setField("empatia_7");
    obj.imageCheckBox148:setLeft(124);
    obj.imageCheckBox148:setTop(4);
    obj.imageCheckBox148:setWidth(19);
    obj.imageCheckBox148:setHeight(19);
    obj.imageCheckBox148:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox148:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout27);
    obj.imageCheckBox149:setField("empatia_8");
    obj.imageCheckBox149:setLeft(143);
    obj.imageCheckBox149:setTop(4);
    obj.imageCheckBox149:setWidth(19);
    obj.imageCheckBox149:setHeight(19);
    obj.imageCheckBox149:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox149:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout27);
    obj.imageCheckBox150:setField("empatia_9");
    obj.imageCheckBox150:setLeft(162);
    obj.imageCheckBox150:setTop(4);
    obj.imageCheckBox150:setWidth(19);
    obj.imageCheckBox150:setHeight(19);
    obj.imageCheckBox150:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox150:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout22);
    obj.layout28:setLeft(120);
    obj.layout28:setTop(250);
    obj.layout28:setWidth(200);
    obj.layout28:setHeight(25);
    obj.layout28:setName("layout28");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout28);
    obj.imageCheckBox151:setField("expressao_1");
    obj.imageCheckBox151:setLeft(10);
    obj.imageCheckBox151:setTop(4);
    obj.imageCheckBox151:setWidth(19);
    obj.imageCheckBox151:setHeight(19);
    obj.imageCheckBox151:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox151:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout28);
    obj.imageCheckBox152:setField("expressao_2");
    obj.imageCheckBox152:setLeft(29);
    obj.imageCheckBox152:setTop(4);
    obj.imageCheckBox152:setWidth(19);
    obj.imageCheckBox152:setHeight(19);
    obj.imageCheckBox152:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox152:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout28);
    obj.imageCheckBox153:setField("expressao_3");
    obj.imageCheckBox153:setLeft(48);
    obj.imageCheckBox153:setTop(4);
    obj.imageCheckBox153:setWidth(19);
    obj.imageCheckBox153:setHeight(19);
    obj.imageCheckBox153:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox153:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout28);
    obj.imageCheckBox154:setField("expressao_4");
    obj.imageCheckBox154:setLeft(67);
    obj.imageCheckBox154:setTop(4);
    obj.imageCheckBox154:setWidth(19);
    obj.imageCheckBox154:setHeight(19);
    obj.imageCheckBox154:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox154:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout28);
    obj.imageCheckBox155:setField("expressao_5");
    obj.imageCheckBox155:setLeft(86);
    obj.imageCheckBox155:setTop(4);
    obj.imageCheckBox155:setWidth(19);
    obj.imageCheckBox155:setHeight(19);
    obj.imageCheckBox155:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox155:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout28);
    obj.imageCheckBox156:setField("expressao_6");
    obj.imageCheckBox156:setLeft(105);
    obj.imageCheckBox156:setTop(4);
    obj.imageCheckBox156:setWidth(19);
    obj.imageCheckBox156:setHeight(19);
    obj.imageCheckBox156:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox156:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout28);
    obj.imageCheckBox157:setField("expressao_7");
    obj.imageCheckBox157:setLeft(124);
    obj.imageCheckBox157:setTop(4);
    obj.imageCheckBox157:setWidth(19);
    obj.imageCheckBox157:setHeight(19);
    obj.imageCheckBox157:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox157:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout28);
    obj.imageCheckBox158:setField("expressao_8");
    obj.imageCheckBox158:setLeft(143);
    obj.imageCheckBox158:setTop(4);
    obj.imageCheckBox158:setWidth(19);
    obj.imageCheckBox158:setHeight(19);
    obj.imageCheckBox158:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox158:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout28);
    obj.imageCheckBox159:setField("expressao_9");
    obj.imageCheckBox159:setLeft(162);
    obj.imageCheckBox159:setTop(4);
    obj.imageCheckBox159:setWidth(19);
    obj.imageCheckBox159:setHeight(19);
    obj.imageCheckBox159:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox159:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout22);
    obj.layout29:setLeft(120);
    obj.layout29:setTop(278);
    obj.layout29:setWidth(200);
    obj.layout29:setHeight(25);
    obj.layout29:setName("layout29");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout29);
    obj.imageCheckBox160:setField("intimidacao_1");
    obj.imageCheckBox160:setLeft(10);
    obj.imageCheckBox160:setTop(4);
    obj.imageCheckBox160:setWidth(19);
    obj.imageCheckBox160:setHeight(19);
    obj.imageCheckBox160:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox160:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout29);
    obj.imageCheckBox161:setField("intimidacao_2");
    obj.imageCheckBox161:setLeft(29);
    obj.imageCheckBox161:setTop(4);
    obj.imageCheckBox161:setWidth(19);
    obj.imageCheckBox161:setHeight(19);
    obj.imageCheckBox161:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox161:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout29);
    obj.imageCheckBox162:setField("intimidacao_3");
    obj.imageCheckBox162:setLeft(48);
    obj.imageCheckBox162:setTop(4);
    obj.imageCheckBox162:setWidth(19);
    obj.imageCheckBox162:setHeight(19);
    obj.imageCheckBox162:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox162:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout29);
    obj.imageCheckBox163:setField("intimidacao_4");
    obj.imageCheckBox163:setLeft(67);
    obj.imageCheckBox163:setTop(4);
    obj.imageCheckBox163:setWidth(19);
    obj.imageCheckBox163:setHeight(19);
    obj.imageCheckBox163:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox163:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout29);
    obj.imageCheckBox164:setField("intimidacao_5");
    obj.imageCheckBox164:setLeft(86);
    obj.imageCheckBox164:setTop(4);
    obj.imageCheckBox164:setWidth(19);
    obj.imageCheckBox164:setHeight(19);
    obj.imageCheckBox164:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox164:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout29);
    obj.imageCheckBox165:setField("intimidacao_6");
    obj.imageCheckBox165:setLeft(105);
    obj.imageCheckBox165:setTop(4);
    obj.imageCheckBox165:setWidth(19);
    obj.imageCheckBox165:setHeight(19);
    obj.imageCheckBox165:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox165:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout29);
    obj.imageCheckBox166:setField("intimidacao_7");
    obj.imageCheckBox166:setLeft(124);
    obj.imageCheckBox166:setTop(4);
    obj.imageCheckBox166:setWidth(19);
    obj.imageCheckBox166:setHeight(19);
    obj.imageCheckBox166:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox166:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout29);
    obj.imageCheckBox167:setField("intimidacao_8");
    obj.imageCheckBox167:setLeft(143);
    obj.imageCheckBox167:setTop(4);
    obj.imageCheckBox167:setWidth(19);
    obj.imageCheckBox167:setHeight(19);
    obj.imageCheckBox167:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox167:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout29);
    obj.imageCheckBox168:setField("intimidacao_9");
    obj.imageCheckBox168:setLeft(162);
    obj.imageCheckBox168:setTop(4);
    obj.imageCheckBox168:setWidth(19);
    obj.imageCheckBox168:setHeight(19);
    obj.imageCheckBox168:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox168:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout22);
    obj.layout30:setLeft(120);
    obj.layout30:setTop(305);
    obj.layout30:setWidth(200);
    obj.layout30:setHeight(25);
    obj.layout30:setName("layout30");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout30);
    obj.imageCheckBox169:setField("lideranca_1");
    obj.imageCheckBox169:setLeft(10);
    obj.imageCheckBox169:setTop(4);
    obj.imageCheckBox169:setWidth(19);
    obj.imageCheckBox169:setHeight(19);
    obj.imageCheckBox169:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox169:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout30);
    obj.imageCheckBox170:setField("lideranca_2");
    obj.imageCheckBox170:setLeft(29);
    obj.imageCheckBox170:setTop(4);
    obj.imageCheckBox170:setWidth(19);
    obj.imageCheckBox170:setHeight(19);
    obj.imageCheckBox170:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox170:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout30);
    obj.imageCheckBox171:setField("lideranca_3");
    obj.imageCheckBox171:setLeft(48);
    obj.imageCheckBox171:setTop(4);
    obj.imageCheckBox171:setWidth(19);
    obj.imageCheckBox171:setHeight(19);
    obj.imageCheckBox171:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox171:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout30);
    obj.imageCheckBox172:setField("lideranca_4");
    obj.imageCheckBox172:setLeft(67);
    obj.imageCheckBox172:setTop(4);
    obj.imageCheckBox172:setWidth(19);
    obj.imageCheckBox172:setHeight(19);
    obj.imageCheckBox172:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox172:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout30);
    obj.imageCheckBox173:setField("lideranca_5");
    obj.imageCheckBox173:setLeft(86);
    obj.imageCheckBox173:setTop(4);
    obj.imageCheckBox173:setWidth(19);
    obj.imageCheckBox173:setHeight(19);
    obj.imageCheckBox173:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox173:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout30);
    obj.imageCheckBox174:setField("lideranca_6");
    obj.imageCheckBox174:setLeft(105);
    obj.imageCheckBox174:setTop(4);
    obj.imageCheckBox174:setWidth(19);
    obj.imageCheckBox174:setHeight(19);
    obj.imageCheckBox174:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox174:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout30);
    obj.imageCheckBox175:setField("lideranca_7");
    obj.imageCheckBox175:setLeft(124);
    obj.imageCheckBox175:setTop(4);
    obj.imageCheckBox175:setWidth(19);
    obj.imageCheckBox175:setHeight(19);
    obj.imageCheckBox175:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox175:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout30);
    obj.imageCheckBox176:setField("lideranca_8");
    obj.imageCheckBox176:setLeft(143);
    obj.imageCheckBox176:setTop(4);
    obj.imageCheckBox176:setWidth(19);
    obj.imageCheckBox176:setHeight(19);
    obj.imageCheckBox176:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox176:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout30);
    obj.imageCheckBox177:setField("lideranca_9");
    obj.imageCheckBox177:setLeft(162);
    obj.imageCheckBox177:setTop(4);
    obj.imageCheckBox177:setWidth(19);
    obj.imageCheckBox177:setHeight(19);
    obj.imageCheckBox177:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox177:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout22);
    obj.layout31:setLeft(425);
    obj.layout31:setTop(121);
    obj.layout31:setWidth(200);
    obj.layout31:setHeight(25);
    obj.layout31:setName("layout31");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout31);
    obj.imageCheckBox178:setField("empatiaPokemon_1");
    obj.imageCheckBox178:setLeft(10);
    obj.imageCheckBox178:setTop(4);
    obj.imageCheckBox178:setWidth(19);
    obj.imageCheckBox178:setHeight(19);
    obj.imageCheckBox178:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox178:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout31);
    obj.imageCheckBox179:setField("empatiaPokemon_2");
    obj.imageCheckBox179:setLeft(29);
    obj.imageCheckBox179:setTop(4);
    obj.imageCheckBox179:setWidth(19);
    obj.imageCheckBox179:setHeight(19);
    obj.imageCheckBox179:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox179:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout31);
    obj.imageCheckBox180:setField("empatiaPokemon_3");
    obj.imageCheckBox180:setLeft(48);
    obj.imageCheckBox180:setTop(4);
    obj.imageCheckBox180:setWidth(19);
    obj.imageCheckBox180:setHeight(19);
    obj.imageCheckBox180:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox180:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout31);
    obj.imageCheckBox181:setField("empatiaPokemon_4");
    obj.imageCheckBox181:setLeft(67);
    obj.imageCheckBox181:setTop(4);
    obj.imageCheckBox181:setWidth(19);
    obj.imageCheckBox181:setHeight(19);
    obj.imageCheckBox181:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox181:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout31);
    obj.imageCheckBox182:setField("empatiaPokemon_5");
    obj.imageCheckBox182:setLeft(86);
    obj.imageCheckBox182:setTop(4);
    obj.imageCheckBox182:setWidth(19);
    obj.imageCheckBox182:setHeight(19);
    obj.imageCheckBox182:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox182:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout31);
    obj.imageCheckBox183:setField("empatiaPokemon_6");
    obj.imageCheckBox183:setLeft(105);
    obj.imageCheckBox183:setTop(4);
    obj.imageCheckBox183:setWidth(19);
    obj.imageCheckBox183:setHeight(19);
    obj.imageCheckBox183:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox183:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout31);
    obj.imageCheckBox184:setField("empatiaPokemon_7");
    obj.imageCheckBox184:setLeft(124);
    obj.imageCheckBox184:setTop(4);
    obj.imageCheckBox184:setWidth(19);
    obj.imageCheckBox184:setHeight(19);
    obj.imageCheckBox184:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox184:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout31);
    obj.imageCheckBox185:setField("empatiaPokemon_8");
    obj.imageCheckBox185:setLeft(143);
    obj.imageCheckBox185:setTop(4);
    obj.imageCheckBox185:setWidth(19);
    obj.imageCheckBox185:setHeight(19);
    obj.imageCheckBox185:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox185:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout31);
    obj.imageCheckBox186:setField("empatiaPokemon_9");
    obj.imageCheckBox186:setLeft(162);
    obj.imageCheckBox186:setTop(4);
    obj.imageCheckBox186:setWidth(19);
    obj.imageCheckBox186:setHeight(19);
    obj.imageCheckBox186:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox186:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout22);
    obj.layout32:setLeft(425);
    obj.layout32:setTop(148);
    obj.layout32:setWidth(200);
    obj.layout32:setHeight(25);
    obj.layout32:setName("layout32");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout32);
    obj.imageCheckBox187:setField("oficios_1");
    obj.imageCheckBox187:setLeft(10);
    obj.imageCheckBox187:setTop(4);
    obj.imageCheckBox187:setWidth(19);
    obj.imageCheckBox187:setHeight(19);
    obj.imageCheckBox187:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox187:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout32);
    obj.imageCheckBox188:setField("oficios_2");
    obj.imageCheckBox188:setLeft(29);
    obj.imageCheckBox188:setTop(4);
    obj.imageCheckBox188:setWidth(19);
    obj.imageCheckBox188:setHeight(19);
    obj.imageCheckBox188:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox188:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout32);
    obj.imageCheckBox189:setField("oficios_3");
    obj.imageCheckBox189:setLeft(48);
    obj.imageCheckBox189:setTop(4);
    obj.imageCheckBox189:setWidth(19);
    obj.imageCheckBox189:setHeight(19);
    obj.imageCheckBox189:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox189:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout32);
    obj.imageCheckBox190:setField("oficios_4");
    obj.imageCheckBox190:setLeft(67);
    obj.imageCheckBox190:setTop(4);
    obj.imageCheckBox190:setWidth(19);
    obj.imageCheckBox190:setHeight(19);
    obj.imageCheckBox190:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox190:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout32);
    obj.imageCheckBox191:setField("oficios_5");
    obj.imageCheckBox191:setLeft(86);
    obj.imageCheckBox191:setTop(4);
    obj.imageCheckBox191:setWidth(19);
    obj.imageCheckBox191:setHeight(19);
    obj.imageCheckBox191:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox191:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout32);
    obj.imageCheckBox192:setField("oficios_6");
    obj.imageCheckBox192:setLeft(105);
    obj.imageCheckBox192:setTop(4);
    obj.imageCheckBox192:setWidth(19);
    obj.imageCheckBox192:setHeight(19);
    obj.imageCheckBox192:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox192:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.imageCheckBox193 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox193:setParent(obj.layout32);
    obj.imageCheckBox193:setField("oficios_7");
    obj.imageCheckBox193:setLeft(124);
    obj.imageCheckBox193:setTop(4);
    obj.imageCheckBox193:setWidth(19);
    obj.imageCheckBox193:setHeight(19);
    obj.imageCheckBox193:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox193:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox193:setName("imageCheckBox193");

    obj.imageCheckBox194 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox194:setParent(obj.layout32);
    obj.imageCheckBox194:setField("oficios_8");
    obj.imageCheckBox194:setLeft(143);
    obj.imageCheckBox194:setTop(4);
    obj.imageCheckBox194:setWidth(19);
    obj.imageCheckBox194:setHeight(19);
    obj.imageCheckBox194:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox194:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox194:setName("imageCheckBox194");

    obj.imageCheckBox195 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox195:setParent(obj.layout32);
    obj.imageCheckBox195:setField("oficios_9");
    obj.imageCheckBox195:setLeft(162);
    obj.imageCheckBox195:setTop(4);
    obj.imageCheckBox195:setWidth(19);
    obj.imageCheckBox195:setHeight(19);
    obj.imageCheckBox195:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox195:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox195:setName("imageCheckBox195");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout22);
    obj.layout33:setLeft(425);
    obj.layout33:setTop(175);
    obj.layout33:setWidth(200);
    obj.layout33:setHeight(25);
    obj.layout33:setName("layout33");

    obj.imageCheckBox196 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox196:setParent(obj.layout33);
    obj.imageCheckBox196:setField("etiqueta_1");
    obj.imageCheckBox196:setLeft(10);
    obj.imageCheckBox196:setTop(4);
    obj.imageCheckBox196:setWidth(19);
    obj.imageCheckBox196:setHeight(19);
    obj.imageCheckBox196:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox196:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox196:setName("imageCheckBox196");

    obj.imageCheckBox197 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox197:setParent(obj.layout33);
    obj.imageCheckBox197:setField("etiqueta_2");
    obj.imageCheckBox197:setLeft(29);
    obj.imageCheckBox197:setTop(4);
    obj.imageCheckBox197:setWidth(19);
    obj.imageCheckBox197:setHeight(19);
    obj.imageCheckBox197:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox197:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox197:setName("imageCheckBox197");

    obj.imageCheckBox198 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox198:setParent(obj.layout33);
    obj.imageCheckBox198:setField("etiqueta_3");
    obj.imageCheckBox198:setLeft(48);
    obj.imageCheckBox198:setTop(4);
    obj.imageCheckBox198:setWidth(19);
    obj.imageCheckBox198:setHeight(19);
    obj.imageCheckBox198:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox198:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox198:setName("imageCheckBox198");

    obj.imageCheckBox199 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox199:setParent(obj.layout33);
    obj.imageCheckBox199:setField("etiqueta_4");
    obj.imageCheckBox199:setLeft(67);
    obj.imageCheckBox199:setTop(4);
    obj.imageCheckBox199:setWidth(19);
    obj.imageCheckBox199:setHeight(19);
    obj.imageCheckBox199:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox199:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox199:setName("imageCheckBox199");

    obj.imageCheckBox200 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox200:setParent(obj.layout33);
    obj.imageCheckBox200:setField("etiqueta_5");
    obj.imageCheckBox200:setLeft(86);
    obj.imageCheckBox200:setTop(4);
    obj.imageCheckBox200:setWidth(19);
    obj.imageCheckBox200:setHeight(19);
    obj.imageCheckBox200:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox200:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox200:setName("imageCheckBox200");

    obj.imageCheckBox201 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox201:setParent(obj.layout33);
    obj.imageCheckBox201:setField("etiqueta_6");
    obj.imageCheckBox201:setLeft(105);
    obj.imageCheckBox201:setTop(4);
    obj.imageCheckBox201:setWidth(19);
    obj.imageCheckBox201:setHeight(19);
    obj.imageCheckBox201:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox201:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox201:setName("imageCheckBox201");

    obj.imageCheckBox202 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox202:setParent(obj.layout33);
    obj.imageCheckBox202:setField("etiqueta_7");
    obj.imageCheckBox202:setLeft(124);
    obj.imageCheckBox202:setTop(4);
    obj.imageCheckBox202:setWidth(19);
    obj.imageCheckBox202:setHeight(19);
    obj.imageCheckBox202:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox202:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox202:setName("imageCheckBox202");

    obj.imageCheckBox203 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox203:setParent(obj.layout33);
    obj.imageCheckBox203:setField("etiqueta_8");
    obj.imageCheckBox203:setLeft(143);
    obj.imageCheckBox203:setTop(4);
    obj.imageCheckBox203:setWidth(19);
    obj.imageCheckBox203:setHeight(19);
    obj.imageCheckBox203:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox203:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox203:setName("imageCheckBox203");

    obj.imageCheckBox204 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox204:setParent(obj.layout33);
    obj.imageCheckBox204:setField("etiqueta_9");
    obj.imageCheckBox204:setLeft(162);
    obj.imageCheckBox204:setTop(4);
    obj.imageCheckBox204:setWidth(19);
    obj.imageCheckBox204:setHeight(19);
    obj.imageCheckBox204:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox204:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox204:setName("imageCheckBox204");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout22);
    obj.layout34:setLeft(425);
    obj.layout34:setTop(200);
    obj.layout34:setWidth(200);
    obj.layout34:setHeight(25);
    obj.layout34:setName("layout34");

    obj.imageCheckBox205 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox205:setParent(obj.layout34);
    obj.imageCheckBox205:setField("atuacao_1");
    obj.imageCheckBox205:setLeft(10);
    obj.imageCheckBox205:setTop(4);
    obj.imageCheckBox205:setWidth(19);
    obj.imageCheckBox205:setHeight(19);
    obj.imageCheckBox205:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox205:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox205:setName("imageCheckBox205");

    obj.imageCheckBox206 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox206:setParent(obj.layout34);
    obj.imageCheckBox206:setField("atuacao_2");
    obj.imageCheckBox206:setLeft(29);
    obj.imageCheckBox206:setTop(4);
    obj.imageCheckBox206:setWidth(19);
    obj.imageCheckBox206:setHeight(19);
    obj.imageCheckBox206:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox206:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox206:setName("imageCheckBox206");

    obj.imageCheckBox207 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox207:setParent(obj.layout34);
    obj.imageCheckBox207:setField("atuacao_3");
    obj.imageCheckBox207:setLeft(48);
    obj.imageCheckBox207:setTop(4);
    obj.imageCheckBox207:setWidth(19);
    obj.imageCheckBox207:setHeight(19);
    obj.imageCheckBox207:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox207:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox207:setName("imageCheckBox207");

    obj.imageCheckBox208 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox208:setParent(obj.layout34);
    obj.imageCheckBox208:setField("atuacao_4");
    obj.imageCheckBox208:setLeft(67);
    obj.imageCheckBox208:setTop(4);
    obj.imageCheckBox208:setWidth(19);
    obj.imageCheckBox208:setHeight(19);
    obj.imageCheckBox208:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox208:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox208:setName("imageCheckBox208");

    obj.imageCheckBox209 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox209:setParent(obj.layout34);
    obj.imageCheckBox209:setField("atuacao_5");
    obj.imageCheckBox209:setLeft(86);
    obj.imageCheckBox209:setTop(4);
    obj.imageCheckBox209:setWidth(19);
    obj.imageCheckBox209:setHeight(19);
    obj.imageCheckBox209:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox209:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox209:setName("imageCheckBox209");

    obj.imageCheckBox210 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox210:setParent(obj.layout34);
    obj.imageCheckBox210:setField("atuacao_6");
    obj.imageCheckBox210:setLeft(105);
    obj.imageCheckBox210:setTop(4);
    obj.imageCheckBox210:setWidth(19);
    obj.imageCheckBox210:setHeight(19);
    obj.imageCheckBox210:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox210:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox210:setName("imageCheckBox210");

    obj.imageCheckBox211 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox211:setParent(obj.layout34);
    obj.imageCheckBox211:setField("atuacao_7");
    obj.imageCheckBox211:setLeft(124);
    obj.imageCheckBox211:setTop(4);
    obj.imageCheckBox211:setWidth(19);
    obj.imageCheckBox211:setHeight(19);
    obj.imageCheckBox211:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox211:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox211:setName("imageCheckBox211");

    obj.imageCheckBox212 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox212:setParent(obj.layout34);
    obj.imageCheckBox212:setField("atuacao_8");
    obj.imageCheckBox212:setLeft(143);
    obj.imageCheckBox212:setTop(4);
    obj.imageCheckBox212:setWidth(19);
    obj.imageCheckBox212:setHeight(19);
    obj.imageCheckBox212:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox212:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox212:setName("imageCheckBox212");

    obj.imageCheckBox213 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox213:setParent(obj.layout34);
    obj.imageCheckBox213:setField("atuacao_9");
    obj.imageCheckBox213:setLeft(162);
    obj.imageCheckBox213:setTop(4);
    obj.imageCheckBox213:setWidth(19);
    obj.imageCheckBox213:setHeight(19);
    obj.imageCheckBox213:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox213:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox213:setName("imageCheckBox213");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout22);
    obj.layout35:setLeft(425);
    obj.layout35:setTop(225);
    obj.layout35:setWidth(200);
    obj.layout35:setHeight(25);
    obj.layout35:setName("layout35");

    obj.imageCheckBox214 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox214:setParent(obj.layout35);
    obj.imageCheckBox214:setField("seguranca_1");
    obj.imageCheckBox214:setLeft(10);
    obj.imageCheckBox214:setTop(4);
    obj.imageCheckBox214:setWidth(19);
    obj.imageCheckBox214:setHeight(19);
    obj.imageCheckBox214:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox214:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox214:setName("imageCheckBox214");

    obj.imageCheckBox215 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox215:setParent(obj.layout35);
    obj.imageCheckBox215:setField("seguranca_2");
    obj.imageCheckBox215:setLeft(29);
    obj.imageCheckBox215:setTop(4);
    obj.imageCheckBox215:setWidth(19);
    obj.imageCheckBox215:setHeight(19);
    obj.imageCheckBox215:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox215:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox215:setName("imageCheckBox215");

    obj.imageCheckBox216 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox216:setParent(obj.layout35);
    obj.imageCheckBox216:setField("seguranca_3");
    obj.imageCheckBox216:setLeft(48);
    obj.imageCheckBox216:setTop(4);
    obj.imageCheckBox216:setWidth(19);
    obj.imageCheckBox216:setHeight(19);
    obj.imageCheckBox216:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox216:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox216:setName("imageCheckBox216");

    obj.imageCheckBox217 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox217:setParent(obj.layout35);
    obj.imageCheckBox217:setField("seguranca_4");
    obj.imageCheckBox217:setLeft(67);
    obj.imageCheckBox217:setTop(4);
    obj.imageCheckBox217:setWidth(19);
    obj.imageCheckBox217:setHeight(19);
    obj.imageCheckBox217:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox217:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox217:setName("imageCheckBox217");

    obj.imageCheckBox218 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox218:setParent(obj.layout35);
    obj.imageCheckBox218:setField("seguranca_5");
    obj.imageCheckBox218:setLeft(86);
    obj.imageCheckBox218:setTop(4);
    obj.imageCheckBox218:setWidth(19);
    obj.imageCheckBox218:setHeight(19);
    obj.imageCheckBox218:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox218:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox218:setName("imageCheckBox218");

    obj.imageCheckBox219 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox219:setParent(obj.layout35);
    obj.imageCheckBox219:setField("seguranca_6");
    obj.imageCheckBox219:setLeft(105);
    obj.imageCheckBox219:setTop(4);
    obj.imageCheckBox219:setWidth(19);
    obj.imageCheckBox219:setHeight(19);
    obj.imageCheckBox219:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox219:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox219:setName("imageCheckBox219");

    obj.imageCheckBox220 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox220:setParent(obj.layout35);
    obj.imageCheckBox220:setField("seguranca_7");
    obj.imageCheckBox220:setLeft(124);
    obj.imageCheckBox220:setTop(4);
    obj.imageCheckBox220:setWidth(19);
    obj.imageCheckBox220:setHeight(19);
    obj.imageCheckBox220:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox220:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox220:setName("imageCheckBox220");

    obj.imageCheckBox221 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox221:setParent(obj.layout35);
    obj.imageCheckBox221:setField("seguranca_8");
    obj.imageCheckBox221:setLeft(143);
    obj.imageCheckBox221:setTop(4);
    obj.imageCheckBox221:setWidth(19);
    obj.imageCheckBox221:setHeight(19);
    obj.imageCheckBox221:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox221:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox221:setName("imageCheckBox221");

    obj.imageCheckBox222 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox222:setParent(obj.layout35);
    obj.imageCheckBox222:setField("seguranca_9");
    obj.imageCheckBox222:setLeft(162);
    obj.imageCheckBox222:setTop(4);
    obj.imageCheckBox222:setWidth(19);
    obj.imageCheckBox222:setHeight(19);
    obj.imageCheckBox222:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox222:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox222:setName("imageCheckBox222");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout22);
    obj.layout36:setLeft(425);
    obj.layout36:setTop(250);
    obj.layout36:setWidth(200);
    obj.layout36:setHeight(25);
    obj.layout36:setName("layout36");

    obj.imageCheckBox223 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox223:setParent(obj.layout36);
    obj.imageCheckBox223:setField("furtividade_1");
    obj.imageCheckBox223:setLeft(10);
    obj.imageCheckBox223:setTop(4);
    obj.imageCheckBox223:setWidth(19);
    obj.imageCheckBox223:setHeight(19);
    obj.imageCheckBox223:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox223:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox223:setName("imageCheckBox223");

    obj.imageCheckBox224 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox224:setParent(obj.layout36);
    obj.imageCheckBox224:setField("furtividade_2");
    obj.imageCheckBox224:setLeft(29);
    obj.imageCheckBox224:setTop(4);
    obj.imageCheckBox224:setWidth(19);
    obj.imageCheckBox224:setHeight(19);
    obj.imageCheckBox224:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox224:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox224:setName("imageCheckBox224");

    obj.imageCheckBox225 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox225:setParent(obj.layout36);
    obj.imageCheckBox225:setField("furtividade_3");
    obj.imageCheckBox225:setLeft(48);
    obj.imageCheckBox225:setTop(4);
    obj.imageCheckBox225:setWidth(19);
    obj.imageCheckBox225:setHeight(19);
    obj.imageCheckBox225:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox225:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox225:setName("imageCheckBox225");

    obj.imageCheckBox226 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox226:setParent(obj.layout36);
    obj.imageCheckBox226:setField("furtividade_4");
    obj.imageCheckBox226:setLeft(67);
    obj.imageCheckBox226:setTop(4);
    obj.imageCheckBox226:setWidth(19);
    obj.imageCheckBox226:setHeight(19);
    obj.imageCheckBox226:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox226:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox226:setName("imageCheckBox226");

    obj.imageCheckBox227 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox227:setParent(obj.layout36);
    obj.imageCheckBox227:setField("furtividade_5");
    obj.imageCheckBox227:setLeft(86);
    obj.imageCheckBox227:setTop(4);
    obj.imageCheckBox227:setWidth(19);
    obj.imageCheckBox227:setHeight(19);
    obj.imageCheckBox227:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox227:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox227:setName("imageCheckBox227");

    obj.imageCheckBox228 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox228:setParent(obj.layout36);
    obj.imageCheckBox228:setField("furtividade_6");
    obj.imageCheckBox228:setLeft(105);
    obj.imageCheckBox228:setTop(4);
    obj.imageCheckBox228:setWidth(19);
    obj.imageCheckBox228:setHeight(19);
    obj.imageCheckBox228:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox228:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox228:setName("imageCheckBox228");

    obj.imageCheckBox229 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox229:setParent(obj.layout36);
    obj.imageCheckBox229:setField("furtividade_7");
    obj.imageCheckBox229:setLeft(124);
    obj.imageCheckBox229:setTop(4);
    obj.imageCheckBox229:setWidth(19);
    obj.imageCheckBox229:setHeight(19);
    obj.imageCheckBox229:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox229:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox229:setName("imageCheckBox229");

    obj.imageCheckBox230 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox230:setParent(obj.layout36);
    obj.imageCheckBox230:setField("furtividade_8");
    obj.imageCheckBox230:setLeft(143);
    obj.imageCheckBox230:setTop(4);
    obj.imageCheckBox230:setWidth(19);
    obj.imageCheckBox230:setHeight(19);
    obj.imageCheckBox230:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox230:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox230:setName("imageCheckBox230");

    obj.imageCheckBox231 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox231:setParent(obj.layout36);
    obj.imageCheckBox231:setField("furtividade_9");
    obj.imageCheckBox231:setLeft(162);
    obj.imageCheckBox231:setTop(4);
    obj.imageCheckBox231:setWidth(19);
    obj.imageCheckBox231:setHeight(19);
    obj.imageCheckBox231:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox231:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox231:setName("imageCheckBox231");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout22);
    obj.layout37:setLeft(425);
    obj.layout37:setTop(278);
    obj.layout37:setWidth(200);
    obj.layout37:setHeight(25);
    obj.layout37:setName("layout37");

    obj.imageCheckBox232 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox232:setParent(obj.layout37);
    obj.imageCheckBox232:setField("sobrevivencia_1");
    obj.imageCheckBox232:setLeft(10);
    obj.imageCheckBox232:setTop(4);
    obj.imageCheckBox232:setWidth(19);
    obj.imageCheckBox232:setHeight(19);
    obj.imageCheckBox232:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox232:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox232:setName("imageCheckBox232");

    obj.imageCheckBox233 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox233:setParent(obj.layout37);
    obj.imageCheckBox233:setField("sobrevivencia_2");
    obj.imageCheckBox233:setLeft(29);
    obj.imageCheckBox233:setTop(4);
    obj.imageCheckBox233:setWidth(19);
    obj.imageCheckBox233:setHeight(19);
    obj.imageCheckBox233:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox233:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox233:setName("imageCheckBox233");

    obj.imageCheckBox234 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox234:setParent(obj.layout37);
    obj.imageCheckBox234:setField("sobrevivencia_3");
    obj.imageCheckBox234:setLeft(48);
    obj.imageCheckBox234:setTop(4);
    obj.imageCheckBox234:setWidth(19);
    obj.imageCheckBox234:setHeight(19);
    obj.imageCheckBox234:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox234:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox234:setName("imageCheckBox234");

    obj.imageCheckBox235 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox235:setParent(obj.layout37);
    obj.imageCheckBox235:setField("sobrevivencia_4");
    obj.imageCheckBox235:setLeft(67);
    obj.imageCheckBox235:setTop(4);
    obj.imageCheckBox235:setWidth(19);
    obj.imageCheckBox235:setHeight(19);
    obj.imageCheckBox235:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox235:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox235:setName("imageCheckBox235");

    obj.imageCheckBox236 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox236:setParent(obj.layout37);
    obj.imageCheckBox236:setField("sobrevivencia_5");
    obj.imageCheckBox236:setLeft(86);
    obj.imageCheckBox236:setTop(4);
    obj.imageCheckBox236:setWidth(19);
    obj.imageCheckBox236:setHeight(19);
    obj.imageCheckBox236:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox236:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox236:setName("imageCheckBox236");

    obj.imageCheckBox237 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox237:setParent(obj.layout37);
    obj.imageCheckBox237:setField("sobrevivencia_6");
    obj.imageCheckBox237:setLeft(105);
    obj.imageCheckBox237:setTop(4);
    obj.imageCheckBox237:setWidth(19);
    obj.imageCheckBox237:setHeight(19);
    obj.imageCheckBox237:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox237:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox237:setName("imageCheckBox237");

    obj.imageCheckBox238 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox238:setParent(obj.layout37);
    obj.imageCheckBox238:setField("sobrevivencia_7");
    obj.imageCheckBox238:setLeft(124);
    obj.imageCheckBox238:setTop(4);
    obj.imageCheckBox238:setWidth(19);
    obj.imageCheckBox238:setHeight(19);
    obj.imageCheckBox238:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox238:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox238:setName("imageCheckBox238");

    obj.imageCheckBox239 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox239:setParent(obj.layout37);
    obj.imageCheckBox239:setField("sobrevivencia_8");
    obj.imageCheckBox239:setLeft(143);
    obj.imageCheckBox239:setTop(4);
    obj.imageCheckBox239:setWidth(19);
    obj.imageCheckBox239:setHeight(19);
    obj.imageCheckBox239:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox239:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox239:setName("imageCheckBox239");

    obj.imageCheckBox240 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox240:setParent(obj.layout37);
    obj.imageCheckBox240:setField("sobrevivencia_9");
    obj.imageCheckBox240:setLeft(162);
    obj.imageCheckBox240:setTop(4);
    obj.imageCheckBox240:setWidth(19);
    obj.imageCheckBox240:setHeight(19);
    obj.imageCheckBox240:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox240:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox240:setName("imageCheckBox240");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout22);
    obj.layout38:setLeft(425);
    obj.layout38:setTop(305);
    obj.layout38:setWidth(200);
    obj.layout38:setHeight(25);
    obj.layout38:setName("layout38");

    obj.imageCheckBox241 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox241:setParent(obj.layout38);
    obj.imageCheckBox241:setField("caca_1");
    obj.imageCheckBox241:setLeft(10);
    obj.imageCheckBox241:setTop(4);
    obj.imageCheckBox241:setWidth(19);
    obj.imageCheckBox241:setHeight(19);
    obj.imageCheckBox241:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox241:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox241:setName("imageCheckBox241");

    obj.imageCheckBox242 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox242:setParent(obj.layout38);
    obj.imageCheckBox242:setField("caca_2");
    obj.imageCheckBox242:setLeft(29);
    obj.imageCheckBox242:setTop(4);
    obj.imageCheckBox242:setWidth(19);
    obj.imageCheckBox242:setHeight(19);
    obj.imageCheckBox242:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox242:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox242:setName("imageCheckBox242");

    obj.imageCheckBox243 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox243:setParent(obj.layout38);
    obj.imageCheckBox243:setField("caca_3");
    obj.imageCheckBox243:setLeft(48);
    obj.imageCheckBox243:setTop(4);
    obj.imageCheckBox243:setWidth(19);
    obj.imageCheckBox243:setHeight(19);
    obj.imageCheckBox243:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox243:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox243:setName("imageCheckBox243");

    obj.imageCheckBox244 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox244:setParent(obj.layout38);
    obj.imageCheckBox244:setField("caca_4");
    obj.imageCheckBox244:setLeft(67);
    obj.imageCheckBox244:setTop(4);
    obj.imageCheckBox244:setWidth(19);
    obj.imageCheckBox244:setHeight(19);
    obj.imageCheckBox244:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox244:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox244:setName("imageCheckBox244");

    obj.imageCheckBox245 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox245:setParent(obj.layout38);
    obj.imageCheckBox245:setField("caca_5");
    obj.imageCheckBox245:setLeft(86);
    obj.imageCheckBox245:setTop(4);
    obj.imageCheckBox245:setWidth(19);
    obj.imageCheckBox245:setHeight(19);
    obj.imageCheckBox245:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox245:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox245:setName("imageCheckBox245");

    obj.imageCheckBox246 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox246:setParent(obj.layout38);
    obj.imageCheckBox246:setField("caca_6");
    obj.imageCheckBox246:setLeft(105);
    obj.imageCheckBox246:setTop(4);
    obj.imageCheckBox246:setWidth(19);
    obj.imageCheckBox246:setHeight(19);
    obj.imageCheckBox246:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox246:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox246:setName("imageCheckBox246");

    obj.imageCheckBox247 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox247:setParent(obj.layout38);
    obj.imageCheckBox247:setField("caca_7");
    obj.imageCheckBox247:setLeft(124);
    obj.imageCheckBox247:setTop(4);
    obj.imageCheckBox247:setWidth(19);
    obj.imageCheckBox247:setHeight(19);
    obj.imageCheckBox247:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox247:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox247:setName("imageCheckBox247");

    obj.imageCheckBox248 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox248:setParent(obj.layout38);
    obj.imageCheckBox248:setField("caca_8");
    obj.imageCheckBox248:setLeft(143);
    obj.imageCheckBox248:setTop(4);
    obj.imageCheckBox248:setWidth(19);
    obj.imageCheckBox248:setHeight(19);
    obj.imageCheckBox248:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox248:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox248:setName("imageCheckBox248");

    obj.imageCheckBox249 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox249:setParent(obj.layout38);
    obj.imageCheckBox249:setField("caca_9");
    obj.imageCheckBox249:setLeft(162);
    obj.imageCheckBox249:setTop(4);
    obj.imageCheckBox249:setWidth(19);
    obj.imageCheckBox249:setHeight(19);
    obj.imageCheckBox249:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox249:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox249:setName("imageCheckBox249");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout22);
    obj.layout39:setLeft(730);
    obj.layout39:setTop(121);
    obj.layout39:setWidth(200);
    obj.layout39:setHeight(25);
    obj.layout39:setName("layout39");

    obj.imageCheckBox250 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox250:setParent(obj.layout39);
    obj.imageCheckBox250:setField("academicos_1");
    obj.imageCheckBox250:setLeft(10);
    obj.imageCheckBox250:setTop(4);
    obj.imageCheckBox250:setWidth(19);
    obj.imageCheckBox250:setHeight(19);
    obj.imageCheckBox250:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox250:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox250:setName("imageCheckBox250");

    obj.imageCheckBox251 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox251:setParent(obj.layout39);
    obj.imageCheckBox251:setField("academicos_2");
    obj.imageCheckBox251:setLeft(29);
    obj.imageCheckBox251:setTop(4);
    obj.imageCheckBox251:setWidth(19);
    obj.imageCheckBox251:setHeight(19);
    obj.imageCheckBox251:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox251:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox251:setName("imageCheckBox251");

    obj.imageCheckBox252 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox252:setParent(obj.layout39);
    obj.imageCheckBox252:setField("academicos_3");
    obj.imageCheckBox252:setLeft(48);
    obj.imageCheckBox252:setTop(4);
    obj.imageCheckBox252:setWidth(19);
    obj.imageCheckBox252:setHeight(19);
    obj.imageCheckBox252:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox252:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox252:setName("imageCheckBox252");

    obj.imageCheckBox253 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox253:setParent(obj.layout39);
    obj.imageCheckBox253:setField("academicos_4");
    obj.imageCheckBox253:setLeft(67);
    obj.imageCheckBox253:setTop(4);
    obj.imageCheckBox253:setWidth(19);
    obj.imageCheckBox253:setHeight(19);
    obj.imageCheckBox253:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox253:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox253:setName("imageCheckBox253");

    obj.imageCheckBox254 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox254:setParent(obj.layout39);
    obj.imageCheckBox254:setField("academicos_5");
    obj.imageCheckBox254:setLeft(86);
    obj.imageCheckBox254:setTop(4);
    obj.imageCheckBox254:setWidth(19);
    obj.imageCheckBox254:setHeight(19);
    obj.imageCheckBox254:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox254:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox254:setName("imageCheckBox254");

    obj.imageCheckBox255 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox255:setParent(obj.layout39);
    obj.imageCheckBox255:setField("academicos_6");
    obj.imageCheckBox255:setLeft(105);
    obj.imageCheckBox255:setTop(4);
    obj.imageCheckBox255:setWidth(19);
    obj.imageCheckBox255:setHeight(19);
    obj.imageCheckBox255:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox255:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox255:setName("imageCheckBox255");

    obj.imageCheckBox256 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox256:setParent(obj.layout39);
    obj.imageCheckBox256:setField("academicos_7");
    obj.imageCheckBox256:setLeft(124);
    obj.imageCheckBox256:setTop(4);
    obj.imageCheckBox256:setWidth(19);
    obj.imageCheckBox256:setHeight(19);
    obj.imageCheckBox256:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox256:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox256:setName("imageCheckBox256");

    obj.imageCheckBox257 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox257:setParent(obj.layout39);
    obj.imageCheckBox257:setField("academicos_8");
    obj.imageCheckBox257:setLeft(143);
    obj.imageCheckBox257:setTop(4);
    obj.imageCheckBox257:setWidth(19);
    obj.imageCheckBox257:setHeight(19);
    obj.imageCheckBox257:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox257:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox257:setName("imageCheckBox257");

    obj.imageCheckBox258 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox258:setParent(obj.layout39);
    obj.imageCheckBox258:setField("academicos_9");
    obj.imageCheckBox258:setLeft(162);
    obj.imageCheckBox258:setTop(4);
    obj.imageCheckBox258:setWidth(19);
    obj.imageCheckBox258:setHeight(19);
    obj.imageCheckBox258:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox258:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox258:setName("imageCheckBox258");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout22);
    obj.layout40:setLeft(730);
    obj.layout40:setTop(148);
    obj.layout40:setWidth(200);
    obj.layout40:setHeight(25);
    obj.layout40:setName("layout40");

    obj.imageCheckBox259 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox259:setParent(obj.layout40);
    obj.imageCheckBox259:setField("computador_1");
    obj.imageCheckBox259:setLeft(10);
    obj.imageCheckBox259:setTop(4);
    obj.imageCheckBox259:setWidth(19);
    obj.imageCheckBox259:setHeight(19);
    obj.imageCheckBox259:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox259:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox259:setName("imageCheckBox259");

    obj.imageCheckBox260 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox260:setParent(obj.layout40);
    obj.imageCheckBox260:setField("computador_2");
    obj.imageCheckBox260:setLeft(29);
    obj.imageCheckBox260:setTop(4);
    obj.imageCheckBox260:setWidth(19);
    obj.imageCheckBox260:setHeight(19);
    obj.imageCheckBox260:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox260:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox260:setName("imageCheckBox260");

    obj.imageCheckBox261 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox261:setParent(obj.layout40);
    obj.imageCheckBox261:setField("computador_3");
    obj.imageCheckBox261:setLeft(48);
    obj.imageCheckBox261:setTop(4);
    obj.imageCheckBox261:setWidth(19);
    obj.imageCheckBox261:setHeight(19);
    obj.imageCheckBox261:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox261:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox261:setName("imageCheckBox261");

    obj.imageCheckBox262 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox262:setParent(obj.layout40);
    obj.imageCheckBox262:setField("computador_4");
    obj.imageCheckBox262:setLeft(67);
    obj.imageCheckBox262:setTop(4);
    obj.imageCheckBox262:setWidth(19);
    obj.imageCheckBox262:setHeight(19);
    obj.imageCheckBox262:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox262:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox262:setName("imageCheckBox262");

    obj.imageCheckBox263 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox263:setParent(obj.layout40);
    obj.imageCheckBox263:setField("computador_5");
    obj.imageCheckBox263:setLeft(86);
    obj.imageCheckBox263:setTop(4);
    obj.imageCheckBox263:setWidth(19);
    obj.imageCheckBox263:setHeight(19);
    obj.imageCheckBox263:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox263:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox263:setName("imageCheckBox263");

    obj.imageCheckBox264 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox264:setParent(obj.layout40);
    obj.imageCheckBox264:setField("computador_6");
    obj.imageCheckBox264:setLeft(105);
    obj.imageCheckBox264:setTop(4);
    obj.imageCheckBox264:setWidth(19);
    obj.imageCheckBox264:setHeight(19);
    obj.imageCheckBox264:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox264:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox264:setName("imageCheckBox264");

    obj.imageCheckBox265 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox265:setParent(obj.layout40);
    obj.imageCheckBox265:setField("computador_7");
    obj.imageCheckBox265:setLeft(124);
    obj.imageCheckBox265:setTop(4);
    obj.imageCheckBox265:setWidth(19);
    obj.imageCheckBox265:setHeight(19);
    obj.imageCheckBox265:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox265:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox265:setName("imageCheckBox265");

    obj.imageCheckBox266 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox266:setParent(obj.layout40);
    obj.imageCheckBox266:setField("computador_8");
    obj.imageCheckBox266:setLeft(143);
    obj.imageCheckBox266:setTop(4);
    obj.imageCheckBox266:setWidth(19);
    obj.imageCheckBox266:setHeight(19);
    obj.imageCheckBox266:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox266:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox266:setName("imageCheckBox266");

    obj.imageCheckBox267 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox267:setParent(obj.layout40);
    obj.imageCheckBox267:setField("computador_9");
    obj.imageCheckBox267:setLeft(162);
    obj.imageCheckBox267:setTop(4);
    obj.imageCheckBox267:setWidth(19);
    obj.imageCheckBox267:setHeight(19);
    obj.imageCheckBox267:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox267:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox267:setName("imageCheckBox267");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout22);
    obj.layout41:setLeft(730);
    obj.layout41:setTop(175);
    obj.layout41:setWidth(200);
    obj.layout41:setHeight(25);
    obj.layout41:setName("layout41");

    obj.imageCheckBox268 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox268:setParent(obj.layout41);
    obj.imageCheckBox268:setField("habitats_1");
    obj.imageCheckBox268:setLeft(10);
    obj.imageCheckBox268:setTop(4);
    obj.imageCheckBox268:setWidth(19);
    obj.imageCheckBox268:setHeight(19);
    obj.imageCheckBox268:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox268:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox268:setName("imageCheckBox268");

    obj.imageCheckBox269 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox269:setParent(obj.layout41);
    obj.imageCheckBox269:setField("habitats_2");
    obj.imageCheckBox269:setLeft(29);
    obj.imageCheckBox269:setTop(4);
    obj.imageCheckBox269:setWidth(19);
    obj.imageCheckBox269:setHeight(19);
    obj.imageCheckBox269:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox269:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox269:setName("imageCheckBox269");

    obj.imageCheckBox270 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox270:setParent(obj.layout41);
    obj.imageCheckBox270:setField("habitats_3");
    obj.imageCheckBox270:setLeft(48);
    obj.imageCheckBox270:setTop(4);
    obj.imageCheckBox270:setWidth(19);
    obj.imageCheckBox270:setHeight(19);
    obj.imageCheckBox270:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox270:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox270:setName("imageCheckBox270");

    obj.imageCheckBox271 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox271:setParent(obj.layout41);
    obj.imageCheckBox271:setField("habitats_4");
    obj.imageCheckBox271:setLeft(67);
    obj.imageCheckBox271:setTop(4);
    obj.imageCheckBox271:setWidth(19);
    obj.imageCheckBox271:setHeight(19);
    obj.imageCheckBox271:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox271:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox271:setName("imageCheckBox271");

    obj.imageCheckBox272 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox272:setParent(obj.layout41);
    obj.imageCheckBox272:setField("habitats_5");
    obj.imageCheckBox272:setLeft(86);
    obj.imageCheckBox272:setTop(4);
    obj.imageCheckBox272:setWidth(19);
    obj.imageCheckBox272:setHeight(19);
    obj.imageCheckBox272:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox272:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox272:setName("imageCheckBox272");

    obj.imageCheckBox273 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox273:setParent(obj.layout41);
    obj.imageCheckBox273:setField("habitats_6");
    obj.imageCheckBox273:setLeft(105);
    obj.imageCheckBox273:setTop(4);
    obj.imageCheckBox273:setWidth(19);
    obj.imageCheckBox273:setHeight(19);
    obj.imageCheckBox273:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox273:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox273:setName("imageCheckBox273");

    obj.imageCheckBox274 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox274:setParent(obj.layout41);
    obj.imageCheckBox274:setField("habitats_7");
    obj.imageCheckBox274:setLeft(124);
    obj.imageCheckBox274:setTop(4);
    obj.imageCheckBox274:setWidth(19);
    obj.imageCheckBox274:setHeight(19);
    obj.imageCheckBox274:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox274:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox274:setName("imageCheckBox274");

    obj.imageCheckBox275 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox275:setParent(obj.layout41);
    obj.imageCheckBox275:setField("habitats_8");
    obj.imageCheckBox275:setLeft(143);
    obj.imageCheckBox275:setTop(4);
    obj.imageCheckBox275:setWidth(19);
    obj.imageCheckBox275:setHeight(19);
    obj.imageCheckBox275:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox275:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox275:setName("imageCheckBox275");

    obj.imageCheckBox276 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox276:setParent(obj.layout41);
    obj.imageCheckBox276:setField("habitats_9");
    obj.imageCheckBox276:setLeft(162);
    obj.imageCheckBox276:setTop(4);
    obj.imageCheckBox276:setWidth(19);
    obj.imageCheckBox276:setHeight(19);
    obj.imageCheckBox276:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox276:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox276:setName("imageCheckBox276");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout22);
    obj.layout42:setLeft(730);
    obj.layout42:setTop(200);
    obj.layout42:setWidth(200);
    obj.layout42:setHeight(25);
    obj.layout42:setName("layout42");

    obj.imageCheckBox277 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox277:setParent(obj.layout42);
    obj.imageCheckBox277:setField("investigacao_1");
    obj.imageCheckBox277:setLeft(10);
    obj.imageCheckBox277:setTop(4);
    obj.imageCheckBox277:setWidth(19);
    obj.imageCheckBox277:setHeight(19);
    obj.imageCheckBox277:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox277:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox277:setName("imageCheckBox277");

    obj.imageCheckBox278 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox278:setParent(obj.layout42);
    obj.imageCheckBox278:setField("investigacao_2");
    obj.imageCheckBox278:setLeft(29);
    obj.imageCheckBox278:setTop(4);
    obj.imageCheckBox278:setWidth(19);
    obj.imageCheckBox278:setHeight(19);
    obj.imageCheckBox278:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox278:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox278:setName("imageCheckBox278");

    obj.imageCheckBox279 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox279:setParent(obj.layout42);
    obj.imageCheckBox279:setField("investigacao_3");
    obj.imageCheckBox279:setLeft(48);
    obj.imageCheckBox279:setTop(4);
    obj.imageCheckBox279:setWidth(19);
    obj.imageCheckBox279:setHeight(19);
    obj.imageCheckBox279:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox279:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox279:setName("imageCheckBox279");

    obj.imageCheckBox280 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox280:setParent(obj.layout42);
    obj.imageCheckBox280:setField("investigacao_4");
    obj.imageCheckBox280:setLeft(67);
    obj.imageCheckBox280:setTop(4);
    obj.imageCheckBox280:setWidth(19);
    obj.imageCheckBox280:setHeight(19);
    obj.imageCheckBox280:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox280:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox280:setName("imageCheckBox280");

    obj.imageCheckBox281 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox281:setParent(obj.layout42);
    obj.imageCheckBox281:setField("investigacao_5");
    obj.imageCheckBox281:setLeft(86);
    obj.imageCheckBox281:setTop(4);
    obj.imageCheckBox281:setWidth(19);
    obj.imageCheckBox281:setHeight(19);
    obj.imageCheckBox281:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox281:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox281:setName("imageCheckBox281");

    obj.imageCheckBox282 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox282:setParent(obj.layout42);
    obj.imageCheckBox282:setField("investigacao_6");
    obj.imageCheckBox282:setLeft(105);
    obj.imageCheckBox282:setTop(4);
    obj.imageCheckBox282:setWidth(19);
    obj.imageCheckBox282:setHeight(19);
    obj.imageCheckBox282:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox282:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox282:setName("imageCheckBox282");

    obj.imageCheckBox283 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox283:setParent(obj.layout42);
    obj.imageCheckBox283:setField("investigacao_7");
    obj.imageCheckBox283:setLeft(124);
    obj.imageCheckBox283:setTop(4);
    obj.imageCheckBox283:setWidth(19);
    obj.imageCheckBox283:setHeight(19);
    obj.imageCheckBox283:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox283:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox283:setName("imageCheckBox283");

    obj.imageCheckBox284 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox284:setParent(obj.layout42);
    obj.imageCheckBox284:setField("investigacao_8");
    obj.imageCheckBox284:setLeft(143);
    obj.imageCheckBox284:setTop(4);
    obj.imageCheckBox284:setWidth(19);
    obj.imageCheckBox284:setHeight(19);
    obj.imageCheckBox284:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox284:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox284:setName("imageCheckBox284");

    obj.imageCheckBox285 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox285:setParent(obj.layout42);
    obj.imageCheckBox285:setField("investigacao_9");
    obj.imageCheckBox285:setLeft(162);
    obj.imageCheckBox285:setTop(4);
    obj.imageCheckBox285:setWidth(19);
    obj.imageCheckBox285:setHeight(19);
    obj.imageCheckBox285:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox285:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox285:setName("imageCheckBox285");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout22);
    obj.layout43:setLeft(730);
    obj.layout43:setTop(225);
    obj.layout43:setWidth(200);
    obj.layout43:setHeight(25);
    obj.layout43:setName("layout43");

    obj.imageCheckBox286 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox286:setParent(obj.layout43);
    obj.imageCheckBox286:setField("direito_1");
    obj.imageCheckBox286:setLeft(10);
    obj.imageCheckBox286:setTop(4);
    obj.imageCheckBox286:setWidth(19);
    obj.imageCheckBox286:setHeight(19);
    obj.imageCheckBox286:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox286:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox286:setName("imageCheckBox286");

    obj.imageCheckBox287 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox287:setParent(obj.layout43);
    obj.imageCheckBox287:setField("direito_2");
    obj.imageCheckBox287:setLeft(29);
    obj.imageCheckBox287:setTop(4);
    obj.imageCheckBox287:setWidth(19);
    obj.imageCheckBox287:setHeight(19);
    obj.imageCheckBox287:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox287:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox287:setName("imageCheckBox287");

    obj.imageCheckBox288 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox288:setParent(obj.layout43);
    obj.imageCheckBox288:setField("direito_3");
    obj.imageCheckBox288:setLeft(48);
    obj.imageCheckBox288:setTop(4);
    obj.imageCheckBox288:setWidth(19);
    obj.imageCheckBox288:setHeight(19);
    obj.imageCheckBox288:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox288:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox288:setName("imageCheckBox288");

    obj.imageCheckBox289 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox289:setParent(obj.layout43);
    obj.imageCheckBox289:setField("direito_4");
    obj.imageCheckBox289:setLeft(67);
    obj.imageCheckBox289:setTop(4);
    obj.imageCheckBox289:setWidth(19);
    obj.imageCheckBox289:setHeight(19);
    obj.imageCheckBox289:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox289:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox289:setName("imageCheckBox289");

    obj.imageCheckBox290 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox290:setParent(obj.layout43);
    obj.imageCheckBox290:setField("direito_5");
    obj.imageCheckBox290:setLeft(86);
    obj.imageCheckBox290:setTop(4);
    obj.imageCheckBox290:setWidth(19);
    obj.imageCheckBox290:setHeight(19);
    obj.imageCheckBox290:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox290:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox290:setName("imageCheckBox290");

    obj.imageCheckBox291 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox291:setParent(obj.layout43);
    obj.imageCheckBox291:setField("direito_6");
    obj.imageCheckBox291:setLeft(105);
    obj.imageCheckBox291:setTop(4);
    obj.imageCheckBox291:setWidth(19);
    obj.imageCheckBox291:setHeight(19);
    obj.imageCheckBox291:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox291:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox291:setName("imageCheckBox291");

    obj.imageCheckBox292 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox292:setParent(obj.layout43);
    obj.imageCheckBox292:setField("direito_7");
    obj.imageCheckBox292:setLeft(124);
    obj.imageCheckBox292:setTop(4);
    obj.imageCheckBox292:setWidth(19);
    obj.imageCheckBox292:setHeight(19);
    obj.imageCheckBox292:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox292:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox292:setName("imageCheckBox292");

    obj.imageCheckBox293 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox293:setParent(obj.layout43);
    obj.imageCheckBox293:setField("direito_8");
    obj.imageCheckBox293:setLeft(143);
    obj.imageCheckBox293:setTop(4);
    obj.imageCheckBox293:setWidth(19);
    obj.imageCheckBox293:setHeight(19);
    obj.imageCheckBox293:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox293:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox293:setName("imageCheckBox293");

    obj.imageCheckBox294 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox294:setParent(obj.layout43);
    obj.imageCheckBox294:setField("direito_9");
    obj.imageCheckBox294:setLeft(162);
    obj.imageCheckBox294:setTop(4);
    obj.imageCheckBox294:setWidth(19);
    obj.imageCheckBox294:setHeight(19);
    obj.imageCheckBox294:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox294:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox294:setName("imageCheckBox294");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout22);
    obj.layout44:setLeft(730);
    obj.layout44:setTop(250);
    obj.layout44:setWidth(200);
    obj.layout44:setHeight(25);
    obj.layout44:setName("layout44");

    obj.imageCheckBox295 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox295:setParent(obj.layout44);
    obj.imageCheckBox295:setField("medicina_1");
    obj.imageCheckBox295:setLeft(10);
    obj.imageCheckBox295:setTop(4);
    obj.imageCheckBox295:setWidth(19);
    obj.imageCheckBox295:setHeight(19);
    obj.imageCheckBox295:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox295:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox295:setName("imageCheckBox295");

    obj.imageCheckBox296 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox296:setParent(obj.layout44);
    obj.imageCheckBox296:setField("medicina_2");
    obj.imageCheckBox296:setLeft(29);
    obj.imageCheckBox296:setTop(4);
    obj.imageCheckBox296:setWidth(19);
    obj.imageCheckBox296:setHeight(19);
    obj.imageCheckBox296:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox296:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox296:setName("imageCheckBox296");

    obj.imageCheckBox297 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox297:setParent(obj.layout44);
    obj.imageCheckBox297:setField("medicina_3");
    obj.imageCheckBox297:setLeft(48);
    obj.imageCheckBox297:setTop(4);
    obj.imageCheckBox297:setWidth(19);
    obj.imageCheckBox297:setHeight(19);
    obj.imageCheckBox297:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox297:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox297:setName("imageCheckBox297");

    obj.imageCheckBox298 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox298:setParent(obj.layout44);
    obj.imageCheckBox298:setField("medicina_4");
    obj.imageCheckBox298:setLeft(67);
    obj.imageCheckBox298:setTop(4);
    obj.imageCheckBox298:setWidth(19);
    obj.imageCheckBox298:setHeight(19);
    obj.imageCheckBox298:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox298:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox298:setName("imageCheckBox298");

    obj.imageCheckBox299 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox299:setParent(obj.layout44);
    obj.imageCheckBox299:setField("medicina_5");
    obj.imageCheckBox299:setLeft(86);
    obj.imageCheckBox299:setTop(4);
    obj.imageCheckBox299:setWidth(19);
    obj.imageCheckBox299:setHeight(19);
    obj.imageCheckBox299:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox299:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox299:setName("imageCheckBox299");

    obj.imageCheckBox300 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox300:setParent(obj.layout44);
    obj.imageCheckBox300:setField("medicina_6");
    obj.imageCheckBox300:setLeft(105);
    obj.imageCheckBox300:setTop(4);
    obj.imageCheckBox300:setWidth(19);
    obj.imageCheckBox300:setHeight(19);
    obj.imageCheckBox300:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox300:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox300:setName("imageCheckBox300");

    obj.imageCheckBox301 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox301:setParent(obj.layout44);
    obj.imageCheckBox301:setField("medicina_7");
    obj.imageCheckBox301:setLeft(124);
    obj.imageCheckBox301:setTop(4);
    obj.imageCheckBox301:setWidth(19);
    obj.imageCheckBox301:setHeight(19);
    obj.imageCheckBox301:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox301:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox301:setName("imageCheckBox301");

    obj.imageCheckBox302 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox302:setParent(obj.layout44);
    obj.imageCheckBox302:setField("medicina_8");
    obj.imageCheckBox302:setLeft(143);
    obj.imageCheckBox302:setTop(4);
    obj.imageCheckBox302:setWidth(19);
    obj.imageCheckBox302:setHeight(19);
    obj.imageCheckBox302:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox302:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox302:setName("imageCheckBox302");

    obj.imageCheckBox303 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox303:setParent(obj.layout44);
    obj.imageCheckBox303:setField("medicina_9");
    obj.imageCheckBox303:setLeft(162);
    obj.imageCheckBox303:setTop(4);
    obj.imageCheckBox303:setWidth(19);
    obj.imageCheckBox303:setHeight(19);
    obj.imageCheckBox303:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox303:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox303:setName("imageCheckBox303");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout22);
    obj.layout45:setLeft(730);
    obj.layout45:setTop(278);
    obj.layout45:setWidth(200);
    obj.layout45:setHeight(25);
    obj.layout45:setName("layout45");

    obj.imageCheckBox304 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox304:setParent(obj.layout45);
    obj.imageCheckBox304:setField("ciencia_1");
    obj.imageCheckBox304:setLeft(10);
    obj.imageCheckBox304:setTop(4);
    obj.imageCheckBox304:setWidth(19);
    obj.imageCheckBox304:setHeight(19);
    obj.imageCheckBox304:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox304:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox304:setName("imageCheckBox304");

    obj.imageCheckBox305 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox305:setParent(obj.layout45);
    obj.imageCheckBox305:setField("ciencia_2");
    obj.imageCheckBox305:setLeft(29);
    obj.imageCheckBox305:setTop(4);
    obj.imageCheckBox305:setWidth(19);
    obj.imageCheckBox305:setHeight(19);
    obj.imageCheckBox305:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox305:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox305:setName("imageCheckBox305");

    obj.imageCheckBox306 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox306:setParent(obj.layout45);
    obj.imageCheckBox306:setField("ciencia_3");
    obj.imageCheckBox306:setLeft(48);
    obj.imageCheckBox306:setTop(4);
    obj.imageCheckBox306:setWidth(19);
    obj.imageCheckBox306:setHeight(19);
    obj.imageCheckBox306:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox306:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox306:setName("imageCheckBox306");

    obj.imageCheckBox307 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox307:setParent(obj.layout45);
    obj.imageCheckBox307:setField("ciencia_4");
    obj.imageCheckBox307:setLeft(67);
    obj.imageCheckBox307:setTop(4);
    obj.imageCheckBox307:setWidth(19);
    obj.imageCheckBox307:setHeight(19);
    obj.imageCheckBox307:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox307:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox307:setName("imageCheckBox307");

    obj.imageCheckBox308 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox308:setParent(obj.layout45);
    obj.imageCheckBox308:setField("ciencia_5");
    obj.imageCheckBox308:setLeft(86);
    obj.imageCheckBox308:setTop(4);
    obj.imageCheckBox308:setWidth(19);
    obj.imageCheckBox308:setHeight(19);
    obj.imageCheckBox308:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox308:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox308:setName("imageCheckBox308");

    obj.imageCheckBox309 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox309:setParent(obj.layout45);
    obj.imageCheckBox309:setField("ciencia_6");
    obj.imageCheckBox309:setLeft(105);
    obj.imageCheckBox309:setTop(4);
    obj.imageCheckBox309:setWidth(19);
    obj.imageCheckBox309:setHeight(19);
    obj.imageCheckBox309:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox309:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox309:setName("imageCheckBox309");

    obj.imageCheckBox310 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox310:setParent(obj.layout45);
    obj.imageCheckBox310:setField("ciencia_7");
    obj.imageCheckBox310:setLeft(124);
    obj.imageCheckBox310:setTop(4);
    obj.imageCheckBox310:setWidth(19);
    obj.imageCheckBox310:setHeight(19);
    obj.imageCheckBox310:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox310:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox310:setName("imageCheckBox310");

    obj.imageCheckBox311 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox311:setParent(obj.layout45);
    obj.imageCheckBox311:setField("ciencia_8");
    obj.imageCheckBox311:setLeft(143);
    obj.imageCheckBox311:setTop(4);
    obj.imageCheckBox311:setWidth(19);
    obj.imageCheckBox311:setHeight(19);
    obj.imageCheckBox311:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox311:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox311:setName("imageCheckBox311");

    obj.imageCheckBox312 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox312:setParent(obj.layout45);
    obj.imageCheckBox312:setField("ciencia_9");
    obj.imageCheckBox312:setLeft(162);
    obj.imageCheckBox312:setTop(4);
    obj.imageCheckBox312:setWidth(19);
    obj.imageCheckBox312:setHeight(19);
    obj.imageCheckBox312:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox312:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox312:setName("imageCheckBox312");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout22);
    obj.layout46:setLeft(730);
    obj.layout46:setTop(305);
    obj.layout46:setWidth(200);
    obj.layout46:setHeight(25);
    obj.layout46:setName("layout46");

    obj.imageCheckBox313 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox313:setParent(obj.layout46);
    obj.imageCheckBox313:setField("culinaria_1");
    obj.imageCheckBox313:setLeft(10);
    obj.imageCheckBox313:setTop(4);
    obj.imageCheckBox313:setWidth(19);
    obj.imageCheckBox313:setHeight(19);
    obj.imageCheckBox313:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox313:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox313:setName("imageCheckBox313");

    obj.imageCheckBox314 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox314:setParent(obj.layout46);
    obj.imageCheckBox314:setField("culinaria_2");
    obj.imageCheckBox314:setLeft(29);
    obj.imageCheckBox314:setTop(4);
    obj.imageCheckBox314:setWidth(19);
    obj.imageCheckBox314:setHeight(19);
    obj.imageCheckBox314:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox314:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox314:setName("imageCheckBox314");

    obj.imageCheckBox315 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox315:setParent(obj.layout46);
    obj.imageCheckBox315:setField("culinaria_3");
    obj.imageCheckBox315:setLeft(48);
    obj.imageCheckBox315:setTop(4);
    obj.imageCheckBox315:setWidth(19);
    obj.imageCheckBox315:setHeight(19);
    obj.imageCheckBox315:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox315:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox315:setName("imageCheckBox315");

    obj.imageCheckBox316 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox316:setParent(obj.layout46);
    obj.imageCheckBox316:setField("culinaria_4");
    obj.imageCheckBox316:setLeft(67);
    obj.imageCheckBox316:setTop(4);
    obj.imageCheckBox316:setWidth(19);
    obj.imageCheckBox316:setHeight(19);
    obj.imageCheckBox316:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox316:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox316:setName("imageCheckBox316");

    obj.imageCheckBox317 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox317:setParent(obj.layout46);
    obj.imageCheckBox317:setField("culinaria_5");
    obj.imageCheckBox317:setLeft(86);
    obj.imageCheckBox317:setTop(4);
    obj.imageCheckBox317:setWidth(19);
    obj.imageCheckBox317:setHeight(19);
    obj.imageCheckBox317:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox317:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox317:setName("imageCheckBox317");

    obj.imageCheckBox318 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox318:setParent(obj.layout46);
    obj.imageCheckBox318:setField("culinaria_6");
    obj.imageCheckBox318:setLeft(105);
    obj.imageCheckBox318:setTop(4);
    obj.imageCheckBox318:setWidth(19);
    obj.imageCheckBox318:setHeight(19);
    obj.imageCheckBox318:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox318:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox318:setName("imageCheckBox318");

    obj.imageCheckBox319 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox319:setParent(obj.layout46);
    obj.imageCheckBox319:setField("culinaria_7");
    obj.imageCheckBox319:setLeft(124);
    obj.imageCheckBox319:setTop(4);
    obj.imageCheckBox319:setWidth(19);
    obj.imageCheckBox319:setHeight(19);
    obj.imageCheckBox319:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox319:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox319:setName("imageCheckBox319");

    obj.imageCheckBox320 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox320:setParent(obj.layout46);
    obj.imageCheckBox320:setField("culinaria_8");
    obj.imageCheckBox320:setLeft(143);
    obj.imageCheckBox320:setTop(4);
    obj.imageCheckBox320:setWidth(19);
    obj.imageCheckBox320:setHeight(19);
    obj.imageCheckBox320:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox320:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox320:setName("imageCheckBox320");

    obj.imageCheckBox321 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox321:setParent(obj.layout46);
    obj.imageCheckBox321:setField("culinaria_9");
    obj.imageCheckBox321:setLeft(162);
    obj.imageCheckBox321:setTop(4);
    obj.imageCheckBox321:setWidth(19);
    obj.imageCheckBox321:setHeight(19);
    obj.imageCheckBox321:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox321:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox321:setName("imageCheckBox321");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle1);
    obj.layout47:setLeft(37);
    obj.layout47:setTop(999);
    obj.layout47:setWidth(285);
    obj.layout47:setHeight(122);
    obj.layout47:setName("layout47");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout47);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(285);
    obj.textEditor1:setHeight(122);
    obj.textEditor1:setField("ant1");
    obj.textEditor1:setName("textEditor1");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle1);
    obj.layout48:setLeft(37);
    obj.layout48:setTop(1149);
    obj.layout48:setWidth(285);
    obj.layout48:setHeight(122);
    obj.layout48:setName("layout48");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout48);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setFontColor("#ffffff");
    obj.textEditor2:setWidth(285);
    obj.textEditor2:setHeight(122);
    obj.textEditor2:setField("especializacao");
    obj.textEditor2:setName("textEditor2");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle1);
    obj.layout49:setLeft(336);
    obj.layout49:setTop(1065);
    obj.layout49:setWidth(300);
    obj.layout49:setHeight(50);
    obj.layout49:setName("layout49");

    obj.imageCheckBox322 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox322:setParent(obj.layout49);
    obj.imageCheckBox322:setField("coragem_1");
    obj.imageCheckBox322:setLeft(10);
    obj.imageCheckBox322:setTop(4);
    obj.imageCheckBox322:setWidth(21);
    obj.imageCheckBox322:setHeight(21);
    obj.imageCheckBox322:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox322:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox322:setName("imageCheckBox322");

    obj.imageCheckBox323 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox323:setParent(obj.layout49);
    obj.imageCheckBox323:setField("coragem_2");
    obj.imageCheckBox323:setLeft(32);
    obj.imageCheckBox323:setTop(4);
    obj.imageCheckBox323:setWidth(21);
    obj.imageCheckBox323:setHeight(21);
    obj.imageCheckBox323:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox323:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox323:setName("imageCheckBox323");

    obj.imageCheckBox324 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox324:setParent(obj.layout49);
    obj.imageCheckBox324:setField("coragem_3");
    obj.imageCheckBox324:setLeft(54);
    obj.imageCheckBox324:setTop(4);
    obj.imageCheckBox324:setWidth(21);
    obj.imageCheckBox324:setHeight(21);
    obj.imageCheckBox324:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox324:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox324:setName("imageCheckBox324");

    obj.imageCheckBox325 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox325:setParent(obj.layout49);
    obj.imageCheckBox325:setField("coragem_4");
    obj.imageCheckBox325:setLeft(76);
    obj.imageCheckBox325:setTop(4);
    obj.imageCheckBox325:setWidth(21);
    obj.imageCheckBox325:setHeight(21);
    obj.imageCheckBox325:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox325:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox325:setName("imageCheckBox325");

    obj.imageCheckBox326 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox326:setParent(obj.layout49);
    obj.imageCheckBox326:setField("coragem_5");
    obj.imageCheckBox326:setLeft(98);
    obj.imageCheckBox326:setTop(4);
    obj.imageCheckBox326:setWidth(21);
    obj.imageCheckBox326:setHeight(21);
    obj.imageCheckBox326:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox326:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox326:setName("imageCheckBox326");

    obj.imageCheckBox327 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox327:setParent(obj.layout49);
    obj.imageCheckBox327:setField("coragem_6");
    obj.imageCheckBox327:setLeft(120);
    obj.imageCheckBox327:setTop(4);
    obj.imageCheckBox327:setWidth(21);
    obj.imageCheckBox327:setHeight(21);
    obj.imageCheckBox327:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox327:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox327:setName("imageCheckBox327");

    obj.imageCheckBox328 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox328:setParent(obj.layout49);
    obj.imageCheckBox328:setField("coragem_7");
    obj.imageCheckBox328:setLeft(142);
    obj.imageCheckBox328:setTop(4);
    obj.imageCheckBox328:setWidth(21);
    obj.imageCheckBox328:setHeight(21);
    obj.imageCheckBox328:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox328:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox328:setName("imageCheckBox328");

    obj.imageCheckBox329 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox329:setParent(obj.layout49);
    obj.imageCheckBox329:setField("coragem_8");
    obj.imageCheckBox329:setLeft(164);
    obj.imageCheckBox329:setTop(4);
    obj.imageCheckBox329:setWidth(21);
    obj.imageCheckBox329:setHeight(21);
    obj.imageCheckBox329:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox329:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox329:setName("imageCheckBox329");

    obj.imageCheckBox330 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox330:setParent(obj.layout49);
    obj.imageCheckBox330:setField("coragem_9");
    obj.imageCheckBox330:setLeft(186);
    obj.imageCheckBox330:setTop(4);
    obj.imageCheckBox330:setWidth(21);
    obj.imageCheckBox330:setHeight(21);
    obj.imageCheckBox330:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox330:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox330:setName("imageCheckBox330");

    obj.imageCheckBox331 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox331:setParent(obj.layout49);
    obj.imageCheckBox331:setField("coragem_10");
    obj.imageCheckBox331:setLeft(208);
    obj.imageCheckBox331:setTop(4);
    obj.imageCheckBox331:setWidth(21);
    obj.imageCheckBox331:setHeight(21);
    obj.imageCheckBox331:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox331:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox331:setName("imageCheckBox331");

    obj.imageCheckBox332 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox332:setParent(obj.layout49);
    obj.imageCheckBox332:setField("coragem_11");
    obj.imageCheckBox332:setLeft(230);
    obj.imageCheckBox332:setTop(4);
    obj.imageCheckBox332:setWidth(21);
    obj.imageCheckBox332:setHeight(21);
    obj.imageCheckBox332:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox332:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox332:setName("imageCheckBox332");

    obj.imageCheckBox333 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox333:setParent(obj.layout49);
    obj.imageCheckBox333:setField("coragem_12");
    obj.imageCheckBox333:setLeft(252);
    obj.imageCheckBox333:setTop(4);
    obj.imageCheckBox333:setWidth(21);
    obj.imageCheckBox333:setHeight(21);
    obj.imageCheckBox333:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox333:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox333:setName("imageCheckBox333");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle1);
    obj.layout50:setLeft(336);
    obj.layout50:setTop(1143);
    obj.layout50:setWidth(300);
    obj.layout50:setHeight(50);
    obj.layout50:setName("layout50");

    obj.imageCheckBox334 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox334:setParent(obj.layout50);
    obj.imageCheckBox334:setField("conviccao_1");
    obj.imageCheckBox334:setLeft(10);
    obj.imageCheckBox334:setTop(4);
    obj.imageCheckBox334:setWidth(21);
    obj.imageCheckBox334:setHeight(21);
    obj.imageCheckBox334:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox334:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox334:setName("imageCheckBox334");

    obj.imageCheckBox335 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox335:setParent(obj.layout50);
    obj.imageCheckBox335:setField("conviccao_2");
    obj.imageCheckBox335:setLeft(32);
    obj.imageCheckBox335:setTop(4);
    obj.imageCheckBox335:setWidth(21);
    obj.imageCheckBox335:setHeight(21);
    obj.imageCheckBox335:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox335:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox335:setName("imageCheckBox335");

    obj.imageCheckBox336 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox336:setParent(obj.layout50);
    obj.imageCheckBox336:setField("conviccao_3");
    obj.imageCheckBox336:setLeft(54);
    obj.imageCheckBox336:setTop(4);
    obj.imageCheckBox336:setWidth(21);
    obj.imageCheckBox336:setHeight(21);
    obj.imageCheckBox336:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox336:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox336:setName("imageCheckBox336");

    obj.imageCheckBox337 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox337:setParent(obj.layout50);
    obj.imageCheckBox337:setField("conviccao_4");
    obj.imageCheckBox337:setLeft(76);
    obj.imageCheckBox337:setTop(4);
    obj.imageCheckBox337:setWidth(21);
    obj.imageCheckBox337:setHeight(21);
    obj.imageCheckBox337:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox337:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox337:setName("imageCheckBox337");

    obj.imageCheckBox338 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox338:setParent(obj.layout50);
    obj.imageCheckBox338:setField("conviccao_5");
    obj.imageCheckBox338:setLeft(98);
    obj.imageCheckBox338:setTop(4);
    obj.imageCheckBox338:setWidth(21);
    obj.imageCheckBox338:setHeight(21);
    obj.imageCheckBox338:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox338:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox338:setName("imageCheckBox338");

    obj.imageCheckBox339 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox339:setParent(obj.layout50);
    obj.imageCheckBox339:setField("conviccao_6");
    obj.imageCheckBox339:setLeft(120);
    obj.imageCheckBox339:setTop(4);
    obj.imageCheckBox339:setWidth(21);
    obj.imageCheckBox339:setHeight(21);
    obj.imageCheckBox339:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox339:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox339:setName("imageCheckBox339");

    obj.imageCheckBox340 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox340:setParent(obj.layout50);
    obj.imageCheckBox340:setField("conviccao_7");
    obj.imageCheckBox340:setLeft(142);
    obj.imageCheckBox340:setTop(4);
    obj.imageCheckBox340:setWidth(21);
    obj.imageCheckBox340:setHeight(21);
    obj.imageCheckBox340:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox340:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox340:setName("imageCheckBox340");

    obj.imageCheckBox341 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox341:setParent(obj.layout50);
    obj.imageCheckBox341:setField("conviccao_8");
    obj.imageCheckBox341:setLeft(164);
    obj.imageCheckBox341:setTop(4);
    obj.imageCheckBox341:setWidth(21);
    obj.imageCheckBox341:setHeight(21);
    obj.imageCheckBox341:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox341:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox341:setName("imageCheckBox341");

    obj.imageCheckBox342 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox342:setParent(obj.layout50);
    obj.imageCheckBox342:setField("conviccao_9");
    obj.imageCheckBox342:setLeft(186);
    obj.imageCheckBox342:setTop(4);
    obj.imageCheckBox342:setWidth(21);
    obj.imageCheckBox342:setHeight(21);
    obj.imageCheckBox342:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox342:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox342:setName("imageCheckBox342");

    obj.imageCheckBox343 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox343:setParent(obj.layout50);
    obj.imageCheckBox343:setField("conviccao_10");
    obj.imageCheckBox343:setLeft(208);
    obj.imageCheckBox343:setTop(4);
    obj.imageCheckBox343:setWidth(21);
    obj.imageCheckBox343:setHeight(21);
    obj.imageCheckBox343:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox343:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox343:setName("imageCheckBox343");

    obj.imageCheckBox344 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox344:setParent(obj.layout50);
    obj.imageCheckBox344:setField("conviccao_11");
    obj.imageCheckBox344:setLeft(230);
    obj.imageCheckBox344:setTop(4);
    obj.imageCheckBox344:setWidth(21);
    obj.imageCheckBox344:setHeight(21);
    obj.imageCheckBox344:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox344:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox344:setName("imageCheckBox344");

    obj.imageCheckBox345 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox345:setParent(obj.layout50);
    obj.imageCheckBox345:setField("conviccao_12");
    obj.imageCheckBox345:setLeft(252);
    obj.imageCheckBox345:setTop(4);
    obj.imageCheckBox345:setWidth(21);
    obj.imageCheckBox345:setHeight(21);
    obj.imageCheckBox345:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox345:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox345:setName("imageCheckBox345");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle1);
    obj.layout51:setLeft(336);
    obj.layout51:setTop(1221);
    obj.layout51:setWidth(300);
    obj.layout51:setHeight(50);
    obj.layout51:setName("layout51");

    obj.imageCheckBox346 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox346:setParent(obj.layout51);
    obj.imageCheckBox346:setField("forcaDeVontade_1");
    obj.imageCheckBox346:setLeft(10);
    obj.imageCheckBox346:setTop(4);
    obj.imageCheckBox346:setWidth(21);
    obj.imageCheckBox346:setHeight(21);
    obj.imageCheckBox346:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox346:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox346:setName("imageCheckBox346");

    obj.imageCheckBox347 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox347:setParent(obj.layout51);
    obj.imageCheckBox347:setField("forcaDeVontade_2");
    obj.imageCheckBox347:setLeft(32);
    obj.imageCheckBox347:setTop(4);
    obj.imageCheckBox347:setWidth(21);
    obj.imageCheckBox347:setHeight(21);
    obj.imageCheckBox347:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox347:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox347:setName("imageCheckBox347");

    obj.imageCheckBox348 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox348:setParent(obj.layout51);
    obj.imageCheckBox348:setField("forcaDeVontade_3");
    obj.imageCheckBox348:setLeft(54);
    obj.imageCheckBox348:setTop(4);
    obj.imageCheckBox348:setWidth(21);
    obj.imageCheckBox348:setHeight(21);
    obj.imageCheckBox348:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox348:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox348:setName("imageCheckBox348");

    obj.imageCheckBox349 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox349:setParent(obj.layout51);
    obj.imageCheckBox349:setField("forcaDeVontade_4");
    obj.imageCheckBox349:setLeft(76);
    obj.imageCheckBox349:setTop(4);
    obj.imageCheckBox349:setWidth(21);
    obj.imageCheckBox349:setHeight(21);
    obj.imageCheckBox349:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox349:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox349:setName("imageCheckBox349");

    obj.imageCheckBox350 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox350:setParent(obj.layout51);
    obj.imageCheckBox350:setField("forcaDeVontade_5");
    obj.imageCheckBox350:setLeft(98);
    obj.imageCheckBox350:setTop(4);
    obj.imageCheckBox350:setWidth(21);
    obj.imageCheckBox350:setHeight(21);
    obj.imageCheckBox350:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox350:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox350:setName("imageCheckBox350");

    obj.imageCheckBox351 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox351:setParent(obj.layout51);
    obj.imageCheckBox351:setField("forcaDeVontade_6");
    obj.imageCheckBox351:setLeft(120);
    obj.imageCheckBox351:setTop(4);
    obj.imageCheckBox351:setWidth(21);
    obj.imageCheckBox351:setHeight(21);
    obj.imageCheckBox351:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox351:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox351:setName("imageCheckBox351");

    obj.imageCheckBox352 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox352:setParent(obj.layout51);
    obj.imageCheckBox352:setField("forcaDeVontade_7");
    obj.imageCheckBox352:setLeft(142);
    obj.imageCheckBox352:setTop(4);
    obj.imageCheckBox352:setWidth(21);
    obj.imageCheckBox352:setHeight(21);
    obj.imageCheckBox352:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox352:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox352:setName("imageCheckBox352");

    obj.imageCheckBox353 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox353:setParent(obj.layout51);
    obj.imageCheckBox353:setField("forcaDeVontade_8");
    obj.imageCheckBox353:setLeft(164);
    obj.imageCheckBox353:setTop(4);
    obj.imageCheckBox353:setWidth(21);
    obj.imageCheckBox353:setHeight(21);
    obj.imageCheckBox353:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox353:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox353:setName("imageCheckBox353");

    obj.imageCheckBox354 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox354:setParent(obj.layout51);
    obj.imageCheckBox354:setField("forcaDeVontade_9");
    obj.imageCheckBox354:setLeft(186);
    obj.imageCheckBox354:setTop(4);
    obj.imageCheckBox354:setWidth(21);
    obj.imageCheckBox354:setHeight(21);
    obj.imageCheckBox354:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox354:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox354:setName("imageCheckBox354");

    obj.imageCheckBox355 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox355:setParent(obj.layout51);
    obj.imageCheckBox355:setField("forcaDeVontade_10");
    obj.imageCheckBox355:setLeft(208);
    obj.imageCheckBox355:setTop(4);
    obj.imageCheckBox355:setWidth(21);
    obj.imageCheckBox355:setHeight(21);
    obj.imageCheckBox355:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox355:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox355:setName("imageCheckBox355");

    obj.imageCheckBox356 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox356:setParent(obj.layout51);
    obj.imageCheckBox356:setField("forcaDeVontade_11");
    obj.imageCheckBox356:setLeft(230);
    obj.imageCheckBox356:setTop(4);
    obj.imageCheckBox356:setWidth(21);
    obj.imageCheckBox356:setHeight(21);
    obj.imageCheckBox356:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox356:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox356:setName("imageCheckBox356");

    obj.imageCheckBox357 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox357:setParent(obj.layout51);
    obj.imageCheckBox357:setField("forcaDeVontade_12");
    obj.imageCheckBox357:setLeft(252);
    obj.imageCheckBox357:setTop(4);
    obj.imageCheckBox357:setWidth(21);
    obj.imageCheckBox357:setHeight(21);
    obj.imageCheckBox357:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox357:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox357:setName("imageCheckBox357");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle1);
    obj.layout52:setLeft(635);
    obj.layout52:setTop(1065);
    obj.layout52:setWidth(300);
    obj.layout52:setHeight(50);
    obj.layout52:setName("layout52");

    obj.imageCheckBox358 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox358:setParent(obj.layout52);
    obj.imageCheckBox358:setField("reconhecimento_1");
    obj.imageCheckBox358:setLeft(10);
    obj.imageCheckBox358:setTop(4);
    obj.imageCheckBox358:setWidth(21);
    obj.imageCheckBox358:setHeight(21);
    obj.imageCheckBox358:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox358:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox358:setName("imageCheckBox358");

    obj.imageCheckBox359 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox359:setParent(obj.layout52);
    obj.imageCheckBox359:setField("reconhecimento_2");
    obj.imageCheckBox359:setLeft(32);
    obj.imageCheckBox359:setTop(4);
    obj.imageCheckBox359:setWidth(21);
    obj.imageCheckBox359:setHeight(21);
    obj.imageCheckBox359:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox359:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox359:setName("imageCheckBox359");

    obj.imageCheckBox360 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox360:setParent(obj.layout52);
    obj.imageCheckBox360:setField("reconhecimento_3");
    obj.imageCheckBox360:setLeft(54);
    obj.imageCheckBox360:setTop(4);
    obj.imageCheckBox360:setWidth(21);
    obj.imageCheckBox360:setHeight(21);
    obj.imageCheckBox360:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox360:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox360:setName("imageCheckBox360");

    obj.imageCheckBox361 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox361:setParent(obj.layout52);
    obj.imageCheckBox361:setField("reconhecimento_4");
    obj.imageCheckBox361:setLeft(76);
    obj.imageCheckBox361:setTop(4);
    obj.imageCheckBox361:setWidth(21);
    obj.imageCheckBox361:setHeight(21);
    obj.imageCheckBox361:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox361:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox361:setName("imageCheckBox361");

    obj.imageCheckBox362 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox362:setParent(obj.layout52);
    obj.imageCheckBox362:setField("reconhecimento_5");
    obj.imageCheckBox362:setLeft(98);
    obj.imageCheckBox362:setTop(4);
    obj.imageCheckBox362:setWidth(21);
    obj.imageCheckBox362:setHeight(21);
    obj.imageCheckBox362:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox362:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox362:setName("imageCheckBox362");

    obj.imageCheckBox363 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox363:setParent(obj.layout52);
    obj.imageCheckBox363:setField("reconhecimento_6");
    obj.imageCheckBox363:setLeft(120);
    obj.imageCheckBox363:setTop(4);
    obj.imageCheckBox363:setWidth(21);
    obj.imageCheckBox363:setHeight(21);
    obj.imageCheckBox363:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox363:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox363:setName("imageCheckBox363");

    obj.imageCheckBox364 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox364:setParent(obj.layout52);
    obj.imageCheckBox364:setField("reconhecimento_7");
    obj.imageCheckBox364:setLeft(142);
    obj.imageCheckBox364:setTop(4);
    obj.imageCheckBox364:setWidth(21);
    obj.imageCheckBox364:setHeight(21);
    obj.imageCheckBox364:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox364:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox364:setName("imageCheckBox364");

    obj.imageCheckBox365 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox365:setParent(obj.layout52);
    obj.imageCheckBox365:setField("reconhecimento_8");
    obj.imageCheckBox365:setLeft(164);
    obj.imageCheckBox365:setTop(4);
    obj.imageCheckBox365:setWidth(21);
    obj.imageCheckBox365:setHeight(21);
    obj.imageCheckBox365:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox365:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox365:setName("imageCheckBox365");

    obj.imageCheckBox366 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox366:setParent(obj.layout52);
    obj.imageCheckBox366:setField("reconhecimento_9");
    obj.imageCheckBox366:setLeft(186);
    obj.imageCheckBox366:setTop(4);
    obj.imageCheckBox366:setWidth(21);
    obj.imageCheckBox366:setHeight(21);
    obj.imageCheckBox366:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox366:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox366:setName("imageCheckBox366");

    obj.imageCheckBox367 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox367:setParent(obj.layout52);
    obj.imageCheckBox367:setField("reconhecimento_10");
    obj.imageCheckBox367:setLeft(208);
    obj.imageCheckBox367:setTop(4);
    obj.imageCheckBox367:setWidth(21);
    obj.imageCheckBox367:setHeight(21);
    obj.imageCheckBox367:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox367:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox367:setName("imageCheckBox367");

    obj.imageCheckBox368 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox368:setParent(obj.layout52);
    obj.imageCheckBox368:setField("reconhecimento_11");
    obj.imageCheckBox368:setLeft(230);
    obj.imageCheckBox368:setTop(4);
    obj.imageCheckBox368:setWidth(21);
    obj.imageCheckBox368:setHeight(21);
    obj.imageCheckBox368:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox368:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox368:setName("imageCheckBox368");

    obj.imageCheckBox369 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox369:setParent(obj.layout52);
    obj.imageCheckBox369:setField("reconhecimento_12");
    obj.imageCheckBox369:setLeft(252);
    obj.imageCheckBox369:setTop(4);
    obj.imageCheckBox369:setWidth(21);
    obj.imageCheckBox369:setHeight(21);
    obj.imageCheckBox369:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox369:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox369:setName("imageCheckBox369");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle1);
    obj.layout53:setLeft(635);
    obj.layout53:setTop(1133);
    obj.layout53:setWidth(300);
    obj.layout53:setHeight(50);
    obj.layout53:setName("layout53");

    obj.imageCheckBox370 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox370:setParent(obj.layout53);
    obj.imageCheckBox370:setField("famaBoa_1");
    obj.imageCheckBox370:setLeft(10);
    obj.imageCheckBox370:setTop(4);
    obj.imageCheckBox370:setWidth(21);
    obj.imageCheckBox370:setHeight(21);
    obj.imageCheckBox370:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox370:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox370:setName("imageCheckBox370");

    obj.imageCheckBox371 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox371:setParent(obj.layout53);
    obj.imageCheckBox371:setField("famaBoa_2");
    obj.imageCheckBox371:setLeft(32);
    obj.imageCheckBox371:setTop(4);
    obj.imageCheckBox371:setWidth(21);
    obj.imageCheckBox371:setHeight(21);
    obj.imageCheckBox371:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox371:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox371:setName("imageCheckBox371");

    obj.imageCheckBox372 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox372:setParent(obj.layout53);
    obj.imageCheckBox372:setField("famaBoa_3");
    obj.imageCheckBox372:setLeft(54);
    obj.imageCheckBox372:setTop(4);
    obj.imageCheckBox372:setWidth(21);
    obj.imageCheckBox372:setHeight(21);
    obj.imageCheckBox372:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox372:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox372:setName("imageCheckBox372");

    obj.imageCheckBox373 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox373:setParent(obj.layout53);
    obj.imageCheckBox373:setField("famaBoa_4");
    obj.imageCheckBox373:setLeft(76);
    obj.imageCheckBox373:setTop(4);
    obj.imageCheckBox373:setWidth(21);
    obj.imageCheckBox373:setHeight(21);
    obj.imageCheckBox373:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox373:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox373:setName("imageCheckBox373");

    obj.imageCheckBox374 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox374:setParent(obj.layout53);
    obj.imageCheckBox374:setField("famaBoa_5");
    obj.imageCheckBox374:setLeft(98);
    obj.imageCheckBox374:setTop(4);
    obj.imageCheckBox374:setWidth(21);
    obj.imageCheckBox374:setHeight(21);
    obj.imageCheckBox374:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox374:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox374:setName("imageCheckBox374");

    obj.imageCheckBox375 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox375:setParent(obj.layout53);
    obj.imageCheckBox375:setField("famaBoa_6");
    obj.imageCheckBox375:setLeft(120);
    obj.imageCheckBox375:setTop(4);
    obj.imageCheckBox375:setWidth(21);
    obj.imageCheckBox375:setHeight(21);
    obj.imageCheckBox375:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox375:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox375:setName("imageCheckBox375");

    obj.imageCheckBox376 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox376:setParent(obj.layout53);
    obj.imageCheckBox376:setField("famaBoa_7");
    obj.imageCheckBox376:setLeft(142);
    obj.imageCheckBox376:setTop(4);
    obj.imageCheckBox376:setWidth(21);
    obj.imageCheckBox376:setHeight(21);
    obj.imageCheckBox376:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox376:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox376:setName("imageCheckBox376");

    obj.imageCheckBox377 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox377:setParent(obj.layout53);
    obj.imageCheckBox377:setField("famaBoa_8");
    obj.imageCheckBox377:setLeft(164);
    obj.imageCheckBox377:setTop(4);
    obj.imageCheckBox377:setWidth(21);
    obj.imageCheckBox377:setHeight(21);
    obj.imageCheckBox377:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox377:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox377:setName("imageCheckBox377");

    obj.imageCheckBox378 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox378:setParent(obj.layout53);
    obj.imageCheckBox378:setField("famaBoa_9");
    obj.imageCheckBox378:setLeft(186);
    obj.imageCheckBox378:setTop(4);
    obj.imageCheckBox378:setWidth(21);
    obj.imageCheckBox378:setHeight(21);
    obj.imageCheckBox378:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox378:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox378:setName("imageCheckBox378");

    obj.imageCheckBox379 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox379:setParent(obj.layout53);
    obj.imageCheckBox379:setField("famaBoa_10");
    obj.imageCheckBox379:setLeft(208);
    obj.imageCheckBox379:setTop(4);
    obj.imageCheckBox379:setWidth(21);
    obj.imageCheckBox379:setHeight(21);
    obj.imageCheckBox379:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox379:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox379:setName("imageCheckBox379");

    obj.imageCheckBox380 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox380:setParent(obj.layout53);
    obj.imageCheckBox380:setField("famaBoa_11");
    obj.imageCheckBox380:setLeft(230);
    obj.imageCheckBox380:setTop(4);
    obj.imageCheckBox380:setWidth(21);
    obj.imageCheckBox380:setHeight(21);
    obj.imageCheckBox380:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox380:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox380:setName("imageCheckBox380");

    obj.imageCheckBox381 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox381:setParent(obj.layout53);
    obj.imageCheckBox381:setField("famaBoa_12");
    obj.imageCheckBox381:setLeft(252);
    obj.imageCheckBox381:setTop(4);
    obj.imageCheckBox381:setWidth(21);
    obj.imageCheckBox381:setHeight(21);
    obj.imageCheckBox381:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox381:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox381:setName("imageCheckBox381");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle1);
    obj.layout54:setLeft(635);
    obj.layout54:setTop(1158);
    obj.layout54:setWidth(300);
    obj.layout54:setHeight(50);
    obj.layout54:setName("layout54");

    obj.imageCheckBox382 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox382:setParent(obj.layout54);
    obj.imageCheckBox382:setField("famaRuim_1");
    obj.imageCheckBox382:setLeft(10);
    obj.imageCheckBox382:setTop(4);
    obj.imageCheckBox382:setWidth(21);
    obj.imageCheckBox382:setHeight(21);
    obj.imageCheckBox382:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox382:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox382:setName("imageCheckBox382");

    obj.imageCheckBox383 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox383:setParent(obj.layout54);
    obj.imageCheckBox383:setField("famaRuim_2");
    obj.imageCheckBox383:setLeft(32);
    obj.imageCheckBox383:setTop(4);
    obj.imageCheckBox383:setWidth(21);
    obj.imageCheckBox383:setHeight(21);
    obj.imageCheckBox383:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox383:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox383:setName("imageCheckBox383");

    obj.imageCheckBox384 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox384:setParent(obj.layout54);
    obj.imageCheckBox384:setField("famaRuim_3");
    obj.imageCheckBox384:setLeft(54);
    obj.imageCheckBox384:setTop(4);
    obj.imageCheckBox384:setWidth(21);
    obj.imageCheckBox384:setHeight(21);
    obj.imageCheckBox384:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox384:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox384:setName("imageCheckBox384");

    obj.imageCheckBox385 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox385:setParent(obj.layout54);
    obj.imageCheckBox385:setField("famaRuim_4");
    obj.imageCheckBox385:setLeft(76);
    obj.imageCheckBox385:setTop(4);
    obj.imageCheckBox385:setWidth(21);
    obj.imageCheckBox385:setHeight(21);
    obj.imageCheckBox385:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox385:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox385:setName("imageCheckBox385");

    obj.imageCheckBox386 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox386:setParent(obj.layout54);
    obj.imageCheckBox386:setField("famaRuim_5");
    obj.imageCheckBox386:setLeft(98);
    obj.imageCheckBox386:setTop(4);
    obj.imageCheckBox386:setWidth(21);
    obj.imageCheckBox386:setHeight(21);
    obj.imageCheckBox386:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox386:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox386:setName("imageCheckBox386");

    obj.imageCheckBox387 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox387:setParent(obj.layout54);
    obj.imageCheckBox387:setField("famaRuim_6");
    obj.imageCheckBox387:setLeft(120);
    obj.imageCheckBox387:setTop(4);
    obj.imageCheckBox387:setWidth(21);
    obj.imageCheckBox387:setHeight(21);
    obj.imageCheckBox387:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox387:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox387:setName("imageCheckBox387");

    obj.imageCheckBox388 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox388:setParent(obj.layout54);
    obj.imageCheckBox388:setField("famaRuim_7");
    obj.imageCheckBox388:setLeft(142);
    obj.imageCheckBox388:setTop(4);
    obj.imageCheckBox388:setWidth(21);
    obj.imageCheckBox388:setHeight(21);
    obj.imageCheckBox388:setImageChecked("PokeRPGT/images/rocketgreat_on.png");
    obj.imageCheckBox388:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox388:setName("imageCheckBox388");

    obj.imageCheckBox389 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox389:setParent(obj.layout54);
    obj.imageCheckBox389:setField("famaRuim_8");
    obj.imageCheckBox389:setLeft(164);
    obj.imageCheckBox389:setTop(4);
    obj.imageCheckBox389:setWidth(21);
    obj.imageCheckBox389:setHeight(21);
    obj.imageCheckBox389:setImageChecked("PokeRPGT/images/rocketgreat_on.png");
    obj.imageCheckBox389:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox389:setName("imageCheckBox389");

    obj.imageCheckBox390 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox390:setParent(obj.layout54);
    obj.imageCheckBox390:setField("famaRuim_9");
    obj.imageCheckBox390:setLeft(186);
    obj.imageCheckBox390:setTop(4);
    obj.imageCheckBox390:setWidth(21);
    obj.imageCheckBox390:setHeight(21);
    obj.imageCheckBox390:setImageChecked("PokeRPGT/images/rocketgreat_on.png");
    obj.imageCheckBox390:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox390:setName("imageCheckBox390");

    obj.imageCheckBox391 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox391:setParent(obj.layout54);
    obj.imageCheckBox391:setField("famaRuim_10");
    obj.imageCheckBox391:setLeft(208);
    obj.imageCheckBox391:setTop(4);
    obj.imageCheckBox391:setWidth(21);
    obj.imageCheckBox391:setHeight(21);
    obj.imageCheckBox391:setImageChecked("PokeRPGT/images/rocketultra_on.png");
    obj.imageCheckBox391:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox391:setName("imageCheckBox391");

    obj.imageCheckBox392 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox392:setParent(obj.layout54);
    obj.imageCheckBox392:setField("famaRuim_11");
    obj.imageCheckBox392:setLeft(230);
    obj.imageCheckBox392:setTop(4);
    obj.imageCheckBox392:setWidth(21);
    obj.imageCheckBox392:setHeight(21);
    obj.imageCheckBox392:setImageChecked("PokeRPGT/images/rocketultra_on.png");
    obj.imageCheckBox392:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox392:setName("imageCheckBox392");

    obj.imageCheckBox393 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox393:setParent(obj.layout54);
    obj.imageCheckBox393:setField("famaRuim_12");
    obj.imageCheckBox393:setLeft(252);
    obj.imageCheckBox393:setTop(4);
    obj.imageCheckBox393:setWidth(21);
    obj.imageCheckBox393:setHeight(21);
    obj.imageCheckBox393:setImageChecked("PokeRPGT/images/rocketmaster_on.png");
    obj.imageCheckBox393:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox393:setName("imageCheckBox393");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle1);
    obj.layout55:setLeft(635);
    obj.layout55:setTop(1213);
    obj.layout55:setWidth(300);
    obj.layout55:setHeight(50);
    obj.layout55:setName("layout55");

    obj.imageCheckBox394 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox394:setParent(obj.layout55);
    obj.imageCheckBox394:setField("influenciaBoa_1");
    obj.imageCheckBox394:setLeft(10);
    obj.imageCheckBox394:setTop(4);
    obj.imageCheckBox394:setWidth(21);
    obj.imageCheckBox394:setHeight(21);
    obj.imageCheckBox394:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox394:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox394:setName("imageCheckBox394");

    obj.imageCheckBox395 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox395:setParent(obj.layout55);
    obj.imageCheckBox395:setField("influenciaBoa_2");
    obj.imageCheckBox395:setLeft(32);
    obj.imageCheckBox395:setTop(4);
    obj.imageCheckBox395:setWidth(21);
    obj.imageCheckBox395:setHeight(21);
    obj.imageCheckBox395:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox395:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox395:setName("imageCheckBox395");

    obj.imageCheckBox396 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox396:setParent(obj.layout55);
    obj.imageCheckBox396:setField("influenciaBoa_3");
    obj.imageCheckBox396:setLeft(54);
    obj.imageCheckBox396:setTop(4);
    obj.imageCheckBox396:setWidth(21);
    obj.imageCheckBox396:setHeight(21);
    obj.imageCheckBox396:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox396:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox396:setName("imageCheckBox396");

    obj.imageCheckBox397 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox397:setParent(obj.layout55);
    obj.imageCheckBox397:setField("influenciaBoa_4");
    obj.imageCheckBox397:setLeft(76);
    obj.imageCheckBox397:setTop(4);
    obj.imageCheckBox397:setWidth(21);
    obj.imageCheckBox397:setHeight(21);
    obj.imageCheckBox397:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox397:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox397:setName("imageCheckBox397");

    obj.imageCheckBox398 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox398:setParent(obj.layout55);
    obj.imageCheckBox398:setField("influenciaBoa_5");
    obj.imageCheckBox398:setLeft(98);
    obj.imageCheckBox398:setTop(4);
    obj.imageCheckBox398:setWidth(21);
    obj.imageCheckBox398:setHeight(21);
    obj.imageCheckBox398:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox398:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox398:setName("imageCheckBox398");

    obj.imageCheckBox399 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox399:setParent(obj.layout55);
    obj.imageCheckBox399:setField("influenciaBoa_6");
    obj.imageCheckBox399:setLeft(120);
    obj.imageCheckBox399:setTop(4);
    obj.imageCheckBox399:setWidth(21);
    obj.imageCheckBox399:setHeight(21);
    obj.imageCheckBox399:setImageChecked("PokeRPGT/images/pokeball_on.png");
    obj.imageCheckBox399:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox399:setName("imageCheckBox399");

    obj.imageCheckBox400 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox400:setParent(obj.layout55);
    obj.imageCheckBox400:setField("influenciaBoa_7");
    obj.imageCheckBox400:setLeft(142);
    obj.imageCheckBox400:setTop(4);
    obj.imageCheckBox400:setWidth(21);
    obj.imageCheckBox400:setHeight(21);
    obj.imageCheckBox400:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox400:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox400:setName("imageCheckBox400");

    obj.imageCheckBox401 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox401:setParent(obj.layout55);
    obj.imageCheckBox401:setField("influenciaBoa_8");
    obj.imageCheckBox401:setLeft(164);
    obj.imageCheckBox401:setTop(4);
    obj.imageCheckBox401:setWidth(21);
    obj.imageCheckBox401:setHeight(21);
    obj.imageCheckBox401:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox401:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox401:setName("imageCheckBox401");

    obj.imageCheckBox402 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox402:setParent(obj.layout55);
    obj.imageCheckBox402:setField("influenciaBoa_9");
    obj.imageCheckBox402:setLeft(186);
    obj.imageCheckBox402:setTop(4);
    obj.imageCheckBox402:setWidth(21);
    obj.imageCheckBox402:setHeight(21);
    obj.imageCheckBox402:setImageChecked("PokeRPGT/images/greatball_on.png");
    obj.imageCheckBox402:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox402:setName("imageCheckBox402");

    obj.imageCheckBox403 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox403:setParent(obj.layout55);
    obj.imageCheckBox403:setField("influenciaBoa_10");
    obj.imageCheckBox403:setLeft(208);
    obj.imageCheckBox403:setTop(4);
    obj.imageCheckBox403:setWidth(21);
    obj.imageCheckBox403:setHeight(21);
    obj.imageCheckBox403:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox403:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox403:setName("imageCheckBox403");

    obj.imageCheckBox404 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox404:setParent(obj.layout55);
    obj.imageCheckBox404:setField("influenciaBoa_11");
    obj.imageCheckBox404:setLeft(230);
    obj.imageCheckBox404:setTop(4);
    obj.imageCheckBox404:setWidth(21);
    obj.imageCheckBox404:setHeight(21);
    obj.imageCheckBox404:setImageChecked("PokeRPGT/images/ultraball_on.png");
    obj.imageCheckBox404:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox404:setName("imageCheckBox404");

    obj.imageCheckBox405 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox405:setParent(obj.layout55);
    obj.imageCheckBox405:setField("influenciaBoa_12");
    obj.imageCheckBox405:setLeft(252);
    obj.imageCheckBox405:setTop(4);
    obj.imageCheckBox405:setWidth(21);
    obj.imageCheckBox405:setHeight(21);
    obj.imageCheckBox405:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox405:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox405:setName("imageCheckBox405");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle1);
    obj.layout56:setLeft(635);
    obj.layout56:setTop(1238);
    obj.layout56:setWidth(300);
    obj.layout56:setHeight(50);
    obj.layout56:setName("layout56");

    obj.imageCheckBox406 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox406:setParent(obj.layout56);
    obj.imageCheckBox406:setField("influenciaRuim_1");
    obj.imageCheckBox406:setLeft(10);
    obj.imageCheckBox406:setTop(4);
    obj.imageCheckBox406:setWidth(21);
    obj.imageCheckBox406:setHeight(21);
    obj.imageCheckBox406:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox406:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox406:setName("imageCheckBox406");

    obj.imageCheckBox407 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox407:setParent(obj.layout56);
    obj.imageCheckBox407:setField("influenciaRuim_2");
    obj.imageCheckBox407:setLeft(32);
    obj.imageCheckBox407:setTop(4);
    obj.imageCheckBox407:setWidth(21);
    obj.imageCheckBox407:setHeight(21);
    obj.imageCheckBox407:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox407:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox407:setName("imageCheckBox407");

    obj.imageCheckBox408 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox408:setParent(obj.layout56);
    obj.imageCheckBox408:setField("influenciaRuim_3");
    obj.imageCheckBox408:setLeft(54);
    obj.imageCheckBox408:setTop(4);
    obj.imageCheckBox408:setWidth(21);
    obj.imageCheckBox408:setHeight(21);
    obj.imageCheckBox408:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox408:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox408:setName("imageCheckBox408");

    obj.imageCheckBox409 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox409:setParent(obj.layout56);
    obj.imageCheckBox409:setField("influenciaRuim_4");
    obj.imageCheckBox409:setLeft(76);
    obj.imageCheckBox409:setTop(4);
    obj.imageCheckBox409:setWidth(21);
    obj.imageCheckBox409:setHeight(21);
    obj.imageCheckBox409:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox409:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox409:setName("imageCheckBox409");

    obj.imageCheckBox410 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox410:setParent(obj.layout56);
    obj.imageCheckBox410:setField("influenciaRuim_5");
    obj.imageCheckBox410:setLeft(98);
    obj.imageCheckBox410:setTop(4);
    obj.imageCheckBox410:setWidth(21);
    obj.imageCheckBox410:setHeight(21);
    obj.imageCheckBox410:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox410:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox410:setName("imageCheckBox410");

    obj.imageCheckBox411 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox411:setParent(obj.layout56);
    obj.imageCheckBox411:setField("influenciaRuim_6");
    obj.imageCheckBox411:setLeft(120);
    obj.imageCheckBox411:setTop(4);
    obj.imageCheckBox411:setWidth(21);
    obj.imageCheckBox411:setHeight(21);
    obj.imageCheckBox411:setImageChecked("PokeRPGT/images/rocketball_on.png");
    obj.imageCheckBox411:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox411:setName("imageCheckBox411");

    obj.imageCheckBox412 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox412:setParent(obj.layout56);
    obj.imageCheckBox412:setField("influenciaRuim_7");
    obj.imageCheckBox412:setLeft(142);
    obj.imageCheckBox412:setTop(4);
    obj.imageCheckBox412:setWidth(21);
    obj.imageCheckBox412:setHeight(21);
    obj.imageCheckBox412:setImageChecked("PokeRPGT/images/rocketgreat_on.png");
    obj.imageCheckBox412:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox412:setName("imageCheckBox412");

    obj.imageCheckBox413 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox413:setParent(obj.layout56);
    obj.imageCheckBox413:setField("influenciaRuim_8");
    obj.imageCheckBox413:setLeft(164);
    obj.imageCheckBox413:setTop(4);
    obj.imageCheckBox413:setWidth(21);
    obj.imageCheckBox413:setHeight(21);
    obj.imageCheckBox413:setImageChecked("PokeRPGT/images/rocketgreat_on.png");
    obj.imageCheckBox413:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox413:setName("imageCheckBox413");

    obj.imageCheckBox414 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox414:setParent(obj.layout56);
    obj.imageCheckBox414:setField("influenciaRuim_9");
    obj.imageCheckBox414:setLeft(186);
    obj.imageCheckBox414:setTop(4);
    obj.imageCheckBox414:setWidth(21);
    obj.imageCheckBox414:setHeight(21);
    obj.imageCheckBox414:setImageChecked("PokeRPGT/images/rocketgreat_on.png");
    obj.imageCheckBox414:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox414:setName("imageCheckBox414");

    obj.imageCheckBox415 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox415:setParent(obj.layout56);
    obj.imageCheckBox415:setField("influenciaRuim_10");
    obj.imageCheckBox415:setLeft(208);
    obj.imageCheckBox415:setTop(4);
    obj.imageCheckBox415:setWidth(21);
    obj.imageCheckBox415:setHeight(21);
    obj.imageCheckBox415:setImageChecked("PokeRPGT/images/rocketultra_on.png");
    obj.imageCheckBox415:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox415:setName("imageCheckBox415");

    obj.imageCheckBox416 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox416:setParent(obj.layout56);
    obj.imageCheckBox416:setField("influenciaRuim_11");
    obj.imageCheckBox416:setLeft(230);
    obj.imageCheckBox416:setTop(4);
    obj.imageCheckBox416:setWidth(21);
    obj.imageCheckBox416:setHeight(21);
    obj.imageCheckBox416:setImageChecked("PokeRPGT/images/rocketultra_on.png");
    obj.imageCheckBox416:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox416:setName("imageCheckBox416");

    obj.imageCheckBox417 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox417:setParent(obj.layout56);
    obj.imageCheckBox417:setField("influenciaRuim_12");
    obj.imageCheckBox417:setLeft(252);
    obj.imageCheckBox417:setTop(4);
    obj.imageCheckBox417:setWidth(21);
    obj.imageCheckBox417:setHeight(21);
    obj.imageCheckBox417:setImageChecked("PokeRPGT/images/rocketmaster_on.png");
    obj.imageCheckBox417:setImageUnchecked("PokeRPGT/images/pokeball_off.png");
    obj.imageCheckBox417:setName("imageCheckBox417");

    obj.frmTeste = GUI.fromHandle(_obj_newObject("form"));
    obj.frmTeste:setParent(obj);
    obj.frmTeste:setName("frmTeste");
    obj.frmTeste:setHeight(0);
    obj.frmTeste:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmTeste);
    obj.dataLink1:setFields({'vitalidade_12', 'vitalidade_11', 'vitalidade_10', 'vitalidade_9', 'vitalidade_8', 'vitalidade_7', 'vitalidade_6', 'vitalidade_5', 'vitalidade_4', 'vitalidade_3', 'vitalidade_2', 'vitalidade_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmTeste);
    obj.dataLink2:setFields({'acoesDiarias_12', 'acoesDiarias_11', 'acoesDiarias_10', 'acoesDiarias_9', 'acoesDiarias_8', 'acoesDiarias_7', 'acoesDiarias_6', 'acoesDiarias_5', 'acoesDiarias_4', 'acoesDiarias_3', 'acoesDiarias_2', 'acoesDiarias_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmTeste);
    obj.dataLink3:setFields({'forca_9', 'forca_8', 'forca_7', 'forca_6', 'forca_5', 'forca_4', 'forca_3', 'forca_2', 'forca_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmTeste);
    obj.dataLink4:setFields({'percepcao_9', 'percepcao_8', 'percepcao_7', 'percepcao_6', 'percepcao_5', 'percepcao_4', 'percepcao_3', 'percepcao_2', 'percepcao_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmTeste);
    obj.dataLink5:setFields({'carisma_9', 'carisma_8', 'carisma_7', 'carisma_6', 'carisma_5', 'carisma_4', 'carisma_3', 'carisma_2', 'carisma_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmTeste);
    obj.dataLink6:setFields({'destreza_9', 'destreza_8', 'destreza_7', 'destreza_6', 'destreza_5', 'destreza_4', 'destreza_3', 'destreza_2', 'destreza_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmTeste);
    obj.dataLink7:setFields({'intimidacao_9', 'intimidacao_8', 'intimidacao_7', 'intimidacao_6', 'intimidacao_5', 'intimidacao_4', 'intimidacao_3', 'intimidacao_2', 'intimidacao_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmTeste);
    obj.dataLink8:setFields({'manipulacao_9', 'manipulacao_8', 'manipulacao_7', 'manipulacao_6', 'manipulacao_5', 'manipulacao_4', 'manipulacao_3', 'manipulacao_2', 'manipulacao_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmTeste);
    obj.dataLink9:setFields({'inteligencia_9', 'inteligencia_8', 'inteligencia_7', 'inteligencia_6', 'inteligencia_5', 'inteligencia_4', 'inteligencia_3', 'inteligencia_2', 'inteligencia_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmTeste);
    obj.dataLink10:setFields({'vigor_9', 'vigor_8', 'vigor_7', 'vigor_6', 'vigor_5', 'vigor_4', 'vigor_3', 'vigor_2', 'vigor_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmTeste);
    obj.dataLink11:setFields({'raciocinio_9', 'raciocinio_8', 'raciocinio_7', 'raciocinio_6', 'raciocinio_5', 'raciocinio_4', 'raciocinio_3', 'raciocinio_2', 'raciocinio_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmTeste);
    obj.dataLink12:setFields({'aparencia_9', 'aparencia_8', 'aparencia_7', 'aparencia_6', 'aparencia_5', 'aparencia_4', 'aparencia_3', 'aparencia_2', 'aparencia_1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmTeste);
    obj.dataLink13:setFields({'prontidao_9', 'prontidao_8', 'prontidao_7', 'prontidao_6', 'prontidao_5', 'prontidao_4', 'prontidao_3', 'prontidao_2', 'prontidao_1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmTeste);
    obj.dataLink14:setFields({'academicos_9', 'academicos_8', 'academicos_7', 'academicos_6', 'academicos_5', 'academicos_4', 'academicos_3', 'academicos_2', 'academicos_1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmTeste);
    obj.dataLink15:setFields({'empatiaPokemon_9', 'empatiaPokemon_8', 'empatiaPokemon_7', 'empatiaPokemon_6', 'empatiaPokemon_5', 'empatiaPokemon_4', 'empatiaPokemon_3', 'empatiaPokemon_2', 'empatiaPokemon_1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmTeste);
    obj.dataLink16:setFields({'esportes_9', 'esportes_8', 'esportes_7', 'esportes_6', 'esportes_5', 'esportes_4', 'esportes_3', 'esportes_2', 'esportes_1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmTeste);
    obj.dataLink17:setFields({'computador_9', 'computador_8', 'computador_7', 'computador_6', 'computador_5', 'computador_4', 'computador_3', 'computador_2', 'computador_1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmTeste);
    obj.dataLink18:setFields({'oficios_9', 'oficios_8', 'oficios_7', 'oficios_6', 'oficios_5', 'oficios_4', 'oficios_3', 'oficios_2', 'oficios_1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmTeste);
    obj.dataLink19:setFields({'briga_9', 'briga_8', 'briga_7', 'briga_6', 'briga_5', 'briga_4', 'briga_3', 'briga_2', 'briga_1'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmTeste);
    obj.dataLink20:setFields({'habitats_9', 'habitats_8', 'habitats_7', 'habitats_6', 'habitats_5', 'habitats_4', 'habitats_3', 'habitats_2', 'habitats_1'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmTeste);
    obj.dataLink21:setFields({'esquiva_9', 'esquiva_8', 'esquiva_7', 'esquiva_6', 'esquiva_5', 'esquiva_4', 'esquiva_3', 'esquiva_2', 'esquiva_1'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.frmTeste);
    obj.dataLink22:setFields({'investigacao_9', 'investigacao_8', 'investigacao_7', 'investigacao_6', 'investigacao_5', 'investigacao_4', 'investigacao_3', 'investigacao_2', 'investigacao_1'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.frmTeste);
    obj.dataLink23:setFields({'etiqueta_9', 'etiqueta_8', 'etiqueta_7', 'etiqueta_6', 'etiqueta_5', 'etiqueta_4', 'etiqueta_3', 'etiqueta_2', 'etiqueta_1'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.frmTeste);
    obj.dataLink24:setFields({'empatia_9', 'empatia_8', 'empatia_7', 'empatia_6', 'empatia_5', 'empatia_4', 'empatia_3', 'empatia_2', 'empatia_1'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.frmTeste);
    obj.dataLink25:setFields({'atuacao_9', 'atuacao_8', 'atuacao_7', 'atuacao_6', 'atuacao_5', 'atuacao_4', 'atuacao_3', 'atuacao_2', 'atuacao_1'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.frmTeste);
    obj.dataLink26:setFields({'direito_9', 'direito_8', 'direito_7', 'direito_6', 'direito_5', 'direito_4', 'direito_3', 'direito_2', 'direito_1'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.frmTeste);
    obj.dataLink27:setFields({'expressao_9', 'expressao_8', 'expressao_7', 'expressao_6', 'expressao_5', 'expressao_4', 'expressao_3', 'expressao_2', 'expressao_1'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.frmTeste);
    obj.dataLink28:setFields({'seguranca_9', 'seguranca_8', 'seguranca_7', 'seguranca_6', 'seguranca_5', 'seguranca_4', 'seguranca_3', 'seguranca_2', 'seguranca_1'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.frmTeste);
    obj.dataLink29:setFields({'intimidacao_9', 'intimidacao_8', 'intimidacao_7', 'intimidacao_6', 'intimidacao_5', 'intimidacao_4', 'intimidacao_3', 'intimidacao_2', 'intimidacao_1'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.frmTeste);
    obj.dataLink30:setFields({'medicina_9', 'medicina_8', 'medicina_7', 'medicina_6', 'medicina_5', 'medicina_4', 'medicina_3', 'medicina_2', 'medicina_1'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.frmTeste);
    obj.dataLink31:setFields({'furtividade_9', 'furtividade_8', 'furtividade_7', 'furtividade_6', 'furtividade_5', 'furtividade_4', 'furtividade_3', 'furtividade_2', 'furtividade_1'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.frmTeste);
    obj.dataLink32:setFields({'lideranca_9', 'lideranca_8', 'lideranca_7', 'lideranca_6', 'lideranca_5', 'lideranca_4', 'lideranca_3', 'lideranca_2', 'lideranca_1'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.frmTeste);
    obj.dataLink33:setFields({'ciencia_9', 'ciencia_8', 'ciencia_7', 'ciencia_6', 'ciencia_5', 'ciencia_4', 'ciencia_3', 'ciencia_2', 'ciencia_1'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.frmTeste);
    obj.dataLink34:setFields({'sobrevivencia_9', 'sobrevivencia_8', 'sobrevivencia_7', 'sobrevivencia_6', 'sobrevivencia_5', 'sobrevivencia_4', 'sobrevivencia_3', 'sobrevivencia_2', 'sobrevivencia_1'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmTeste);
    obj.dataLink35:setFields({'culinaria_9', 'culinaria_8', 'culinaria_7', 'culinaria_6', 'culinaria_5', 'culinaria_4', 'culinaria_3', 'culinaria_2', 'culinaria_1'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.frmTeste);
    obj.dataLink36:setFields({'caca_9', 'caca_8', 'caca_7', 'caca_6', 'caca_5', 'caca_4', 'caca_3', 'caca_2', 'caca_1'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.frmTeste);
    obj.dataLink37:setFields({'coragem_12', 'coragem_11', 'coragem_10', 'coragem_9', 'coragem_8', 'coragem_7', 'coragem_6', 'coragem_5', 'coragem_4', 'coragem_3', 'coragem_2', 'coragem_1'});
    obj.dataLink37:setName("dataLink37");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.frmTeste);
    obj.dataLink38:setFields({'conviccao_12', 'conviccao_11', 'conviccao_10', 'conviccao_9', 'conviccao_8', 'conviccao_7', 'conviccao_6', 'conviccao_5', 'conviccao_4', 'conviccao_3', 'conviccao_2', 'conviccao_1'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.frmTeste);
    obj.dataLink39:setFields({'forcaDeVontade_12', 'forcaDeVontade_11', 'forcaDeVontade_10', 'forcaDeVontade_9', 'forcaDeVontade_8', 'forcaDeVontade_7', 'forcaDeVontade_6', 'forcaDeVontade_5', 'forcaDeVontade_4', 'forcaDeVontade_3', 'forcaDeVontade_2', 'forcaDeVontade_1'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.frmTeste);
    obj.dataLink40:setFields({'famaBoa_10', 'famaBoa_9', 'famaBoa_8', 'famaBoa_7', 'famaBoa_6', 'famaBoa_5', 'famaBoa_4', 'famaBoa_3', 'famaBoa_2', 'famaBoa_1'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.frmTeste);
    obj.dataLink41:setFields({'reconhecimento_10', 'reconhecimento_9', 'reconhecimento_8', 'reconhecimento_7', 'reconhecimento_6', 'reconhecimento_5', 'reconhecimento_4', 'reconhecimento_3', 'reconhecimento_2', 'reconhecimento_1'});
    obj.dataLink41:setName("dataLink41");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.frmTeste);
    obj.dataLink42:setFields({'influenciaBoa_10', 'influenciaBoa_9', 'influenciaBoa_8', 'influenciaBoa_7', 'influenciaBoa_6', 'influenciaBoa_5', 'influenciaBoa_4', 'influenciaBoa_3', 'influenciaBoa_2', 'influenciaBoa_1'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.frmTeste);
    obj.dataLink43:setFields({'famaRuim_10', 'famaRuim_9', 'famaRuim_8', 'famaRuim_7', 'famaRuim_6', 'famaRuim_5', 'famaRuim_4', 'famaRuim_3', 'famaRuim_2', 'famaRuim_1'});
    obj.dataLink43:setName("dataLink43");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.frmTeste);
    obj.dataLink44:setFields({'influenciaRuim_10', 'influenciaRuim_9', 'influenciaRuim_8', 'influenciaRuim_7', 'influenciaRuim_6', 'influenciaRuim_5', 'influenciaRuim_4', 'influenciaRuim_3', 'influenciaRuim_2', 'influenciaRuim_1'});
    obj.dataLink44:setName("dataLink44");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vitalidade_12 == true then
            		sheet.vitalidade_11 = true;
            		sheet.vitalidade_10 = true;
            		sheet.vitalidade_9 = true;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_11 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_10 = true;
            		sheet.vitalidade_9 = true;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_10 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_9 = true;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_9 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_8 = true;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_8 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_7 = true;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_7 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_6 = true;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_6 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_5 = true;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_5 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_4 = true;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_4 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_3 = true;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_3 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_2 = true;
            		sheet.vitalidade_1 = true;
            	elseif sheet.vitalidade_2 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_3 = false;
            		sheet.vitalidade_1 = true;	
            	elseif sheet.vitalidade_1 == true then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_3 = false;
            		sheet.vitalidade_2 = false;
            	elseif sheet.vitalidade_1 == false then
            		sheet.vitalidade_12 = false;
            		sheet.vitalidade_11 = false;
            		sheet.vitalidade_10 = false;
            		sheet.vitalidade_9 = false;
            		sheet.vitalidade_8 = false;
            		sheet.vitalidade_7 = false;
            		sheet.vitalidade_6 = false;
            		sheet.vitalidade_5 = false;
            		sheet.vitalidade_4 = false;
            		sheet.vitalidade_3 = false;
            		sheet.vitalidade_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.acoesDiarias_12 == true then
            		sheet.acoesDiarias_11 = true;
            		sheet.acoesDiarias_10 = true;
            		sheet.acoesDiarias_9 = true;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_11 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_10 = true;
            		sheet.acoesDiarias_9 = true;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_10 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_9 = true;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_9 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_8 = true;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_8 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_7 = true;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_7 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_6 = true;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_6 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_5 = true;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_5 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_4 = true;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_4 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_3 = true;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_3 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_2 = true;
            		sheet.acoesDiarias_1 = true;
            	elseif sheet.acoesDiarias_2 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_3 = false;
            		sheet.acoesDiarias_1 = true;	
            	elseif sheet.acoesDiarias_1 == true then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_3 = false;
            		sheet.acoesDiarias_2 = false;
            	elseif sheet.acoesDiarias_1 == false then
            		sheet.acoesDiarias_12 = false;
            		sheet.acoesDiarias_11 = false;
            		sheet.acoesDiarias_10 = false;
            		sheet.acoesDiarias_9 = false;
            		sheet.acoesDiarias_8 = false;
            		sheet.acoesDiarias_7 = false;
            		sheet.acoesDiarias_6 = false;
            		sheet.acoesDiarias_5 = false;
            		sheet.acoesDiarias_4 = false;
            		sheet.acoesDiarias_3 = false;
            		sheet.acoesDiarias_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.forca_9 == true then
            		sheet.forca_8 = true;
            		sheet.forca_7 = true;
            		sheet.forca_6 = true;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_8 == true then
            		sheet.forca_9 = false;
            		sheet.forca_7 = true;
            		sheet.forca_6 = true;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_7 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_6 = true;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_6 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_5 = true;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_5 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_4 = true;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_4 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_3 = true;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_3 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_2 = true;
            		sheet.forca_1 = true;
            	elseif sheet.forca_2 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_3 = false;
            		sheet.forca_1 = true;	
            	elseif sheet.forca_1 == true then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_3 = false;
            		sheet.forca_2 = false;
            	elseif sheet.forca_1 == false then
            		sheet.forca_9 = false;
            		sheet.forca_8 = false;
            		sheet.forca_7 = false;
            		sheet.forca_6 = false;
            		sheet.forca_5 = false;
            		sheet.forca_4 = false;
            		sheet.forca_3 = false;
            		sheet.forca_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.percepcao_9 == true then
            		sheet.percepcao_8 = true;
            		sheet.percepcao_7 = true;
            		sheet.percepcao_6 = true;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_8 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_7 = true;
            		sheet.percepcao_6 = true;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_7 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_6 = true;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_6 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_5 = true;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_5 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_4 = true;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_4 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_3 = true;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_3 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_2 = true;
            		sheet.percepcao_1 = true;
            	elseif sheet.percepcao_2 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_3 = false;
            		sheet.percepcao_1 = true;	
            	elseif sheet.percepcao_1 == true then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_3 = false;
            		sheet.percepcao_2 = false;
            	elseif sheet.percepcao_1 == false then
            		sheet.percepcao_9 = false;
            		sheet.percepcao_8 = false;
            		sheet.percepcao_7 = false;
            		sheet.percepcao_6 = false;
            		sheet.percepcao_5 = false;
            		sheet.percepcao_4 = false;
            		sheet.percepcao_3 = false;
            		sheet.percepcao_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.carisma_9 == true then
            		sheet.carisma_8 = true;
            		sheet.carisma_7 = true;
            		sheet.carisma_6 = true;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_8 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_7 = true;
            		sheet.carisma_6 = true;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_7 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_6 = true;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_6 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_5 = true;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_5 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_4 = true;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_4 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_3 = true;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_3 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_2 = true;
            		sheet.carisma_1 = true;
            	elseif sheet.carisma_2 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_3 = false;
            		sheet.carisma_1 = true;	
            	elseif sheet.carisma_1 == true then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_3 = false;
            		sheet.carisma_2 = false;
            	elseif sheet.carisma_1 == false then
            		sheet.carisma_9 = false;
            		sheet.carisma_8 = false;
            		sheet.carisma_7 = false;
            		sheet.carisma_6 = false;
            		sheet.carisma_5 = false;
            		sheet.carisma_4 = false;
            		sheet.carisma_3 = false;
            		sheet.carisma_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.destreza_9 == true then
            		sheet.destreza_8 = true;
            		sheet.destreza_7 = true;
            		sheet.destreza_6 = true;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_8 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_7 = true;
            		sheet.destreza_6 = true;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_7 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_6 = true;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_6 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_5 = true;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_5 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_4 = true;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_4 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_3 = true;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_3 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_2 = true;
            		sheet.destreza_1 = true;
            	elseif sheet.destreza_2 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_3 = false;
            		sheet.destreza_1 = true;	
            	elseif sheet.destreza_1 == true then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_3 = false;
            		sheet.destreza_2 = false;
            	elseif sheet.destreza_1 == false then
            		sheet.destreza_9 = false;
            		sheet.destreza_8 = false;
            		sheet.destreza_7 = false;
            		sheet.destreza_6 = false;
            		sheet.destreza_5 = false;
            		sheet.destreza_4 = false;
            		sheet.destreza_3 = false;
            		sheet.destreza_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.intimidacao_9 == true then
            		sheet.intimidacao_8 = true;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_8 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_7 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_6 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_5 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_4 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_3 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_2 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_1 = true;	
            	elseif sheet.intimidacao_1 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	elseif sheet.intimidacao_1 == false then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.manipulacao_9 == true then
            		sheet.manipulacao_8 = true;
            		sheet.manipulacao_7 = true;
            		sheet.manipulacao_6 = true;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_8 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_7 = true;
            		sheet.manipulacao_6 = true;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_7 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_6 = true;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_6 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_5 = true;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_5 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_4 = true;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_4 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_3 = true;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_3 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_2 = true;
            		sheet.manipulacao_1 = true;
            	elseif sheet.manipulacao_2 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_3 = false;
            		sheet.manipulacao_1 = true;	
            	elseif sheet.manipulacao_1 == true then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_3 = false;
            		sheet.manipulacao_2 = false;
            	elseif sheet.manipulacao_1 == false then
            		sheet.manipulacao_9 = false;
            		sheet.manipulacao_8 = false;
            		sheet.manipulacao_7 = false;
            		sheet.manipulacao_6 = false;
            		sheet.manipulacao_5 = false;
            		sheet.manipulacao_4 = false;
            		sheet.manipulacao_3 = false;
            		sheet.manipulacao_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.inteligencia_9 == true then
            		sheet.inteligencia_8 = true;
            		sheet.inteligencia_7 = true;
            		sheet.inteligencia_6 = true;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_8 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_7 = true;
            		sheet.inteligencia_6 = true;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_7 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_6 = true;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_6 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_5 = true;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_5 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_4 = true;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_4 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_3 = true;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_3 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_2 = true;
            		sheet.inteligencia_1 = true;
            	elseif sheet.inteligencia_2 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_3 = false;
            		sheet.inteligencia_1 = true;	
            	elseif sheet.inteligencia_1 == true then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_3 = false;
            		sheet.inteligencia_2 = false;
            	elseif sheet.inteligencia_1 == false then
            		sheet.inteligencia_9 = false;
            		sheet.inteligencia_8 = false;
            		sheet.inteligencia_7 = false;
            		sheet.inteligencia_6 = false;
            		sheet.inteligencia_5 = false;
            		sheet.inteligencia_4 = false;
            		sheet.inteligencia_3 = false;
            		sheet.inteligencia_2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.vigor_9 == true then
            		sheet.vigor_8 = true;
            		sheet.vigor_7 = true;
            		sheet.vigor_6 = true;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_8 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_7 = true;
            		sheet.vigor_6 = true;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_7 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_6 = true;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_6 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_5 = true;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_5 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_4 = true;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_4 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_3 = true;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_3 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_2 = true;
            		sheet.vigor_1 = true;
            	elseif sheet.vigor_2 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_3 = false;
            		sheet.vigor_1 = true;	
            	elseif sheet.vigor_1 == true then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_3 = false;
            		sheet.vigor_2 = false;
            	elseif sheet.vigor_1 == false then
            		sheet.vigor_9 = false;
            		sheet.vigor_8 = false;
            		sheet.vigor_7 = false;
            		sheet.vigor_6 = false;
            		sheet.vigor_5 = false;
            		sheet.vigor_4 = false;
            		sheet.vigor_3 = false;
            		sheet.vigor_2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.raciocinio_9 == true then
            		sheet.raciocinio_8 = true;
            		sheet.raciocinio_7 = true;
            		sheet.raciocinio_6 = true;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_8 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_7 = true;
            		sheet.raciocinio_6 = true;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_7 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_6 = true;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_6 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_5 = true;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_5 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_4 = true;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_4 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_3 = true;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_3 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_2 = true;
            		sheet.raciocinio_1 = true;
            	elseif sheet.raciocinio_2 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_3 = false;
            		sheet.raciocinio_1 = true;	
            	elseif sheet.raciocinio_1 == true then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_3 = false;
            		sheet.raciocinio_2 = false;
            	elseif sheet.raciocinio_1 == false then
            		sheet.raciocinio_9 = false;
            		sheet.raciocinio_8 = false;
            		sheet.raciocinio_7 = false;
            		sheet.raciocinio_6 = false;
            		sheet.raciocinio_5 = false;
            		sheet.raciocinio_4 = false;
            		sheet.raciocinio_3 = false;
            		sheet.raciocinio_2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.aparencia_9 == true then
            		sheet.aparencia_8 = true;
            		sheet.aparencia_7 = true;
            		sheet.aparencia_6 = true;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_8 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_7 = true;
            		sheet.aparencia_6 = true;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_7 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_6 = true;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_6 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_5 = true;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_5 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_4 = true;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_4 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_3 = true;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_3 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_2 = true;
            		sheet.aparencia_1 = true;
            	elseif sheet.aparencia_2 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_3 = false;
            		sheet.aparencia_1 = true;	
            	elseif sheet.aparencia_1 == true then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_3 = false;
            		sheet.aparencia_2 = false;
            	elseif sheet.aparencia_1 == false then
            		sheet.aparencia_9 = false;
            		sheet.aparencia_8 = false;
            		sheet.aparencia_7 = false;
            		sheet.aparencia_6 = false;
            		sheet.aparencia_5 = false;
            		sheet.aparencia_4 = false;
            		sheet.aparencia_3 = false;
            		sheet.aparencia_2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.prontidao_9 == true then
            		sheet.prontidao_8 = true;
            		sheet.prontidao_7 = true;
            		sheet.prontidao_6 = true;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_8 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_7 = true;
            		sheet.prontidao_6 = true;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_7 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_6 = true;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_6 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_5 = true;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_5 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_4 = true;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_4 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_3 = true;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_3 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_2 = true;
            		sheet.prontidao_1 = true;
            	elseif sheet.prontidao_2 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_3 = false;
            		sheet.prontidao_1 = true;	
            	elseif sheet.prontidao_1 == true then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_3 = false;
            		sheet.prontidao_2 = false;
            	elseif sheet.prontidao_1 == false then
            		sheet.prontidao_9 = false;
            		sheet.prontidao_8 = false;
            		sheet.prontidao_7 = false;
            		sheet.prontidao_6 = false;
            		sheet.prontidao_5 = false;
            		sheet.prontidao_4 = false;
            		sheet.prontidao_3 = false;
            		sheet.prontidao_2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.academicos_9 == true then
            		sheet.academicos_8 = true;
            		sheet.academicos_7 = true;
            		sheet.academicos_6 = true;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_8 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_7 = true;
            		sheet.academicos_6 = true;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_7 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_6 = true;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_6 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_5 = true;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_5 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_4 = true;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_4 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_3 = true;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_3 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_2 = true;
            		sheet.academicos_1 = true;
            	elseif sheet.academicos_2 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_3 = false;
            		sheet.academicos_1 = true;	
            	elseif sheet.academicos_1 == true then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_3 = false;
            		sheet.academicos_2 = false;
            	elseif sheet.academicos_1 == false then
            		sheet.academicos_9 = false;
            		sheet.academicos_8 = false;
            		sheet.academicos_7 = false;
            		sheet.academicos_6 = false;
            		sheet.academicos_5 = false;
            		sheet.academicos_4 = false;
            		sheet.academicos_3 = false;
            		sheet.academicos_2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.empatiaPokemon_9 == true then
            		sheet.empatiaPokemon_8 = true;
            		sheet.empatiaPokemon_7 = true;
            		sheet.empatiaPokemon_6 = true;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_8 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_7 = true;
            		sheet.empatiaPokemon_6 = true;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_7 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_6 = true;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_6 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_5 = true;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_5 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_4 = true;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_4 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_3 = true;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_3 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_2 = true;
            		sheet.empatiaPokemon_1 = true;
            	elseif sheet.empatiaPokemon_2 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_3 = false;
            		sheet.empatiaPokemon_1 = true;	
            	elseif sheet.empatiaPokemon_1 == true then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_3 = false;
            		sheet.empatiaPokemon_2 = false;
            	elseif sheet.empatiaPokemon_1 == false then
            		sheet.empatiaPokemon_9 = false;
            		sheet.empatiaPokemon_8 = false;
            		sheet.empatiaPokemon_7 = false;
            		sheet.empatiaPokemon_6 = false;
            		sheet.empatiaPokemon_5 = false;
            		sheet.empatiaPokemon_4 = false;
            		sheet.empatiaPokemon_3 = false;
            		sheet.empatiaPokemon_2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esportes_9 == true then
            		sheet.esportes_8 = true;
            		sheet.esportes_7 = true;
            		sheet.esportes_6 = true;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_8 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_7 = true;
            		sheet.esportes_6 = true;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_7 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_6 = true;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_6 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_5 = true;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_5 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_4 = true;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_4 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_3 = true;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_3 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_2 = true;
            		sheet.esportes_1 = true;
            	elseif sheet.esportes_2 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_3 = false;
            		sheet.esportes_1 = true;	
            	elseif sheet.esportes_1 == true then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_3 = false;
            		sheet.esportes_2 = false;
            	elseif sheet.esportes_1 == false then
            		sheet.esportes_9 = false;
            		sheet.esportes_8 = false;
            		sheet.esportes_7 = false;
            		sheet.esportes_6 = false;
            		sheet.esportes_5 = false;
            		sheet.esportes_4 = false;
            		sheet.esportes_3 = false;
            		sheet.esportes_2 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.computador_9 == true then
            		sheet.computador_8 = true;
            		sheet.computador_7 = true;
            		sheet.computador_6 = true;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_8 == true then
            		sheet.computador_9 = false;
            		sheet.computador_7 = true;
            		sheet.computador_6 = true;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_7 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_6 = true;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_6 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_5 = true;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_5 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_4 = true;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_4 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_3 = true;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_3 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_2 = true;
            		sheet.computador_1 = true;
            	elseif sheet.computador_2 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_3 = false;
            		sheet.computador_1 = true;	
            	elseif sheet.computador_1 == true then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_3 = false;
            		sheet.computador_2 = false;
            	elseif sheet.computador_1 == false then
            		sheet.computador_9 = false;
            		sheet.computador_8 = false;
            		sheet.computador_7 = false;
            		sheet.computador_6 = false;
            		sheet.computador_5 = false;
            		sheet.computador_4 = false;
            		sheet.computador_3 = false;
            		sheet.computador_2 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.oficios_9 == true then
            		sheet.oficios_8 = true;
            		sheet.oficios_7 = true;
            		sheet.oficios_6 = true;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_8 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_7 = true;
            		sheet.oficios_6 = true;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_7 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_6 = true;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_6 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_5 = true;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_5 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_4 = true;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_4 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_3 = true;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_3 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_2 = true;
            		sheet.oficios_1 = true;
            	elseif sheet.oficios_2 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_3 = false;
            		sheet.oficios_1 = true;	
            	elseif sheet.oficios_1 == true then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_3 = false;
            		sheet.oficios_2 = false;
            	elseif sheet.oficios_1 == false then
            		sheet.oficios_9 = false;
            		sheet.oficios_8 = false;
            		sheet.oficios_7 = false;
            		sheet.oficios_6 = false;
            		sheet.oficios_5 = false;
            		sheet.oficios_4 = false;
            		sheet.oficios_3 = false;
            		sheet.oficios_2 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.briga_9 == true then
            		sheet.briga_8 = true;
            		sheet.briga_7 = true;
            		sheet.briga_6 = true;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_8 == true then
            		sheet.briga_9 = false;
            		sheet.briga_7 = true;
            		sheet.briga_6 = true;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_7 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_6 = true;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_6 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_5 = true;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_5 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_4 = true;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_4 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_3 = true;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_3 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_2 = true;
            		sheet.briga_1 = true;
            	elseif sheet.briga_2 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_3 = false;
            		sheet.briga_1 = true;	
            	elseif sheet.briga_1 == true then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_3 = false;
            		sheet.briga_2 = false;
            	elseif sheet.briga_1 == false then
            		sheet.briga_9 = false;
            		sheet.briga_8 = false;
            		sheet.briga_7 = false;
            		sheet.briga_6 = false;
            		sheet.briga_5 = false;
            		sheet.briga_4 = false;
            		sheet.briga_3 = false;
            		sheet.briga_2 = false;
            	end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.habitats_9 == true then
            		sheet.habitats_8 = true;
            		sheet.habitats_7 = true;
            		sheet.habitats_6 = true;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_8 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_7 = true;
            		sheet.habitats_6 = true;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_7 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_6 = true;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_6 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_5 = true;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_5 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_4 = true;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_4 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_3 = true;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_3 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_2 = true;
            		sheet.habitats_1 = true;
            	elseif sheet.habitats_2 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_3 = false;
            		sheet.habitats_1 = true;	
            	elseif sheet.habitats_1 == true then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_3 = false;
            		sheet.habitats_2 = false;
            	elseif sheet.habitats_1 == false then
            		sheet.habitats_9 = false;
            		sheet.habitats_8 = false;
            		sheet.habitats_7 = false;
            		sheet.habitats_6 = false;
            		sheet.habitats_5 = false;
            		sheet.habitats_4 = false;
            		sheet.habitats_3 = false;
            		sheet.habitats_2 = false;
            	end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.esquiva_9 == true then
            		sheet.esquiva_8 = true;
            		sheet.esquiva_7 = true;
            		sheet.esquiva_6 = true;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_8 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_7 = true;
            		sheet.esquiva_6 = true;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_7 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_6 = true;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_6 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_5 = true;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_5 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_4 = true;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_4 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_3 = true;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_3 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_2 = true;
            		sheet.esquiva_1 = true;
            	elseif sheet.esquiva_2 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_3 = false;
            		sheet.esquiva_1 = true;	
            	elseif sheet.esquiva_1 == true then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_3 = false;
            		sheet.esquiva_2 = false;
            	elseif sheet.esquiva_1 == false then
            		sheet.esquiva_9 = false;
            		sheet.esquiva_8 = false;
            		sheet.esquiva_7 = false;
            		sheet.esquiva_6 = false;
            		sheet.esquiva_5 = false;
            		sheet.esquiva_4 = false;
            		sheet.esquiva_3 = false;
            		sheet.esquiva_2 = false;
            	end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.investigacao_9 == true then
            		sheet.investigacao_8 = true;
            		sheet.investigacao_7 = true;
            		sheet.investigacao_6 = true;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_8 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_7 = true;
            		sheet.investigacao_6 = true;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_7 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_6 = true;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_6 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_5 = true;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_5 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_4 = true;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_4 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_3 = true;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_3 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_2 = true;
            		sheet.investigacao_1 = true;
            	elseif sheet.investigacao_2 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_3 = false;
            		sheet.investigacao_1 = true;	
            	elseif sheet.investigacao_1 == true then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_3 = false;
            		sheet.investigacao_2 = false;
            	elseif sheet.investigacao_1 == false then
            		sheet.investigacao_9 = false;
            		sheet.investigacao_8 = false;
            		sheet.investigacao_7 = false;
            		sheet.investigacao_6 = false;
            		sheet.investigacao_5 = false;
            		sheet.investigacao_4 = false;
            		sheet.investigacao_3 = false;
            		sheet.investigacao_2 = false;
            	end;
        end, obj);

    obj._e_event22 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.etiqueta_9 == true then
            		sheet.etiqueta_8 = true;
            		sheet.etiqueta_7 = true;
            		sheet.etiqueta_6 = true;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_8 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_7 = true;
            		sheet.etiqueta_6 = true;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_7 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_6 = true;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_6 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_5 = true;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_5 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_4 = true;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_4 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_3 = true;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_3 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_2 = true;
            		sheet.etiqueta_1 = true;
            	elseif sheet.etiqueta_2 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_3 = false;
            		sheet.etiqueta_1 = true;	
            	elseif sheet.etiqueta_1 == true then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_3 = false;
            		sheet.etiqueta_2 = false;
            	elseif sheet.etiqueta_1 == false then
            		sheet.etiqueta_9 = false;
            		sheet.etiqueta_8 = false;
            		sheet.etiqueta_7 = false;
            		sheet.etiqueta_6 = false;
            		sheet.etiqueta_5 = false;
            		sheet.etiqueta_4 = false;
            		sheet.etiqueta_3 = false;
            		sheet.etiqueta_2 = false;
            	end;
        end, obj);

    obj._e_event23 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.empatia_9 == true then
            		sheet.empatia_8 = true;
            		sheet.empatia_7 = true;
            		sheet.empatia_6 = true;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_8 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_7 = true;
            		sheet.empatia_6 = true;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_7 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_6 = true;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_6 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_5 = true;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_5 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_4 = true;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_4 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_3 = true;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_3 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_2 = true;
            		sheet.empatia_1 = true;
            	elseif sheet.empatia_2 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_3 = false;
            		sheet.empatia_1 = true;	
            	elseif sheet.empatia_1 == true then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_3 = false;
            		sheet.empatia_2 = false;
            	elseif sheet.empatia_1 == false then
            		sheet.empatia_9 = false;
            		sheet.empatia_8 = false;
            		sheet.empatia_7 = false;
            		sheet.empatia_6 = false;
            		sheet.empatia_5 = false;
            		sheet.empatia_4 = false;
            		sheet.empatia_3 = false;
            		sheet.empatia_2 = false;
            	end;
        end, obj);

    obj._e_event24 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.atuacao_9 == true then
            		sheet.atuacao_8 = true;
            		sheet.atuacao_7 = true;
            		sheet.atuacao_6 = true;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_8 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_7 = true;
            		sheet.atuacao_6 = true;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_7 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_6 = true;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_6 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_5 = true;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_5 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_4 = true;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_4 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_3 = true;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_3 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_2 = true;
            		sheet.atuacao_1 = true;
            	elseif sheet.atuacao_2 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_3 = false;
            		sheet.atuacao_1 = true;	
            	elseif sheet.atuacao_1 == true then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_3 = false;
            		sheet.atuacao_2 = false;
            	elseif sheet.atuacao_1 == false then
            		sheet.atuacao_9 = false;
            		sheet.atuacao_8 = false;
            		sheet.atuacao_7 = false;
            		sheet.atuacao_6 = false;
            		sheet.atuacao_5 = false;
            		sheet.atuacao_4 = false;
            		sheet.atuacao_3 = false;
            		sheet.atuacao_2 = false;
            	end;
        end, obj);

    obj._e_event25 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.direito_9 == true then
            		sheet.direito_8 = true;
            		sheet.direito_7 = true;
            		sheet.direito_6 = true;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_8 == true then
            		sheet.direito_9 = false;
            		sheet.direito_7 = true;
            		sheet.direito_6 = true;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_7 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_6 = true;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_6 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_5 = true;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_5 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_4 = true;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_4 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_3 = true;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_3 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_2 = true;
            		sheet.direito_1 = true;
            	elseif sheet.direito_2 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_3 = false;
            		sheet.direito_1 = true;	
            	elseif sheet.direito_1 == true then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_3 = false;
            		sheet.direito_2 = false;
            	elseif sheet.direito_1 == false then
            		sheet.direito_9 = false;
            		sheet.direito_8 = false;
            		sheet.direito_7 = false;
            		sheet.direito_6 = false;
            		sheet.direito_5 = false;
            		sheet.direito_4 = false;
            		sheet.direito_3 = false;
            		sheet.direito_2 = false;
            	end;
        end, obj);

    obj._e_event26 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.expressao_9 == true then
            		sheet.expressao_8 = true;
            		sheet.expressao_7 = true;
            		sheet.expressao_6 = true;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_8 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_7 = true;
            		sheet.expressao_6 = true;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_7 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_6 = true;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_6 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_5 = true;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_5 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_4 = true;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_4 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_3 = true;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_3 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_2 = true;
            		sheet.expressao_1 = true;
            	elseif sheet.expressao_2 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_3 = false;
            		sheet.expressao_1 = true;	
            	elseif sheet.expressao_1 == true then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_3 = false;
            		sheet.expressao_2 = false;
            	elseif sheet.expressao_1 == false then
            		sheet.expressao_9 = false;
            		sheet.expressao_8 = false;
            		sheet.expressao_7 = false;
            		sheet.expressao_6 = false;
            		sheet.expressao_5 = false;
            		sheet.expressao_4 = false;
            		sheet.expressao_3 = false;
            		sheet.expressao_2 = false;
            	end;
        end, obj);

    obj._e_event27 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.seguranca_9 == true then
            		sheet.seguranca_8 = true;
            		sheet.seguranca_7 = true;
            		sheet.seguranca_6 = true;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_8 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_7 = true;
            		sheet.seguranca_6 = true;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_7 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_6 = true;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_6 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_5 = true;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_5 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_4 = true;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_4 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_3 = true;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_3 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_2 = true;
            		sheet.seguranca_1 = true;
            	elseif sheet.seguranca_2 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_3 = false;
            		sheet.seguranca_1 = true;	
            	elseif sheet.seguranca_1 == true then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_3 = false;
            		sheet.seguranca_2 = false;
            	elseif sheet.seguranca_1 == false then
            		sheet.seguranca_9 = false;
            		sheet.seguranca_8 = false;
            		sheet.seguranca_7 = false;
            		sheet.seguranca_6 = false;
            		sheet.seguranca_5 = false;
            		sheet.seguranca_4 = false;
            		sheet.seguranca_3 = false;
            		sheet.seguranca_2 = false;
            	end;
        end, obj);

    obj._e_event28 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.intimidacao_9 == true then
            		sheet.intimidacao_8 = true;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_8 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_7 = true;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_7 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_6 = true;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_6 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_5 = true;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_5 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_4 = true;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_4 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_3 = true;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_3 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_2 = true;
            		sheet.intimidacao_1 = true;
            	elseif sheet.intimidacao_2 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_1 = true;	
            	elseif sheet.intimidacao_1 == true then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	elseif sheet.intimidacao_1 == false then
            		sheet.intimidacao_9 = false;
            		sheet.intimidacao_8 = false;
            		sheet.intimidacao_7 = false;
            		sheet.intimidacao_6 = false;
            		sheet.intimidacao_5 = false;
            		sheet.intimidacao_4 = false;
            		sheet.intimidacao_3 = false;
            		sheet.intimidacao_2 = false;
            	end;
        end, obj);

    obj._e_event29 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.medicina_9 == true then
            		sheet.medicina_8 = true;
            		sheet.medicina_7 = true;
            		sheet.medicina_6 = true;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_8 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_7 = true;
            		sheet.medicina_6 = true;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_7 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_6 = true;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_6 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_5 = true;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_5 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_4 = true;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_4 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_3 = true;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_3 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_2 = true;
            		sheet.medicina_1 = true;
            	elseif sheet.medicina_2 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_3 = false;
            		sheet.medicina_1 = true;	
            	elseif sheet.medicina_1 == true then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_3 = false;
            		sheet.medicina_2 = false;
            	elseif sheet.medicina_1 == false then
            		sheet.medicina_9 = false;
            		sheet.medicina_8 = false;
            		sheet.medicina_7 = false;
            		sheet.medicina_6 = false;
            		sheet.medicina_5 = false;
            		sheet.medicina_4 = false;
            		sheet.medicina_3 = false;
            		sheet.medicina_2 = false;
            	end;
        end, obj);

    obj._e_event30 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.furtividade_9 == true then
            		sheet.furtividade_8 = true;
            		sheet.furtividade_7 = true;
            		sheet.furtividade_6 = true;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_8 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_7 = true;
            		sheet.furtividade_6 = true;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_7 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_6 = true;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_6 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_5 = true;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_5 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_4 = true;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_4 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_3 = true;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_3 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_2 = true;
            		sheet.furtividade_1 = true;
            	elseif sheet.furtividade_2 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_3 = false;
            		sheet.furtividade_1 = true;	
            	elseif sheet.furtividade_1 == true then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_3 = false;
            		sheet.furtividade_2 = false;
            	elseif sheet.furtividade_1 == false then
            		sheet.furtividade_9 = false;
            		sheet.furtividade_8 = false;
            		sheet.furtividade_7 = false;
            		sheet.furtividade_6 = false;
            		sheet.furtividade_5 = false;
            		sheet.furtividade_4 = false;
            		sheet.furtividade_3 = false;
            		sheet.furtividade_2 = false;
            	end;
        end, obj);

    obj._e_event31 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.lideranca_9 == true then
            		sheet.lideranca_8 = true;
            		sheet.lideranca_7 = true;
            		sheet.lideranca_6 = true;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_8 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_7 = true;
            		sheet.lideranca_6 = true;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_7 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_6 = true;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_6 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_5 = true;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_5 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_4 = true;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_4 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_3 = true;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_3 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_2 = true;
            		sheet.lideranca_1 = true;
            	elseif sheet.lideranca_2 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_3 = false;
            		sheet.lideranca_1 = true;	
            	elseif sheet.lideranca_1 == true then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_3 = false;
            		sheet.lideranca_2 = false;
            	elseif sheet.lideranca_1 == false then
            		sheet.lideranca_9 = false;
            		sheet.lideranca_8 = false;
            		sheet.lideranca_7 = false;
            		sheet.lideranca_6 = false;
            		sheet.lideranca_5 = false;
            		sheet.lideranca_4 = false;
            		sheet.lideranca_3 = false;
            		sheet.lideranca_2 = false;
            	end;
        end, obj);

    obj._e_event32 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.ciencia_9 == true then
            		sheet.ciencia_8 = true;
            		sheet.ciencia_7 = true;
            		sheet.ciencia_6 = true;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_8 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_7 = true;
            		sheet.ciencia_6 = true;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_7 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_6 = true;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_6 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_5 = true;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_5 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_4 = true;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_4 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_3 = true;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_3 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_2 = true;
            		sheet.ciencia_1 = true;
            	elseif sheet.ciencia_2 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_3 = false;
            		sheet.ciencia_1 = true;	
            	elseif sheet.ciencia_1 == true then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_3 = false;
            		sheet.ciencia_2 = false;
            	elseif sheet.ciencia_1 == false then
            		sheet.ciencia_9 = false;
            		sheet.ciencia_8 = false;
            		sheet.ciencia_7 = false;
            		sheet.ciencia_6 = false;
            		sheet.ciencia_5 = false;
            		sheet.ciencia_4 = false;
            		sheet.ciencia_3 = false;
            		sheet.ciencia_2 = false;
            	end;
        end, obj);

    obj._e_event33 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.sobrevivencia_9 == true then
            		sheet.sobrevivencia_8 = true;
            		sheet.sobrevivencia_7 = true;
            		sheet.sobrevivencia_6 = true;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_8 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_7 = true;
            		sheet.sobrevivencia_6 = true;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_7 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_6 = true;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_6 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_5 = true;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_5 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_4 = true;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_4 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_3 = true;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_3 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_2 = true;
            		sheet.sobrevivencia_1 = true;
            	elseif sheet.sobrevivencia_2 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_3 = false;
            		sheet.sobrevivencia_1 = true;	
            	elseif sheet.sobrevivencia_1 == true then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_3 = false;
            		sheet.sobrevivencia_2 = false;
            	elseif sheet.sobrevivencia_1 == false then
            		sheet.sobrevivencia_9 = false;
            		sheet.sobrevivencia_8 = false;
            		sheet.sobrevivencia_7 = false;
            		sheet.sobrevivencia_6 = false;
            		sheet.sobrevivencia_5 = false;
            		sheet.sobrevivencia_4 = false;
            		sheet.sobrevivencia_3 = false;
            		sheet.sobrevivencia_2 = false;
            	end;
        end, obj);

    obj._e_event34 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.culinaria_9 == true then
            		sheet.culinaria_8 = true;
            		sheet.culinaria_7 = true;
            		sheet.culinaria_6 = true;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_8 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_7 = true;
            		sheet.culinaria_6 = true;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_7 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_6 = true;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_6 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_5 = true;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_5 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_4 = true;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_4 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_3 = true;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_3 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_2 = true;
            		sheet.culinaria_1 = true;
            	elseif sheet.culinaria_2 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_3 = false;
            		sheet.culinaria_1 = true;	
            	elseif sheet.culinaria_1 == true then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_3 = false;
            		sheet.culinaria_2 = false;
            	elseif sheet.culinaria_1 == false then
            		sheet.culinaria_9 = false;
            		sheet.culinaria_8 = false;
            		sheet.culinaria_7 = false;
            		sheet.culinaria_6 = false;
            		sheet.culinaria_5 = false;
            		sheet.culinaria_4 = false;
            		sheet.culinaria_3 = false;
            		sheet.culinaria_2 = false;
            	end;
        end, obj);

    obj._e_event35 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.caca_9 == true then
            		sheet.caca_8 = true;
            		sheet.caca_7 = true;
            		sheet.caca_6 = true;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_8 == true then
            		sheet.caca_9 = false;
            		sheet.caca_7 = true;
            		sheet.caca_6 = true;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_7 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_6 = true;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_6 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_5 = true;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_5 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_4 = true;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_4 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_3 = true;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_3 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_2 = true;
            		sheet.caca_1 = true;
            	elseif sheet.caca_2 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_3 = false;
            		sheet.caca_1 = true;	
            	elseif sheet.caca_1 == true then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_3 = false;
            		sheet.caca_2 = false;
            	elseif sheet.caca_1 == false then
            		sheet.caca_9 = false;
            		sheet.caca_8 = false;
            		sheet.caca_7 = false;
            		sheet.caca_6 = false;
            		sheet.caca_5 = false;
            		sheet.caca_4 = false;
            		sheet.caca_3 = false;
            		sheet.caca_2 = false;
            	end;
        end, obj);

    obj._e_event36 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.coragem_12 == true then
            		sheet.coragem_11 = true;
            		sheet.coragem_10 = true;
            		sheet.coragem_9 = true;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_11 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_10 = true;
            		sheet.coragem_9 = true;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_10 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_9 = true;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_9 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_8 = true;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_8 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_7 = true;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_7 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_6 = true;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_6 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_5 = true;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_5 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_4 = true;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_4 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_3 = true;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_3 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_2 = true;
            		sheet.coragem_1 = true;
            	elseif sheet.coragem_2 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_3 = false;
            		sheet.coragem_1 = true;	
            	elseif sheet.coragem_1 == true then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_3 = false;
            		sheet.coragem_2 = false;
            	elseif sheet.coragem_1 == false then
            		sheet.coragem_12 = false;
            		sheet.coragem_11 = false;
            		sheet.coragem_10 = false;
            		sheet.coragem_9 = false;
            		sheet.coragem_8 = false;
            		sheet.coragem_7 = false;
            		sheet.coragem_6 = false;
            		sheet.coragem_5 = false;
            		sheet.coragem_4 = false;
            		sheet.coragem_3 = false;
            		sheet.coragem_2 = false;
            	end;
        end, obj);

    obj._e_event37 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.conviccao_12 == true then
            		sheet.conviccao_11 = true;
            		sheet.conviccao_10 = true;
            		sheet.conviccao_9 = true;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_11 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_10 = true;
            		sheet.conviccao_9 = true;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_10 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_9 = true;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_9 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_8 = true;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_8 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_7 = true;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_7 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_6 = true;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_6 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_5 = true;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_5 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_4 = true;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_4 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_3 = true;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_3 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_2 = true;
            		sheet.conviccao_1 = true;
            	elseif sheet.conviccao_2 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_3 = false;
            		sheet.conviccao_1 = true;	
            	elseif sheet.conviccao_1 == true then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_3 = false;
            		sheet.conviccao_2 = false;
            	elseif sheet.conviccao_1 == false then
            		sheet.conviccao_12 = false;
            		sheet.conviccao_11 = false;
            		sheet.conviccao_10 = false;
            		sheet.conviccao_9 = false;
            		sheet.conviccao_8 = false;
            		sheet.conviccao_7 = false;
            		sheet.conviccao_6 = false;
            		sheet.conviccao_5 = false;
            		sheet.conviccao_4 = false;
            		sheet.conviccao_3 = false;
            		sheet.conviccao_2 = false;
            	end;
        end, obj);

    obj._e_event38 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.forcaDeVontade_12 == true then
            		sheet.forcaDeVontade_11 = true;
            		sheet.forcaDeVontade_10 = true;
            		sheet.forcaDeVontade_9 = true;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_11 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_10 = true;
            		sheet.forcaDeVontade_9 = true;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_10 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_9 = true;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_9 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_8 = true;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_8 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_7 = true;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_7 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_6 = true;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_6 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_5 = true;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_5 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_4 = true;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_4 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_3 = true;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_3 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_2 = true;
            		sheet.forcaDeVontade_1 = true;
            	elseif sheet.forcaDeVontade_2 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_3 = false;
            		sheet.forcaDeVontade_1 = true;	
            	elseif sheet.forcaDeVontade_1 == true then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_3 = false;
            		sheet.forcaDeVontade_2 = false;
            	elseif sheet.forcaDeVontade_1 == false then
            		sheet.forcaDeVontade_12 = false;
            		sheet.forcaDeVontade_11 = false;
            		sheet.forcaDeVontade_10 = false;
            		sheet.forcaDeVontade_9 = false;
            		sheet.forcaDeVontade_8 = false;
            		sheet.forcaDeVontade_7 = false;
            		sheet.forcaDeVontade_6 = false;
            		sheet.forcaDeVontade_5 = false;
            		sheet.forcaDeVontade_4 = false;
            		sheet.forcaDeVontade_3 = false;
            		sheet.forcaDeVontade_2 = false;
            	end;
        end, obj);

    obj._e_event39 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.famaBoa_10 == true then
            		sheet.famaBoa_9 = true;
            		sheet.famaBoa_8 = true;
            		sheet.famaBoa_7 = true;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_9 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_8 = true;
            		sheet.famaBoa_7 = true;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_8 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_7 = true;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_7 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_6 = true;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_6 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_5 = true;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_5 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_4 = true;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_4 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_3 = true;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_3 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_2 = true;
            		sheet.famaBoa_1 = true;
            	elseif sheet.famaBoa_2 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_3 = false;
            		sheet.famaBoa_1 = true;	
            	elseif sheet.famaBoa_1 == true then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_3 = false;
            		sheet.famaBoa_2 = false;
            	elseif sheet.famaBoa_1 == false then
            		sheet.famaBoa_10 = false;
            		sheet.famaBoa_9 = false;
            		sheet.famaBoa_8 = false;
            		sheet.famaBoa_7 = false;
            		sheet.famaBoa_6 = false;
            		sheet.famaBoa_5 = false;
            		sheet.famaBoa_4 = false;
            		sheet.famaBoa_3 = false;
            		sheet.famaBoa_2 = false;
            	end;
        end, obj);

    obj._e_event40 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.reconhecimento_10 == true then
            		sheet.reconhecimento_9 = true;
            		sheet.reconhecimento_8 = true;
            		sheet.reconhecimento_7 = true;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_9 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_8 = true;
            		sheet.reconhecimento_7 = true;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_8 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_7 = true;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_7 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_6 = true;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_6 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_5 = true;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_5 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_4 = true;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_4 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_3 = true;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_3 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_2 = true;
            		sheet.reconhecimento_1 = true;
            	elseif sheet.reconhecimento_2 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_3 = false;
            		sheet.reconhecimento_1 = true;	
            	elseif sheet.reconhecimento_1 == true then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_3 = false;
            		sheet.reconhecimento_2 = false;
            	elseif sheet.reconhecimento_1 == false then
            		sheet.reconhecimento_10 = false;
            		sheet.reconhecimento_9 = false;
            		sheet.reconhecimento_8 = false;
            		sheet.reconhecimento_7 = false;
            		sheet.reconhecimento_6 = false;
            		sheet.reconhecimento_5 = false;
            		sheet.reconhecimento_4 = false;
            		sheet.reconhecimento_3 = false;
            		sheet.reconhecimento_2 = false;
            	end;
        end, obj);

    obj._e_event41 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.influenciaBoa_10 == true then
            		sheet.influenciaBoa_9 = true;
            		sheet.influenciaBoa_8 = true;
            		sheet.influenciaBoa_7 = true;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_9 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_8 = true;
            		sheet.influenciaBoa_7 = true;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_8 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_7 = true;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_7 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_6 = true;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_6 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_5 = true;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_5 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_4 = true;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_4 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_3 = true;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_3 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_2 = true;
            		sheet.influenciaBoa_1 = true;
            	elseif sheet.influenciaBoa_2 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_3 = false;
            		sheet.influenciaBoa_1 = true;	
            	elseif sheet.influenciaBoa_1 == true then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_3 = false;
            		sheet.influenciaBoa_2 = false;
            	elseif sheet.influenciaBoa_1 == false then
            		sheet.influenciaBoa_10 = false;
            		sheet.influenciaBoa_9 = false;
            		sheet.influenciaBoa_8 = false;
            		sheet.influenciaBoa_7 = false;
            		sheet.influenciaBoa_6 = false;
            		sheet.influenciaBoa_5 = false;
            		sheet.influenciaBoa_4 = false;
            		sheet.influenciaBoa_3 = false;
            		sheet.influenciaBoa_2 = false;
            	end;
        end, obj);

    obj._e_event42 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.famaRuim_10 == true then
            		sheet.famaRuim_9 = true;
            		sheet.famaRuim_8 = true;
            		sheet.famaRuim_7 = true;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_9 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_8 = true;
            		sheet.famaRuim_7 = true;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_8 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_7 = true;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_7 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_6 = true;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_6 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_5 = true;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_5 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_4 = true;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_4 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_3 = true;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_3 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_2 = true;
            		sheet.famaRuim_1 = true;
            	elseif sheet.famaRuim_2 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_3 = false;
            		sheet.famaRuim_1 = true;	
            	elseif sheet.famaRuim_1 == true then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_3 = false;
            		sheet.famaRuim_2 = false;
            	elseif sheet.famaRuim_1 == false then
            		sheet.famaRuim_10 = false;
            		sheet.famaRuim_9 = false;
            		sheet.famaRuim_8 = false;
            		sheet.famaRuim_7 = false;
            		sheet.famaRuim_6 = false;
            		sheet.famaRuim_5 = false;
            		sheet.famaRuim_4 = false;
            		sheet.famaRuim_3 = false;
            		sheet.famaRuim_2 = false;
            	end;
        end, obj);

    obj._e_event43 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.influenciaRuim_10 == true then
            		sheet.influenciaRuim_9 = true;
            		sheet.influenciaRuim_8 = true;
            		sheet.influenciaRuim_7 = true;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_9 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_8 = true;
            		sheet.influenciaRuim_7 = true;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_8 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_7 = true;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_7 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_6 = true;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_6 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_5 = true;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_5 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_4 = true;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_4 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_3 = true;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_3 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_2 = true;
            		sheet.influenciaRuim_1 = true;
            	elseif sheet.influenciaRuim_2 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_3 = false;
            		sheet.influenciaRuim_1 = true;	
            	elseif sheet.influenciaRuim_1 == true then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_3 = false;
            		sheet.influenciaRuim_2 = false;
            	elseif sheet.influenciaRuim_1 == false then
            		sheet.influenciaRuim_10 = false;
            		sheet.influenciaRuim_9 = false;
            		sheet.influenciaRuim_8 = false;
            		sheet.influenciaRuim_7 = false;
            		sheet.influenciaRuim_6 = false;
            		sheet.influenciaRuim_5 = false;
            		sheet.influenciaRuim_4 = false;
            		sheet.influenciaRuim_3 = false;
            		sheet.influenciaRuim_2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.imageCheckBox296 ~= nil then self.imageCheckBox296:destroy(); self.imageCheckBox296 = nil; end;
        if self.imageCheckBox377 ~= nil then self.imageCheckBox377:destroy(); self.imageCheckBox377 = nil; end;
        if self.imageCheckBox364 ~= nil then self.imageCheckBox364:destroy(); self.imageCheckBox364 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.imageCheckBox227 ~= nil then self.imageCheckBox227:destroy(); self.imageCheckBox227 = nil; end;
        if self.imageCheckBox287 ~= nil then self.imageCheckBox287:destroy(); self.imageCheckBox287 = nil; end;
        if self.imageCheckBox200 ~= nil then self.imageCheckBox200:destroy(); self.imageCheckBox200 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.imageCheckBox376 ~= nil then self.imageCheckBox376:destroy(); self.imageCheckBox376 = nil; end;
        if self.imageCheckBox357 ~= nil then self.imageCheckBox357:destroy(); self.imageCheckBox357 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.imageCheckBox175 ~= nil then self.imageCheckBox175:destroy(); self.imageCheckBox175 = nil; end;
        if self.imageCheckBox225 ~= nil then self.imageCheckBox225:destroy(); self.imageCheckBox225 = nil; end;
        if self.imageCheckBox360 ~= nil then self.imageCheckBox360:destroy(); self.imageCheckBox360 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.imageCheckBox417 ~= nil then self.imageCheckBox417:destroy(); self.imageCheckBox417 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.imageCheckBox414 ~= nil then self.imageCheckBox414:destroy(); self.imageCheckBox414 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.imageCheckBox288 ~= nil then self.imageCheckBox288:destroy(); self.imageCheckBox288 = nil; end;
        if self.imageCheckBox251 ~= nil then self.imageCheckBox251:destroy(); self.imageCheckBox251 = nil; end;
        if self.imageCheckBox210 ~= nil then self.imageCheckBox210:destroy(); self.imageCheckBox210 = nil; end;
        if self.imageCheckBox126 ~= nil then self.imageCheckBox126:destroy(); self.imageCheckBox126 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.imageCheckBox345 ~= nil then self.imageCheckBox345:destroy(); self.imageCheckBox345 = nil; end;
        if self.imageCheckBox289 ~= nil then self.imageCheckBox289:destroy(); self.imageCheckBox289 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.imageCheckBox304 ~= nil then self.imageCheckBox304:destroy(); self.imageCheckBox304 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.imageCheckBox166 ~= nil then self.imageCheckBox166:destroy(); self.imageCheckBox166 = nil; end;
        if self.imageCheckBox271 ~= nil then self.imageCheckBox271:destroy(); self.imageCheckBox271 = nil; end;
        if self.frmTeste ~= nil then self.frmTeste:destroy(); self.frmTeste = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.imageCheckBox176 ~= nil then self.imageCheckBox176:destroy(); self.imageCheckBox176 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.imageCheckBox196 ~= nil then self.imageCheckBox196:destroy(); self.imageCheckBox196 = nil; end;
        if self.imageCheckBox181 ~= nil then self.imageCheckBox181:destroy(); self.imageCheckBox181 = nil; end;
        if self.imageCheckBox174 ~= nil then self.imageCheckBox174:destroy(); self.imageCheckBox174 = nil; end;
        if self.imageCheckBox316 ~= nil then self.imageCheckBox316:destroy(); self.imageCheckBox316 = nil; end;
        if self.imageCheckBox129 ~= nil then self.imageCheckBox129:destroy(); self.imageCheckBox129 = nil; end;
        if self.imageCheckBox248 ~= nil then self.imageCheckBox248:destroy(); self.imageCheckBox248 = nil; end;
        if self.imageCheckBox168 ~= nil then self.imageCheckBox168:destroy(); self.imageCheckBox168 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox290 ~= nil then self.imageCheckBox290:destroy(); self.imageCheckBox290 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.imageCheckBox337 ~= nil then self.imageCheckBox337:destroy(); self.imageCheckBox337 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.imageCheckBox191 ~= nil then self.imageCheckBox191:destroy(); self.imageCheckBox191 = nil; end;
        if self.imageCheckBox145 ~= nil then self.imageCheckBox145:destroy(); self.imageCheckBox145 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.imageCheckBox150 ~= nil then self.imageCheckBox150:destroy(); self.imageCheckBox150 = nil; end;
        if self.imageCheckBox136 ~= nil then self.imageCheckBox136:destroy(); self.imageCheckBox136 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.imageCheckBox336 ~= nil then self.imageCheckBox336:destroy(); self.imageCheckBox336 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.imageCheckBox214 ~= nil then self.imageCheckBox214:destroy(); self.imageCheckBox214 = nil; end;
        if self.imageCheckBox241 ~= nil then self.imageCheckBox241:destroy(); self.imageCheckBox241 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.imageCheckBox349 ~= nil then self.imageCheckBox349:destroy(); self.imageCheckBox349 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.imageCheckBox401 ~= nil then self.imageCheckBox401:destroy(); self.imageCheckBox401 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.imageCheckBox346 ~= nil then self.imageCheckBox346:destroy(); self.imageCheckBox346 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox131 ~= nil then self.imageCheckBox131:destroy(); self.imageCheckBox131 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.imageCheckBox154 ~= nil then self.imageCheckBox154:destroy(); self.imageCheckBox154 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.imageCheckBox326 ~= nil then self.imageCheckBox326:destroy(); self.imageCheckBox326 = nil; end;
        if self.imageCheckBox331 ~= nil then self.imageCheckBox331:destroy(); self.imageCheckBox331 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.imageCheckBox358 ~= nil then self.imageCheckBox358:destroy(); self.imageCheckBox358 = nil; end;
        if self.imageCheckBox224 ~= nil then self.imageCheckBox224:destroy(); self.imageCheckBox224 = nil; end;
        if self.imageCheckBox373 ~= nil then self.imageCheckBox373:destroy(); self.imageCheckBox373 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.imageCheckBox285 ~= nil then self.imageCheckBox285:destroy(); self.imageCheckBox285 = nil; end;
        if self.imageCheckBox233 ~= nil then self.imageCheckBox233:destroy(); self.imageCheckBox233 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.imageCheckBox350 ~= nil then self.imageCheckBox350:destroy(); self.imageCheckBox350 = nil; end;
        if self.imageCheckBox354 ~= nil then self.imageCheckBox354:destroy(); self.imageCheckBox354 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.imageCheckBox390 ~= nil then self.imageCheckBox390:destroy(); self.imageCheckBox390 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.imageCheckBox371 ~= nil then self.imageCheckBox371:destroy(); self.imageCheckBox371 = nil; end;
        if self.imageCheckBox239 ~= nil then self.imageCheckBox239:destroy(); self.imageCheckBox239 = nil; end;
        if self.imageCheckBox208 ~= nil then self.imageCheckBox208:destroy(); self.imageCheckBox208 = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.imageCheckBox352 ~= nil then self.imageCheckBox352:destroy(); self.imageCheckBox352 = nil; end;
        if self.imageCheckBox207 ~= nil then self.imageCheckBox207:destroy(); self.imageCheckBox207 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.imageCheckBox194 ~= nil then self.imageCheckBox194:destroy(); self.imageCheckBox194 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.imageCheckBox302 ~= nil then self.imageCheckBox302:destroy(); self.imageCheckBox302 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.imageCheckBox343 ~= nil then self.imageCheckBox343:destroy(); self.imageCheckBox343 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.imageCheckBox155 ~= nil then self.imageCheckBox155:destroy(); self.imageCheckBox155 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.imageCheckBox406 ~= nil then self.imageCheckBox406:destroy(); self.imageCheckBox406 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox182 ~= nil then self.imageCheckBox182:destroy(); self.imageCheckBox182 = nil; end;
        if self.imageCheckBox318 ~= nil then self.imageCheckBox318:destroy(); self.imageCheckBox318 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.imageCheckBox341 ~= nil then self.imageCheckBox341:destroy(); self.imageCheckBox341 = nil; end;
        if self.imageCheckBox314 ~= nil then self.imageCheckBox314:destroy(); self.imageCheckBox314 = nil; end;
        if self.imageCheckBox382 ~= nil then self.imageCheckBox382:destroy(); self.imageCheckBox382 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.imageCheckBox219 ~= nil then self.imageCheckBox219:destroy(); self.imageCheckBox219 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.imageCheckBox246 ~= nil then self.imageCheckBox246:destroy(); self.imageCheckBox246 = nil; end;
        if self.imageCheckBox340 ~= nil then self.imageCheckBox340:destroy(); self.imageCheckBox340 = nil; end;
        if self.imageCheckBox391 ~= nil then self.imageCheckBox391:destroy(); self.imageCheckBox391 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.imageCheckBox260 ~= nil then self.imageCheckBox260:destroy(); self.imageCheckBox260 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.imageCheckBox381 ~= nil then self.imageCheckBox381:destroy(); self.imageCheckBox381 = nil; end;
        if self.imageCheckBox173 ~= nil then self.imageCheckBox173:destroy(); self.imageCheckBox173 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.imageCheckBox309 ~= nil then self.imageCheckBox309:destroy(); self.imageCheckBox309 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox106 ~= nil then self.imageCheckBox106:destroy(); self.imageCheckBox106 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox128 ~= nil then self.imageCheckBox128:destroy(); self.imageCheckBox128 = nil; end;
        if self.imageCheckBox193 ~= nil then self.imageCheckBox193:destroy(); self.imageCheckBox193 = nil; end;
        if self.imageCheckBox205 ~= nil then self.imageCheckBox205:destroy(); self.imageCheckBox205 = nil; end;
        if self.imageCheckBox255 ~= nil then self.imageCheckBox255:destroy(); self.imageCheckBox255 = nil; end;
        if self.imageCheckBox213 ~= nil then self.imageCheckBox213:destroy(); self.imageCheckBox213 = nil; end;
        if self.imageCheckBox315 ~= nil then self.imageCheckBox315:destroy(); self.imageCheckBox315 = nil; end;
        if self.imageCheckBox333 ~= nil then self.imageCheckBox333:destroy(); self.imageCheckBox333 = nil; end;
        if self.imageCheckBox399 ~= nil then self.imageCheckBox399:destroy(); self.imageCheckBox399 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox298 ~= nil then self.imageCheckBox298:destroy(); self.imageCheckBox298 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox400 ~= nil then self.imageCheckBox400:destroy(); self.imageCheckBox400 = nil; end;
        if self.imageCheckBox325 ~= nil then self.imageCheckBox325:destroy(); self.imageCheckBox325 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox249 ~= nil then self.imageCheckBox249:destroy(); self.imageCheckBox249 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.imageCheckBox392 ~= nil then self.imageCheckBox392:destroy(); self.imageCheckBox392 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.imageCheckBox361 ~= nil then self.imageCheckBox361:destroy(); self.imageCheckBox361 = nil; end;
        if self.imageCheckBox403 ~= nil then self.imageCheckBox403:destroy(); self.imageCheckBox403 = nil; end;
        if self.imageCheckBox313 ~= nil then self.imageCheckBox313:destroy(); self.imageCheckBox313 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.imageCheckBox339 ~= nil then self.imageCheckBox339:destroy(); self.imageCheckBox339 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.imageCheckBox305 ~= nil then self.imageCheckBox305:destroy(); self.imageCheckBox305 = nil; end;
        if self.imageCheckBox231 ~= nil then self.imageCheckBox231:destroy(); self.imageCheckBox231 = nil; end;
        if self.imageCheckBox351 ~= nil then self.imageCheckBox351:destroy(); self.imageCheckBox351 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.imageCheckBox247 ~= nil then self.imageCheckBox247:destroy(); self.imageCheckBox247 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.imageCheckBox125 ~= nil then self.imageCheckBox125:destroy(); self.imageCheckBox125 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox370 ~= nil then self.imageCheckBox370:destroy(); self.imageCheckBox370 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.imageCheckBox142 ~= nil then self.imageCheckBox142:destroy(); self.imageCheckBox142 = nil; end;
        if self.imageCheckBox264 ~= nil then self.imageCheckBox264:destroy(); self.imageCheckBox264 = nil; end;
        if self.imageCheckBox180 ~= nil then self.imageCheckBox180:destroy(); self.imageCheckBox180 = nil; end;
        if self.imageCheckBox253 ~= nil then self.imageCheckBox253:destroy(); self.imageCheckBox253 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.imageCheckBox252 ~= nil then self.imageCheckBox252:destroy(); self.imageCheckBox252 = nil; end;
        if self.imageCheckBox322 ~= nil then self.imageCheckBox322:destroy(); self.imageCheckBox322 = nil; end;
        if self.imageCheckBox262 ~= nil then self.imageCheckBox262:destroy(); self.imageCheckBox262 = nil; end;
        if self.imageCheckBox157 ~= nil then self.imageCheckBox157:destroy(); self.imageCheckBox157 = nil; end;
        if self.imageCheckBox355 ~= nil then self.imageCheckBox355:destroy(); self.imageCheckBox355 = nil; end;
        if self.imageCheckBox172 ~= nil then self.imageCheckBox172:destroy(); self.imageCheckBox172 = nil; end;
        if self.imageCheckBox156 ~= nil then self.imageCheckBox156:destroy(); self.imageCheckBox156 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.imageCheckBox127 ~= nil then self.imageCheckBox127:destroy(); self.imageCheckBox127 = nil; end;
        if self.imageCheckBox222 ~= nil then self.imageCheckBox222:destroy(); self.imageCheckBox222 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.imageCheckBox307 ~= nil then self.imageCheckBox307:destroy(); self.imageCheckBox307 = nil; end;
        if self.imageCheckBox294 ~= nil then self.imageCheckBox294:destroy(); self.imageCheckBox294 = nil; end;
        if self.imageCheckBox405 ~= nil then self.imageCheckBox405:destroy(); self.imageCheckBox405 = nil; end;
        if self.imageCheckBox415 ~= nil then self.imageCheckBox415:destroy(); self.imageCheckBox415 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.imageCheckBox158 ~= nil then self.imageCheckBox158:destroy(); self.imageCheckBox158 = nil; end;
        if self.imageCheckBox179 ~= nil then self.imageCheckBox179:destroy(); self.imageCheckBox179 = nil; end;
        if self.imageCheckBox220 ~= nil then self.imageCheckBox220:destroy(); self.imageCheckBox220 = nil; end;
        if self.imageCheckBox171 ~= nil then self.imageCheckBox171:destroy(); self.imageCheckBox171 = nil; end;
        if self.imageCheckBox235 ~= nil then self.imageCheckBox235:destroy(); self.imageCheckBox235 = nil; end;
        if self.imageCheckBox334 ~= nil then self.imageCheckBox334:destroy(); self.imageCheckBox334 = nil; end;
        if self.imageCheckBox204 ~= nil then self.imageCheckBox204:destroy(); self.imageCheckBox204 = nil; end;
        if self.imageCheckBox250 ~= nil then self.imageCheckBox250:destroy(); self.imageCheckBox250 = nil; end;
        if self.imageCheckBox197 ~= nil then self.imageCheckBox197:destroy(); self.imageCheckBox197 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.imageCheckBox242 ~= nil then self.imageCheckBox242:destroy(); self.imageCheckBox242 = nil; end;
        if self.imageCheckBox111 ~= nil then self.imageCheckBox111:destroy(); self.imageCheckBox111 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox211 ~= nil then self.imageCheckBox211:destroy(); self.imageCheckBox211 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.imageCheckBox268 ~= nil then self.imageCheckBox268:destroy(); self.imageCheckBox268 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.imageCheckBox165 ~= nil then self.imageCheckBox165:destroy(); self.imageCheckBox165 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.imageCheckBox237 ~= nil then self.imageCheckBox237:destroy(); self.imageCheckBox237 = nil; end;
        if self.imageCheckBox292 ~= nil then self.imageCheckBox292:destroy(); self.imageCheckBox292 = nil; end;
        if self.imageCheckBox347 ~= nil then self.imageCheckBox347:destroy(); self.imageCheckBox347 = nil; end;
        if self.imageCheckBox308 ~= nil then self.imageCheckBox308:destroy(); self.imageCheckBox308 = nil; end;
        if self.imageCheckBox375 ~= nil then self.imageCheckBox375:destroy(); self.imageCheckBox375 = nil; end;
        if self.imageCheckBox291 ~= nil then self.imageCheckBox291:destroy(); self.imageCheckBox291 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.imageCheckBox195 ~= nil then self.imageCheckBox195:destroy(); self.imageCheckBox195 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.imageCheckBox328 ~= nil then self.imageCheckBox328:destroy(); self.imageCheckBox328 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.imageCheckBox344 ~= nil then self.imageCheckBox344:destroy(); self.imageCheckBox344 = nil; end;
        if self.imageCheckBox295 ~= nil then self.imageCheckBox295:destroy(); self.imageCheckBox295 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.imageCheckBox283 ~= nil then self.imageCheckBox283:destroy(); self.imageCheckBox283 = nil; end;
        if self.imageCheckBox306 ~= nil then self.imageCheckBox306:destroy(); self.imageCheckBox306 = nil; end;
        if self.imageCheckBox215 ~= nil then self.imageCheckBox215:destroy(); self.imageCheckBox215 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.imageCheckBox332 ~= nil then self.imageCheckBox332:destroy(); self.imageCheckBox332 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.imageCheckBox153 ~= nil then self.imageCheckBox153:destroy(); self.imageCheckBox153 = nil; end;
        if self.imageCheckBox192 ~= nil then self.imageCheckBox192:destroy(); self.imageCheckBox192 = nil; end;
        if self.imageCheckBox320 ~= nil then self.imageCheckBox320:destroy(); self.imageCheckBox320 = nil; end;
        if self.imageCheckBox301 ~= nil then self.imageCheckBox301:destroy(); self.imageCheckBox301 = nil; end;
        if self.imageCheckBox244 ~= nil then self.imageCheckBox244:destroy(); self.imageCheckBox244 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.imageCheckBox138 ~= nil then self.imageCheckBox138:destroy(); self.imageCheckBox138 = nil; end;
        if self.imageCheckBox198 ~= nil then self.imageCheckBox198:destroy(); self.imageCheckBox198 = nil; end;
        if self.imageCheckBox199 ~= nil then self.imageCheckBox199:destroy(); self.imageCheckBox199 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.imageCheckBox267 ~= nil then self.imageCheckBox267:destroy(); self.imageCheckBox267 = nil; end;
        if self.imageCheckBox258 ~= nil then self.imageCheckBox258:destroy(); self.imageCheckBox258 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.imageCheckBox330 ~= nil then self.imageCheckBox330:destroy(); self.imageCheckBox330 = nil; end;
        if self.imageCheckBox263 ~= nil then self.imageCheckBox263:destroy(); self.imageCheckBox263 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.imageCheckBox367 ~= nil then self.imageCheckBox367:destroy(); self.imageCheckBox367 = nil; end;
        if self.imageCheckBox412 ~= nil then self.imageCheckBox412:destroy(); self.imageCheckBox412 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox229 ~= nil then self.imageCheckBox229:destroy(); self.imageCheckBox229 = nil; end;
        if self.imageCheckBox265 ~= nil then self.imageCheckBox265:destroy(); self.imageCheckBox265 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.imageCheckBox385 ~= nil then self.imageCheckBox385:destroy(); self.imageCheckBox385 = nil; end;
        if self.imageCheckBox293 ~= nil then self.imageCheckBox293:destroy(); self.imageCheckBox293 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.imageCheckBox393 ~= nil then self.imageCheckBox393:destroy(); self.imageCheckBox393 = nil; end;
        if self.imageCheckBox256 ~= nil then self.imageCheckBox256:destroy(); self.imageCheckBox256 = nil; end;
        if self.imageCheckBox366 ~= nil then self.imageCheckBox366:destroy(); self.imageCheckBox366 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.imageCheckBox335 ~= nil then self.imageCheckBox335:destroy(); self.imageCheckBox335 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox123 ~= nil then self.imageCheckBox123:destroy(); self.imageCheckBox123 = nil; end;
        if self.imageCheckBox234 ~= nil then self.imageCheckBox234:destroy(); self.imageCheckBox234 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.imageCheckBox238 ~= nil then self.imageCheckBox238:destroy(); self.imageCheckBox238 = nil; end;
        if self.imageCheckBox184 ~= nil then self.imageCheckBox184:destroy(); self.imageCheckBox184 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox169 ~= nil then self.imageCheckBox169:destroy(); self.imageCheckBox169 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.imageCheckBox134 ~= nil then self.imageCheckBox134:destroy(); self.imageCheckBox134 = nil; end;
        if self.imageCheckBox217 ~= nil then self.imageCheckBox217:destroy(); self.imageCheckBox217 = nil; end;
        if self.imageCheckBox275 ~= nil then self.imageCheckBox275:destroy(); self.imageCheckBox275 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox280 ~= nil then self.imageCheckBox280:destroy(); self.imageCheckBox280 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.imageCheckBox146 ~= nil then self.imageCheckBox146:destroy(); self.imageCheckBox146 = nil; end;
        if self.imageCheckBox300 ~= nil then self.imageCheckBox300:destroy(); self.imageCheckBox300 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.imageCheckBox279 ~= nil then self.imageCheckBox279:destroy(); self.imageCheckBox279 = nil; end;
        if self.imageCheckBox278 ~= nil then self.imageCheckBox278:destroy(); self.imageCheckBox278 = nil; end;
        if self.imageCheckBox297 ~= nil then self.imageCheckBox297:destroy(); self.imageCheckBox297 = nil; end;
        if self.imageCheckBox135 ~= nil then self.imageCheckBox135:destroy(); self.imageCheckBox135 = nil; end;
        if self.imageCheckBox380 ~= nil then self.imageCheckBox380:destroy(); self.imageCheckBox380 = nil; end;
        if self.imageCheckBox206 ~= nil then self.imageCheckBox206:destroy(); self.imageCheckBox206 = nil; end;
        if self.imageCheckBox386 ~= nil then self.imageCheckBox386:destroy(); self.imageCheckBox386 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.imageCheckBox162 ~= nil then self.imageCheckBox162:destroy(); self.imageCheckBox162 = nil; end;
        if self.imageCheckBox286 ~= nil then self.imageCheckBox286:destroy(); self.imageCheckBox286 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox338 ~= nil then self.imageCheckBox338:destroy(); self.imageCheckBox338 = nil; end;
        if self.imageCheckBox404 ~= nil then self.imageCheckBox404:destroy(); self.imageCheckBox404 = nil; end;
        if self.imageCheckBox410 ~= nil then self.imageCheckBox410:destroy(); self.imageCheckBox410 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.imageCheckBox139 ~= nil then self.imageCheckBox139:destroy(); self.imageCheckBox139 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.imageCheckBox187 ~= nil then self.imageCheckBox187:destroy(); self.imageCheckBox187 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.imageCheckBox163 ~= nil then self.imageCheckBox163:destroy(); self.imageCheckBox163 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.imageCheckBox223 ~= nil then self.imageCheckBox223:destroy(); self.imageCheckBox223 = nil; end;
        if self.imageCheckBox272 ~= nil then self.imageCheckBox272:destroy(); self.imageCheckBox272 = nil; end;
        if self.imageCheckBox323 ~= nil then self.imageCheckBox323:destroy(); self.imageCheckBox323 = nil; end;
        if self.imageCheckBox266 ~= nil then self.imageCheckBox266:destroy(); self.imageCheckBox266 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.imageCheckBox379 ~= nil then self.imageCheckBox379:destroy(); self.imageCheckBox379 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.imageCheckBox409 ~= nil then self.imageCheckBox409:destroy(); self.imageCheckBox409 = nil; end;
        if self.imageCheckBox245 ~= nil then self.imageCheckBox245:destroy(); self.imageCheckBox245 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.imageCheckBox303 ~= nil then self.imageCheckBox303:destroy(); self.imageCheckBox303 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.imageCheckBox259 ~= nil then self.imageCheckBox259:destroy(); self.imageCheckBox259 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.imageCheckBox369 ~= nil then self.imageCheckBox369:destroy(); self.imageCheckBox369 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.imageCheckBox327 ~= nil then self.imageCheckBox327:destroy(); self.imageCheckBox327 = nil; end;
        if self.imageCheckBox329 ~= nil then self.imageCheckBox329:destroy(); self.imageCheckBox329 = nil; end;
        if self.imageCheckBox342 ~= nil then self.imageCheckBox342:destroy(); self.imageCheckBox342 = nil; end;
        if self.imageCheckBox374 ~= nil then self.imageCheckBox374:destroy(); self.imageCheckBox374 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.imageCheckBox202 ~= nil then self.imageCheckBox202:destroy(); self.imageCheckBox202 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.imageCheckBox226 ~= nil then self.imageCheckBox226:destroy(); self.imageCheckBox226 = nil; end;
        if self.imageCheckBox348 ~= nil then self.imageCheckBox348:destroy(); self.imageCheckBox348 = nil; end;
        if self.imageCheckBox276 ~= nil then self.imageCheckBox276:destroy(); self.imageCheckBox276 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox389 ~= nil then self.imageCheckBox389:destroy(); self.imageCheckBox389 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.imageCheckBox353 ~= nil then self.imageCheckBox353:destroy(); self.imageCheckBox353 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.imageCheckBox396 ~= nil then self.imageCheckBox396:destroy(); self.imageCheckBox396 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox270 ~= nil then self.imageCheckBox270:destroy(); self.imageCheckBox270 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.imageCheckBox274 ~= nil then self.imageCheckBox274:destroy(); self.imageCheckBox274 = nil; end;
        if self.imageCheckBox281 ~= nil then self.imageCheckBox281:destroy(); self.imageCheckBox281 = nil; end;
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
        if self.imageCheckBox398 ~= nil then self.imageCheckBox398:destroy(); self.imageCheckBox398 = nil; end;
        if self.imageCheckBox372 ~= nil then self.imageCheckBox372:destroy(); self.imageCheckBox372 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.imageCheckBox359 ~= nil then self.imageCheckBox359:destroy(); self.imageCheckBox359 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox319 ~= nil then self.imageCheckBox319:destroy(); self.imageCheckBox319 = nil; end;
        if self.imageCheckBox363 ~= nil then self.imageCheckBox363:destroy(); self.imageCheckBox363 = nil; end;
        if self.imageCheckBox317 ~= nil then self.imageCheckBox317:destroy(); self.imageCheckBox317 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.imageCheckBox378 ~= nil then self.imageCheckBox378:destroy(); self.imageCheckBox378 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox188 ~= nil then self.imageCheckBox188:destroy(); self.imageCheckBox188 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.imageCheckBox209 ~= nil then self.imageCheckBox209:destroy(); self.imageCheckBox209 = nil; end;
        if self.imageCheckBox218 ~= nil then self.imageCheckBox218:destroy(); self.imageCheckBox218 = nil; end;
        if self.imageCheckBox228 ~= nil then self.imageCheckBox228:destroy(); self.imageCheckBox228 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.imageCheckBox261 ~= nil then self.imageCheckBox261:destroy(); self.imageCheckBox261 = nil; end;
        if self.imageCheckBox284 ~= nil then self.imageCheckBox284:destroy(); self.imageCheckBox284 = nil; end;
        if self.imageCheckBox177 ~= nil then self.imageCheckBox177:destroy(); self.imageCheckBox177 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox321 ~= nil then self.imageCheckBox321:destroy(); self.imageCheckBox321 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.imageCheckBox407 ~= nil then self.imageCheckBox407:destroy(); self.imageCheckBox407 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.imageCheckBox368 ~= nil then self.imageCheckBox368:destroy(); self.imageCheckBox368 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.imageCheckBox144 ~= nil then self.imageCheckBox144:destroy(); self.imageCheckBox144 = nil; end;
        if self.imageCheckBox299 ~= nil then self.imageCheckBox299:destroy(); self.imageCheckBox299 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.imageCheckBox236 ~= nil then self.imageCheckBox236:destroy(); self.imageCheckBox236 = nil; end;
        if self.imageCheckBox413 ~= nil then self.imageCheckBox413:destroy(); self.imageCheckBox413 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox395 ~= nil then self.imageCheckBox395:destroy(); self.imageCheckBox395 = nil; end;
        if self.imageCheckBox151 ~= nil then self.imageCheckBox151:destroy(); self.imageCheckBox151 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox243 ~= nil then self.imageCheckBox243:destroy(); self.imageCheckBox243 = nil; end;
        if self.imageCheckBox388 ~= nil then self.imageCheckBox388:destroy(); self.imageCheckBox388 = nil; end;
        if self.imageCheckBox397 ~= nil then self.imageCheckBox397:destroy(); self.imageCheckBox397 = nil; end;
        if self.imageCheckBox212 ~= nil then self.imageCheckBox212:destroy(); self.imageCheckBox212 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox140 ~= nil then self.imageCheckBox140:destroy(); self.imageCheckBox140 = nil; end;
        if self.imageCheckBox221 ~= nil then self.imageCheckBox221:destroy(); self.imageCheckBox221 = nil; end;
        if self.imageCheckBox282 ~= nil then self.imageCheckBox282:destroy(); self.imageCheckBox282 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.imageCheckBox216 ~= nil then self.imageCheckBox216:destroy(); self.imageCheckBox216 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.imageCheckBox365 ~= nil then self.imageCheckBox365:destroy(); self.imageCheckBox365 = nil; end;
        if self.imageCheckBox273 ~= nil then self.imageCheckBox273:destroy(); self.imageCheckBox273 = nil; end;
        if self.imageCheckBox387 ~= nil then self.imageCheckBox387:destroy(); self.imageCheckBox387 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.imageCheckBox269 ~= nil then self.imageCheckBox269:destroy(); self.imageCheckBox269 = nil; end;
        if self.imageCheckBox411 ~= nil then self.imageCheckBox411:destroy(); self.imageCheckBox411 = nil; end;
        if self.imageCheckBox277 ~= nil then self.imageCheckBox277:destroy(); self.imageCheckBox277 = nil; end;
        if self.imageCheckBox311 ~= nil then self.imageCheckBox311:destroy(); self.imageCheckBox311 = nil; end;
        if self.imageCheckBox312 ~= nil then self.imageCheckBox312:destroy(); self.imageCheckBox312 = nil; end;
        if self.imageCheckBox356 ~= nil then self.imageCheckBox356:destroy(); self.imageCheckBox356 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.imageCheckBox384 ~= nil then self.imageCheckBox384:destroy(); self.imageCheckBox384 = nil; end;
        if self.imageCheckBox240 ~= nil then self.imageCheckBox240:destroy(); self.imageCheckBox240 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.imageCheckBox416 ~= nil then self.imageCheckBox416:destroy(); self.imageCheckBox416 = nil; end;
        if self.imageCheckBox324 ~= nil then self.imageCheckBox324:destroy(); self.imageCheckBox324 = nil; end;
        if self.imageCheckBox257 ~= nil then self.imageCheckBox257:destroy(); self.imageCheckBox257 = nil; end;
        if self.imageCheckBox402 ~= nil then self.imageCheckBox402:destroy(); self.imageCheckBox402 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox394 ~= nil then self.imageCheckBox394:destroy(); self.imageCheckBox394 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox230 ~= nil then self.imageCheckBox230:destroy(); self.imageCheckBox230 = nil; end;
        if self.imageCheckBox183 ~= nil then self.imageCheckBox183:destroy(); self.imageCheckBox183 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.imageCheckBox408 ~= nil then self.imageCheckBox408:destroy(); self.imageCheckBox408 = nil; end;
        if self.imageCheckBox310 ~= nil then self.imageCheckBox310:destroy(); self.imageCheckBox310 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.imageCheckBox232 ~= nil then self.imageCheckBox232:destroy(); self.imageCheckBox232 = nil; end;
        if self.imageCheckBox383 ~= nil then self.imageCheckBox383:destroy(); self.imageCheckBox383 = nil; end;
        if self.imageCheckBox167 ~= nil then self.imageCheckBox167:destroy(); self.imageCheckBox167 = nil; end;
        if self.imageCheckBox362 ~= nil then self.imageCheckBox362:destroy(); self.imageCheckBox362 = nil; end;
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
