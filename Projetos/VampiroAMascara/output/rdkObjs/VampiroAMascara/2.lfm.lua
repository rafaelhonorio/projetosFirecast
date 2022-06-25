require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_VampiroAMascara2()
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
    obj:setName("VampiroAMascara2");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(29);
    obj.layout1:setWidth(880);
    obj.layout1:setHeight(3);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setTop(0);
    obj.image1:setLeft(285);
    obj.image1:setWidth(300);
    obj.image1:setHeight(250);
    obj.image1:setSRC("/VampiroAMascara/img/vampiro.png");
    obj.image1:setName("image1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(200);
    obj.layout2:setWidth(880);
    obj.layout2:setHeight(3);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setName("rectangle2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setTop(200);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(500);
    obj.layout3:setName("layout3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setHeight(25);
    obj.rectangle3:setWidth(880);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setName("rectangle3");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout3);
    obj.label1:setLeft(350);
    obj.label1:setTop(2);
    obj.label1:setWidth(250);
    obj.label1:setHeight(20);
    obj.label1:setText("Outros Características");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("White");
    obj.label1:setName("label1");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(20);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(200);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(10);
    obj.layout5:setWidth(290);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout5);
    obj.edit1:setLeft(40);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(135);
    obj.edit1:setHeight(25);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setField("1outras1");
    obj.edit1:setType("text");
    obj.edit1:setName("edit1");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout5);
    obj.imageCheckBox1:setField("1outras1_1");
    obj.imageCheckBox1:setLeft(177);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout5);
    obj.imageCheckBox2:setField("1outras1_2");
    obj.imageCheckBox2:setLeft(195);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout5);
    obj.imageCheckBox3:setField("1outras1_3");
    obj.imageCheckBox3:setLeft(213);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout5);
    obj.imageCheckBox4:setField("1outras1_4");
    obj.imageCheckBox4:setLeft(231);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout5);
    obj.imageCheckBox5:setField("1outras1_5");
    obj.imageCheckBox5:setLeft(249);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(15);
    obj.imageCheckBox5:setHeight(15);
    obj.imageCheckBox5:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox5:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout4);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(35);
    obj.layout6:setWidth(290);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setLeft(40);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(135);
    obj.edit2:setHeight(25);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setField("1outras2");
    obj.edit2:setType("text");
    obj.edit2:setName("edit2");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout6);
    obj.imageCheckBox6:setField("1outras2_1");
    obj.imageCheckBox6:setLeft(177);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout6);
    obj.imageCheckBox7:setField("1outras2_2");
    obj.imageCheckBox7:setLeft(195);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout6);
    obj.imageCheckBox8:setField("1outras2_3");
    obj.imageCheckBox8:setLeft(213);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout6);
    obj.imageCheckBox9:setField("1outras2_4");
    obj.imageCheckBox9:setLeft(231);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout6);
    obj.imageCheckBox10:setField("1outras2_5");
    obj.imageCheckBox10:setLeft(249);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(15);
    obj.imageCheckBox10:setHeight(15);
    obj.imageCheckBox10:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox10:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout4);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(60);
    obj.layout7:setWidth(290);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout7);
    obj.edit3:setLeft(40);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(135);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("1outras3");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout7);
    obj.imageCheckBox11:setField("1outras3_1");
    obj.imageCheckBox11:setLeft(177);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout7);
    obj.imageCheckBox12:setField("1outras3_2");
    obj.imageCheckBox12:setLeft(195);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout7);
    obj.imageCheckBox13:setField("1outras3_3");
    obj.imageCheckBox13:setLeft(213);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout7);
    obj.imageCheckBox14:setField("1outras3_4");
    obj.imageCheckBox14:setLeft(231);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout7);
    obj.imageCheckBox15:setField("1outras3_5");
    obj.imageCheckBox15:setLeft(249);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(15);
    obj.imageCheckBox15:setHeight(15);
    obj.imageCheckBox15:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox15:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout4);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(85);
    obj.layout8:setWidth(290);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setLeft(40);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(135);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("1outras4");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout8);
    obj.imageCheckBox16:setField("1outras4_1");
    obj.imageCheckBox16:setLeft(177);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(15);
    obj.imageCheckBox16:setHeight(15);
    obj.imageCheckBox16:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox16:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout8);
    obj.imageCheckBox17:setField("1outras4_2");
    obj.imageCheckBox17:setLeft(195);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(15);
    obj.imageCheckBox17:setHeight(15);
    obj.imageCheckBox17:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox17:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout8);
    obj.imageCheckBox18:setField("1outras4_3");
    obj.imageCheckBox18:setLeft(213);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(15);
    obj.imageCheckBox18:setHeight(15);
    obj.imageCheckBox18:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox18:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout8);
    obj.imageCheckBox19:setField("1outras4_4");
    obj.imageCheckBox19:setLeft(231);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(15);
    obj.imageCheckBox19:setHeight(15);
    obj.imageCheckBox19:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox19:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout8);
    obj.imageCheckBox20:setField("1outras4_5");
    obj.imageCheckBox20:setLeft(249);
    obj.imageCheckBox20:setTop(4);
    obj.imageCheckBox20:setWidth(15);
    obj.imageCheckBox20:setHeight(15);
    obj.imageCheckBox20:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox20:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout4);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(110);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout9);
    obj.edit5:setLeft(40);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(135);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("1outras5");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout9);
    obj.imageCheckBox21:setField("1outras5_1");
    obj.imageCheckBox21:setLeft(177);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(15);
    obj.imageCheckBox21:setHeight(15);
    obj.imageCheckBox21:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox21:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout9);
    obj.imageCheckBox22:setField("1outras5_2");
    obj.imageCheckBox22:setLeft(195);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(15);
    obj.imageCheckBox22:setHeight(15);
    obj.imageCheckBox22:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox22:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout9);
    obj.imageCheckBox23:setField("1outras5_3");
    obj.imageCheckBox23:setLeft(213);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(15);
    obj.imageCheckBox23:setHeight(15);
    obj.imageCheckBox23:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox23:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout9);
    obj.imageCheckBox24:setField("1outras5_4");
    obj.imageCheckBox24:setLeft(231);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(15);
    obj.imageCheckBox24:setHeight(15);
    obj.imageCheckBox24:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox24:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout9);
    obj.imageCheckBox25:setField("1outras5_5");
    obj.imageCheckBox25:setLeft(249);
    obj.imageCheckBox25:setTop(4);
    obj.imageCheckBox25:setWidth(15);
    obj.imageCheckBox25:setHeight(15);
    obj.imageCheckBox25:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox25:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout3);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(20);
    obj.layout10:setWidth(880);
    obj.layout10:setHeight(200);
    obj.layout10:setName("layout10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout10);
    obj.layout11:setLeft(300);
    obj.layout11:setTop(10);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout11);
    obj.edit6:setLeft(40);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(135);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("2outras1");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout11);
    obj.imageCheckBox26:setField("2outras1_1");
    obj.imageCheckBox26:setLeft(177);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(15);
    obj.imageCheckBox26:setHeight(15);
    obj.imageCheckBox26:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox26:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout11);
    obj.imageCheckBox27:setField("2outras1_2");
    obj.imageCheckBox27:setLeft(195);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(15);
    obj.imageCheckBox27:setHeight(15);
    obj.imageCheckBox27:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox27:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout11);
    obj.imageCheckBox28:setField("2outras1_3");
    obj.imageCheckBox28:setLeft(213);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(15);
    obj.imageCheckBox28:setHeight(15);
    obj.imageCheckBox28:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox28:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout11);
    obj.imageCheckBox29:setField("2outras1_4");
    obj.imageCheckBox29:setLeft(231);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(15);
    obj.imageCheckBox29:setHeight(15);
    obj.imageCheckBox29:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox29:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout11);
    obj.imageCheckBox30:setField("2outras1_5");
    obj.imageCheckBox30:setLeft(249);
    obj.imageCheckBox30:setTop(4);
    obj.imageCheckBox30:setWidth(15);
    obj.imageCheckBox30:setHeight(15);
    obj.imageCheckBox30:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox30:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout10);
    obj.layout12:setLeft(300);
    obj.layout12:setTop(35);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout12);
    obj.edit7:setLeft(40);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(135);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("2outras2");
    obj.edit7:setType("text");
    obj.edit7:setName("edit7");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout12);
    obj.imageCheckBox31:setField("2outras2_1");
    obj.imageCheckBox31:setLeft(177);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(15);
    obj.imageCheckBox31:setHeight(15);
    obj.imageCheckBox31:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox31:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout12);
    obj.imageCheckBox32:setField("2outras2_2");
    obj.imageCheckBox32:setLeft(195);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(15);
    obj.imageCheckBox32:setHeight(15);
    obj.imageCheckBox32:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox32:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout12);
    obj.imageCheckBox33:setField("2outras2_3");
    obj.imageCheckBox33:setLeft(213);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(15);
    obj.imageCheckBox33:setHeight(15);
    obj.imageCheckBox33:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox33:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout12);
    obj.imageCheckBox34:setField("2outras2_4");
    obj.imageCheckBox34:setLeft(231);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(15);
    obj.imageCheckBox34:setHeight(15);
    obj.imageCheckBox34:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox34:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout12);
    obj.imageCheckBox35:setField("2outras2_5");
    obj.imageCheckBox35:setLeft(249);
    obj.imageCheckBox35:setTop(4);
    obj.imageCheckBox35:setWidth(15);
    obj.imageCheckBox35:setHeight(15);
    obj.imageCheckBox35:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox35:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout10);
    obj.layout13:setLeft(300);
    obj.layout13:setTop(60);
    obj.layout13:setWidth(290);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout13);
    obj.edit8:setLeft(40);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(135);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("2outras3");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout13);
    obj.imageCheckBox36:setField("2outras3_1");
    obj.imageCheckBox36:setLeft(177);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(15);
    obj.imageCheckBox36:setHeight(15);
    obj.imageCheckBox36:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox36:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout13);
    obj.imageCheckBox37:setField("2outras3_2");
    obj.imageCheckBox37:setLeft(195);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(15);
    obj.imageCheckBox37:setHeight(15);
    obj.imageCheckBox37:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox37:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout13);
    obj.imageCheckBox38:setField("2outras3_3");
    obj.imageCheckBox38:setLeft(213);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(15);
    obj.imageCheckBox38:setHeight(15);
    obj.imageCheckBox38:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox38:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout13);
    obj.imageCheckBox39:setField("2outras3_4");
    obj.imageCheckBox39:setLeft(231);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(15);
    obj.imageCheckBox39:setHeight(15);
    obj.imageCheckBox39:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox39:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout13);
    obj.imageCheckBox40:setField("2outras3_5");
    obj.imageCheckBox40:setLeft(249);
    obj.imageCheckBox40:setTop(4);
    obj.imageCheckBox40:setWidth(15);
    obj.imageCheckBox40:setHeight(15);
    obj.imageCheckBox40:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox40:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout10);
    obj.layout14:setLeft(300);
    obj.layout14:setTop(85);
    obj.layout14:setWidth(290);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout14);
    obj.edit9:setLeft(40);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(135);
    obj.edit9:setHeight(25);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setField("2outras4");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout14);
    obj.imageCheckBox41:setField("2outras4_1");
    obj.imageCheckBox41:setLeft(177);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(15);
    obj.imageCheckBox41:setHeight(15);
    obj.imageCheckBox41:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox41:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout14);
    obj.imageCheckBox42:setField("2outras4_2");
    obj.imageCheckBox42:setLeft(195);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(15);
    obj.imageCheckBox42:setHeight(15);
    obj.imageCheckBox42:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox42:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout14);
    obj.imageCheckBox43:setField("2outras4_3");
    obj.imageCheckBox43:setLeft(213);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(15);
    obj.imageCheckBox43:setHeight(15);
    obj.imageCheckBox43:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox43:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout14);
    obj.imageCheckBox44:setField("2outras4_4");
    obj.imageCheckBox44:setLeft(231);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(15);
    obj.imageCheckBox44:setHeight(15);
    obj.imageCheckBox44:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox44:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout14);
    obj.imageCheckBox45:setField("2outras4_5");
    obj.imageCheckBox45:setLeft(249);
    obj.imageCheckBox45:setTop(4);
    obj.imageCheckBox45:setWidth(15);
    obj.imageCheckBox45:setHeight(15);
    obj.imageCheckBox45:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox45:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout10);
    obj.layout15:setLeft(300);
    obj.layout15:setTop(110);
    obj.layout15:setWidth(290);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout15);
    obj.edit10:setLeft(40);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(135);
    obj.edit10:setHeight(25);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setField("2outras5");
    obj.edit10:setType("text");
    obj.edit10:setName("edit10");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout15);
    obj.imageCheckBox46:setField("2outras5_1");
    obj.imageCheckBox46:setLeft(177);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(15);
    obj.imageCheckBox46:setHeight(15);
    obj.imageCheckBox46:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox46:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout15);
    obj.imageCheckBox47:setField("2outras5_2");
    obj.imageCheckBox47:setLeft(195);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(15);
    obj.imageCheckBox47:setHeight(15);
    obj.imageCheckBox47:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox47:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout15);
    obj.imageCheckBox48:setField("2outras5_3");
    obj.imageCheckBox48:setLeft(213);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(15);
    obj.imageCheckBox48:setHeight(15);
    obj.imageCheckBox48:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox48:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout15);
    obj.imageCheckBox49:setField("2outras5_4");
    obj.imageCheckBox49:setLeft(231);
    obj.imageCheckBox49:setTop(4);
    obj.imageCheckBox49:setWidth(15);
    obj.imageCheckBox49:setHeight(15);
    obj.imageCheckBox49:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox49:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout15);
    obj.imageCheckBox50:setField("2outras5_5");
    obj.imageCheckBox50:setLeft(249);
    obj.imageCheckBox50:setTop(4);
    obj.imageCheckBox50:setWidth(15);
    obj.imageCheckBox50:setHeight(15);
    obj.imageCheckBox50:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox50:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout3);
    obj.layout16:setLeft(0);
    obj.layout16:setTop(20);
    obj.layout16:setWidth(880);
    obj.layout16:setHeight(200);
    obj.layout16:setName("layout16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout16);
    obj.layout17:setLeft(600);
    obj.layout17:setTop(10);
    obj.layout17:setWidth(290);
    obj.layout17:setHeight(25);
    obj.layout17:setName("layout17");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout17);
    obj.edit11:setLeft(40);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(135);
    obj.edit11:setHeight(25);
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setField("2outras1");
    obj.edit11:setType("text");
    obj.edit11:setName("edit11");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout17);
    obj.imageCheckBox51:setField("2outras1_1");
    obj.imageCheckBox51:setLeft(177);
    obj.imageCheckBox51:setTop(4);
    obj.imageCheckBox51:setWidth(15);
    obj.imageCheckBox51:setHeight(15);
    obj.imageCheckBox51:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox51:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout17);
    obj.imageCheckBox52:setField("2outras1_2");
    obj.imageCheckBox52:setLeft(195);
    obj.imageCheckBox52:setTop(4);
    obj.imageCheckBox52:setWidth(15);
    obj.imageCheckBox52:setHeight(15);
    obj.imageCheckBox52:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox52:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout17);
    obj.imageCheckBox53:setField("2outras1_3");
    obj.imageCheckBox53:setLeft(213);
    obj.imageCheckBox53:setTop(4);
    obj.imageCheckBox53:setWidth(15);
    obj.imageCheckBox53:setHeight(15);
    obj.imageCheckBox53:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox53:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout17);
    obj.imageCheckBox54:setField("2outras1_4");
    obj.imageCheckBox54:setLeft(231);
    obj.imageCheckBox54:setTop(4);
    obj.imageCheckBox54:setWidth(15);
    obj.imageCheckBox54:setHeight(15);
    obj.imageCheckBox54:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox54:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout17);
    obj.imageCheckBox55:setField("2outras1_5");
    obj.imageCheckBox55:setLeft(249);
    obj.imageCheckBox55:setTop(4);
    obj.imageCheckBox55:setWidth(15);
    obj.imageCheckBox55:setHeight(15);
    obj.imageCheckBox55:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox55:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout16);
    obj.layout18:setLeft(600);
    obj.layout18:setTop(35);
    obj.layout18:setWidth(290);
    obj.layout18:setHeight(25);
    obj.layout18:setName("layout18");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout18);
    obj.edit12:setLeft(40);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(135);
    obj.edit12:setHeight(25);
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setField("2outras2");
    obj.edit12:setType("text");
    obj.edit12:setName("edit12");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout18);
    obj.imageCheckBox56:setField("2outras2_1");
    obj.imageCheckBox56:setLeft(177);
    obj.imageCheckBox56:setTop(4);
    obj.imageCheckBox56:setWidth(15);
    obj.imageCheckBox56:setHeight(15);
    obj.imageCheckBox56:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox56:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout18);
    obj.imageCheckBox57:setField("2outras2_2");
    obj.imageCheckBox57:setLeft(195);
    obj.imageCheckBox57:setTop(4);
    obj.imageCheckBox57:setWidth(15);
    obj.imageCheckBox57:setHeight(15);
    obj.imageCheckBox57:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox57:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout18);
    obj.imageCheckBox58:setField("2outras2_3");
    obj.imageCheckBox58:setLeft(213);
    obj.imageCheckBox58:setTop(4);
    obj.imageCheckBox58:setWidth(15);
    obj.imageCheckBox58:setHeight(15);
    obj.imageCheckBox58:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox58:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout18);
    obj.imageCheckBox59:setField("2outras2_4");
    obj.imageCheckBox59:setLeft(231);
    obj.imageCheckBox59:setTop(4);
    obj.imageCheckBox59:setWidth(15);
    obj.imageCheckBox59:setHeight(15);
    obj.imageCheckBox59:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox59:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout18);
    obj.imageCheckBox60:setField("2outras2_5");
    obj.imageCheckBox60:setLeft(249);
    obj.imageCheckBox60:setTop(4);
    obj.imageCheckBox60:setWidth(15);
    obj.imageCheckBox60:setHeight(15);
    obj.imageCheckBox60:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox60:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout16);
    obj.layout19:setLeft(600);
    obj.layout19:setTop(60);
    obj.layout19:setWidth(290);
    obj.layout19:setHeight(25);
    obj.layout19:setName("layout19");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout19);
    obj.edit13:setLeft(40);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(135);
    obj.edit13:setHeight(25);
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setField("2outras3");
    obj.edit13:setType("text");
    obj.edit13:setName("edit13");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout19);
    obj.imageCheckBox61:setField("2outras3_1");
    obj.imageCheckBox61:setLeft(177);
    obj.imageCheckBox61:setTop(4);
    obj.imageCheckBox61:setWidth(15);
    obj.imageCheckBox61:setHeight(15);
    obj.imageCheckBox61:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox61:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout19);
    obj.imageCheckBox62:setField("2outras3_2");
    obj.imageCheckBox62:setLeft(195);
    obj.imageCheckBox62:setTop(4);
    obj.imageCheckBox62:setWidth(15);
    obj.imageCheckBox62:setHeight(15);
    obj.imageCheckBox62:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox62:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout19);
    obj.imageCheckBox63:setField("2outras3_3");
    obj.imageCheckBox63:setLeft(213);
    obj.imageCheckBox63:setTop(4);
    obj.imageCheckBox63:setWidth(15);
    obj.imageCheckBox63:setHeight(15);
    obj.imageCheckBox63:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox63:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout19);
    obj.imageCheckBox64:setField("2outras3_4");
    obj.imageCheckBox64:setLeft(231);
    obj.imageCheckBox64:setTop(4);
    obj.imageCheckBox64:setWidth(15);
    obj.imageCheckBox64:setHeight(15);
    obj.imageCheckBox64:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox64:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout19);
    obj.imageCheckBox65:setField("2outras3_5");
    obj.imageCheckBox65:setLeft(249);
    obj.imageCheckBox65:setTop(4);
    obj.imageCheckBox65:setWidth(15);
    obj.imageCheckBox65:setHeight(15);
    obj.imageCheckBox65:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox65:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout16);
    obj.layout20:setLeft(600);
    obj.layout20:setTop(85);
    obj.layout20:setWidth(290);
    obj.layout20:setHeight(25);
    obj.layout20:setName("layout20");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout20);
    obj.edit14:setLeft(40);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(135);
    obj.edit14:setHeight(25);
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setField("2outras4");
    obj.edit14:setType("text");
    obj.edit14:setName("edit14");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout20);
    obj.imageCheckBox66:setField("2outras4_1");
    obj.imageCheckBox66:setLeft(177);
    obj.imageCheckBox66:setTop(4);
    obj.imageCheckBox66:setWidth(15);
    obj.imageCheckBox66:setHeight(15);
    obj.imageCheckBox66:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox66:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout20);
    obj.imageCheckBox67:setField("2outras4_2");
    obj.imageCheckBox67:setLeft(195);
    obj.imageCheckBox67:setTop(4);
    obj.imageCheckBox67:setWidth(15);
    obj.imageCheckBox67:setHeight(15);
    obj.imageCheckBox67:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox67:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout20);
    obj.imageCheckBox68:setField("2outras4_3");
    obj.imageCheckBox68:setLeft(213);
    obj.imageCheckBox68:setTop(4);
    obj.imageCheckBox68:setWidth(15);
    obj.imageCheckBox68:setHeight(15);
    obj.imageCheckBox68:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox68:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout20);
    obj.imageCheckBox69:setField("2outras4_4");
    obj.imageCheckBox69:setLeft(231);
    obj.imageCheckBox69:setTop(4);
    obj.imageCheckBox69:setWidth(15);
    obj.imageCheckBox69:setHeight(15);
    obj.imageCheckBox69:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox69:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout20);
    obj.imageCheckBox70:setField("2outras4_5");
    obj.imageCheckBox70:setLeft(249);
    obj.imageCheckBox70:setTop(4);
    obj.imageCheckBox70:setWidth(15);
    obj.imageCheckBox70:setHeight(15);
    obj.imageCheckBox70:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox70:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout16);
    obj.layout21:setLeft(600);
    obj.layout21:setTop(110);
    obj.layout21:setWidth(290);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout21);
    obj.edit15:setLeft(40);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(135);
    obj.edit15:setHeight(25);
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setField("2outras5");
    obj.edit15:setType("text");
    obj.edit15:setName("edit15");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout21);
    obj.imageCheckBox71:setField("2outras5_1");
    obj.imageCheckBox71:setLeft(177);
    obj.imageCheckBox71:setTop(4);
    obj.imageCheckBox71:setWidth(15);
    obj.imageCheckBox71:setHeight(15);
    obj.imageCheckBox71:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox71:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout21);
    obj.imageCheckBox72:setField("2outras5_2");
    obj.imageCheckBox72:setLeft(195);
    obj.imageCheckBox72:setTop(4);
    obj.imageCheckBox72:setWidth(15);
    obj.imageCheckBox72:setHeight(15);
    obj.imageCheckBox72:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox72:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout21);
    obj.imageCheckBox73:setField("2outras5_3");
    obj.imageCheckBox73:setLeft(213);
    obj.imageCheckBox73:setTop(4);
    obj.imageCheckBox73:setWidth(15);
    obj.imageCheckBox73:setHeight(15);
    obj.imageCheckBox73:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox73:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout21);
    obj.imageCheckBox74:setField("2outras5_4");
    obj.imageCheckBox74:setLeft(231);
    obj.imageCheckBox74:setTop(4);
    obj.imageCheckBox74:setWidth(15);
    obj.imageCheckBox74:setHeight(15);
    obj.imageCheckBox74:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox74:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout21);
    obj.imageCheckBox75:setField("2outras5_5");
    obj.imageCheckBox75:setLeft(249);
    obj.imageCheckBox75:setTop(4);
    obj.imageCheckBox75:setWidth(15);
    obj.imageCheckBox75:setHeight(15);
    obj.imageCheckBox75:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox75:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setTop(370);
    obj.layout22:setWidth(880);
    obj.layout22:setHeight(300);
    obj.layout22:setName("layout22");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout22);
    obj.label2:setLeft(235);
    obj.label2:setTop(10);
    obj.label2:setWidth(95);
    obj.label2:setHeight(20);
    obj.label2:setText("Experiência");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("Black");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout22);
    obj.label3:setLeft(595);
    obj.label3:setTop(0);
    obj.label3:setAutoSize(true);
    obj.label3:setHeight(20);
    obj.label3:setText("Laços de Sangue/ Vinculi");
    obj.label3:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("Black");
    obj.label3:setName("label3");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout22);
    obj.layout23:setLeft(40);
    obj.layout23:setTop(45);
    obj.layout23:setWidth(880);
    obj.layout23:setHeight(25);
    obj.layout23:setName("layout23");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout23);
    obj.rectangle4:setLeft(5);
    obj.rectangle4:setTop(31);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(80);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout23);
    obj.label4:setLeft(5);
    obj.label4:setTop(3);
    obj.label4:setWidth(100);
    obj.label4:setHeight(20);
    obj.label4:setText("Total:");
    obj.label4:setHorzTextAlign("leading");
    obj.label4:setFontSize(12);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout23);
    obj.edit16:setLeft(100);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(250);
    obj.edit16:setHeight(25);
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setField("total");
    obj.edit16:setType("text");
    obj.edit16:setName("edit16");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout22);
    obj.layout24:setLeft(40);
    obj.layout24:setTop(70);
    obj.layout24:setWidth(880);
    obj.layout24:setHeight(25);
    obj.layout24:setName("layout24");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout24);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(31);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(80);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout24);
    obj.label5:setLeft(5);
    obj.label5:setTop(3);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setText("Total Gasto:");
    obj.label5:setHorzTextAlign("leading");
    obj.label5:setFontSize(12);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout24);
    obj.edit17:setLeft(100);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(250);
    obj.edit17:setHeight(25);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setField("totalgasto");
    obj.edit17:setType("text");
    obj.edit17:setName("edit17");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout22);
    obj.layout25:setLeft(45);
    obj.layout25:setTop(95);
    obj.layout25:setWidth(400);
    obj.layout25:setHeight(400);
    obj.layout25:setName("layout25");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout25);
    obj.label6:setAutoSize(true);
    obj.label6:setTop(65);
    obj.label6:setText("Gasto em:");
    obj.label6:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("Black");
    obj.label6:setName("label6");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout25);
    obj.textEditor1:setLeft(95);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(250);
    obj.textEditor1:setHeight(150);
    obj.textEditor1:setField("gastoem");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout22);
    obj.layout26:setLeft(475);
    obj.layout26:setTop(35);
    obj.layout26:setWidth(400);
    obj.layout26:setHeight(400);
    obj.layout26:setName("layout26");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout26);
    obj.label7:setAutoSize(true);
    obj.label7:setTop(0);
    obj.label7:setText("Laço com:");
    obj.label7:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("Black");
    obj.label7:setName("label7");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout22);
    obj.layout27:setLeft(425);
    obj.layout27:setTop(55);
    obj.layout27:setWidth(400);
    obj.layout27:setHeight(400);
    obj.layout27:setName("layout27");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout27);
    obj.textEditor2:setLeft(45);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(350);
    obj.textEditor2:setHeight(80);
    obj.textEditor2:setField("laco");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout22);
    obj.layout28:setLeft(475);
    obj.layout28:setTop(145);
    obj.layout28:setWidth(400);
    obj.layout28:setHeight(400);
    obj.layout28:setName("layout28");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout28);
    obj.label8:setAutoSize(true);
    obj.label8:setTop(0);
    obj.label8:setText("Pertubações:");
    obj.label8:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("Black");
    obj.label8:setName("label8");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout22);
    obj.layout29:setLeft(425);
    obj.layout29:setTop(165);
    obj.layout29:setWidth(400);
    obj.layout29:setHeight(400);
    obj.layout29:setName("layout29");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout29);
    obj.textEditor3:setLeft(45);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(350);
    obj.textEditor3:setHeight(80);
    obj.textEditor3:setField("laco");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox1);
    obj.layout30:setTop(630);
    obj.layout30:setWidth(880);
    obj.layout30:setHeight(500);
    obj.layout30:setName("layout30");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout30);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setWidth(880);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout30);
    obj.label9:setLeft(380);
    obj.label9:setTop(2);
    obj.label9:setWidth(250);
    obj.label9:setHeight(20);
    obj.label9:setText("Combate");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("White");
    obj.label9:setName("label9");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newVampiroAMascara2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_VampiroAMascara2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _VampiroAMascara2 = {
    newEditor = newVampiroAMascara2, 
    new = newVampiroAMascara2, 
    name = "VampiroAMascara2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

VampiroAMascara2 = _VampiroAMascara2;
Firecast.registrarForm(_VampiroAMascara2);

return _VampiroAMascara2;
