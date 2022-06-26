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
    obj:setTheme("light");

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
    obj.label1:setLeft(380);
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
    obj.edit1:setFontColor("black");
    obj.edit1:setField("umoutras1");
    obj.edit1:setType("text");
    obj.edit1:setName("edit1");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout5);
    obj.imageCheckBox1:setField("umoutras1_1");
    obj.imageCheckBox1:setLeft(177);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout5);
    obj.imageCheckBox2:setField("umoutras1_2");
    obj.imageCheckBox2:setLeft(195);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout5);
    obj.imageCheckBox3:setField("umoutras1_3");
    obj.imageCheckBox3:setLeft(213);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout5);
    obj.imageCheckBox4:setField("umoutras1_4");
    obj.imageCheckBox4:setLeft(231);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout5);
    obj.imageCheckBox5:setField("umoutras1_5");
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
    obj.edit2:setFontColor("black");
    obj.edit2:setField("umoutras2");
    obj.edit2:setType("text");
    obj.edit2:setName("edit2");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout6);
    obj.imageCheckBox6:setField("umoutras2_1");
    obj.imageCheckBox6:setLeft(177);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout6);
    obj.imageCheckBox7:setField("umoutras2_2");
    obj.imageCheckBox7:setLeft(195);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout6);
    obj.imageCheckBox8:setField("umoutras2_3");
    obj.imageCheckBox8:setLeft(213);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout6);
    obj.imageCheckBox9:setField("umoutras2_4");
    obj.imageCheckBox9:setLeft(231);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout6);
    obj.imageCheckBox10:setField("umoutras2_5");
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
    obj.edit3:setFontColor("black");
    obj.edit3:setField("umoutras3");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout7);
    obj.imageCheckBox11:setField("umoutras3_1");
    obj.imageCheckBox11:setLeft(177);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout7);
    obj.imageCheckBox12:setField("umoutras3_2");
    obj.imageCheckBox12:setLeft(195);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout7);
    obj.imageCheckBox13:setField("umoutras3_3");
    obj.imageCheckBox13:setLeft(213);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout7);
    obj.imageCheckBox14:setField("umoutras3_4");
    obj.imageCheckBox14:setLeft(231);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout7);
    obj.imageCheckBox15:setField("umoutras3_5");
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
    obj.edit4:setFontColor("black");
    obj.edit4:setField("umoutras4");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout8);
    obj.imageCheckBox16:setField("umoutras4_1");
    obj.imageCheckBox16:setLeft(177);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(15);
    obj.imageCheckBox16:setHeight(15);
    obj.imageCheckBox16:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox16:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout8);
    obj.imageCheckBox17:setField("umoutras4_2");
    obj.imageCheckBox17:setLeft(195);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(15);
    obj.imageCheckBox17:setHeight(15);
    obj.imageCheckBox17:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox17:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout8);
    obj.imageCheckBox18:setField("umoutras4_3");
    obj.imageCheckBox18:setLeft(213);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(15);
    obj.imageCheckBox18:setHeight(15);
    obj.imageCheckBox18:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox18:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout8);
    obj.imageCheckBox19:setField("umoutras4_4");
    obj.imageCheckBox19:setLeft(231);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(15);
    obj.imageCheckBox19:setHeight(15);
    obj.imageCheckBox19:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox19:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout8);
    obj.imageCheckBox20:setField("umoutras4_5");
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
    obj.edit5:setFontColor("black");
    obj.edit5:setField("umoutras5");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout9);
    obj.imageCheckBox21:setField("umoutras5_1");
    obj.imageCheckBox21:setLeft(177);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(15);
    obj.imageCheckBox21:setHeight(15);
    obj.imageCheckBox21:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox21:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout9);
    obj.imageCheckBox22:setField("umoutras5_2");
    obj.imageCheckBox22:setLeft(195);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(15);
    obj.imageCheckBox22:setHeight(15);
    obj.imageCheckBox22:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox22:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout9);
    obj.imageCheckBox23:setField("umoutras5_3");
    obj.imageCheckBox23:setLeft(213);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(15);
    obj.imageCheckBox23:setHeight(15);
    obj.imageCheckBox23:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox23:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout9);
    obj.imageCheckBox24:setField("umoutras5_4");
    obj.imageCheckBox24:setLeft(231);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(15);
    obj.imageCheckBox24:setHeight(15);
    obj.imageCheckBox24:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox24:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout9);
    obj.imageCheckBox25:setField("umoutras5_5");
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
    obj.edit6:setFontColor("black");
    obj.edit6:setField("doisoutras1");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout11);
    obj.imageCheckBox26:setField("doisoutras1_1");
    obj.imageCheckBox26:setLeft(177);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(15);
    obj.imageCheckBox26:setHeight(15);
    obj.imageCheckBox26:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox26:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout11);
    obj.imageCheckBox27:setField("doisoutras1_2");
    obj.imageCheckBox27:setLeft(195);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(15);
    obj.imageCheckBox27:setHeight(15);
    obj.imageCheckBox27:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox27:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout11);
    obj.imageCheckBox28:setField("doisoutras1_3");
    obj.imageCheckBox28:setLeft(213);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(15);
    obj.imageCheckBox28:setHeight(15);
    obj.imageCheckBox28:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox28:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout11);
    obj.imageCheckBox29:setField("doisoutras1_4");
    obj.imageCheckBox29:setLeft(231);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(15);
    obj.imageCheckBox29:setHeight(15);
    obj.imageCheckBox29:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox29:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout11);
    obj.imageCheckBox30:setField("doisoutras1_5");
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
    obj.edit7:setFontColor("black");
    obj.edit7:setField("doisoutras2");
    obj.edit7:setType("text");
    obj.edit7:setName("edit7");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout12);
    obj.imageCheckBox31:setField("doisoutras2_1");
    obj.imageCheckBox31:setLeft(177);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(15);
    obj.imageCheckBox31:setHeight(15);
    obj.imageCheckBox31:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox31:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout12);
    obj.imageCheckBox32:setField("doisoutras2_2");
    obj.imageCheckBox32:setLeft(195);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(15);
    obj.imageCheckBox32:setHeight(15);
    obj.imageCheckBox32:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox32:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout12);
    obj.imageCheckBox33:setField("doisoutras2_3");
    obj.imageCheckBox33:setLeft(213);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(15);
    obj.imageCheckBox33:setHeight(15);
    obj.imageCheckBox33:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox33:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout12);
    obj.imageCheckBox34:setField("doisoutras2_4");
    obj.imageCheckBox34:setLeft(231);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(15);
    obj.imageCheckBox34:setHeight(15);
    obj.imageCheckBox34:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox34:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout12);
    obj.imageCheckBox35:setField("doisoutras2_5");
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
    obj.edit8:setFontColor("black");
    obj.edit8:setField("doisoutras3");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout13);
    obj.imageCheckBox36:setField("doisoutras3_1");
    obj.imageCheckBox36:setLeft(177);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(15);
    obj.imageCheckBox36:setHeight(15);
    obj.imageCheckBox36:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox36:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout13);
    obj.imageCheckBox37:setField("doisoutras3_2");
    obj.imageCheckBox37:setLeft(195);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(15);
    obj.imageCheckBox37:setHeight(15);
    obj.imageCheckBox37:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox37:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout13);
    obj.imageCheckBox38:setField("doisoutras3_3");
    obj.imageCheckBox38:setLeft(213);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(15);
    obj.imageCheckBox38:setHeight(15);
    obj.imageCheckBox38:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox38:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout13);
    obj.imageCheckBox39:setField("doisoutras3_4");
    obj.imageCheckBox39:setLeft(231);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(15);
    obj.imageCheckBox39:setHeight(15);
    obj.imageCheckBox39:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox39:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout13);
    obj.imageCheckBox40:setField("doisoutras3_5");
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
    obj.edit9:setFontColor("black");
    obj.edit9:setField("doisoutras4");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout14);
    obj.imageCheckBox41:setField("doisoutras4_1");
    obj.imageCheckBox41:setLeft(177);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(15);
    obj.imageCheckBox41:setHeight(15);
    obj.imageCheckBox41:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox41:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout14);
    obj.imageCheckBox42:setField("doisoutras4_2");
    obj.imageCheckBox42:setLeft(195);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(15);
    obj.imageCheckBox42:setHeight(15);
    obj.imageCheckBox42:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox42:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout14);
    obj.imageCheckBox43:setField("doisoutras4_3");
    obj.imageCheckBox43:setLeft(213);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(15);
    obj.imageCheckBox43:setHeight(15);
    obj.imageCheckBox43:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox43:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout14);
    obj.imageCheckBox44:setField("doisoutras4_4");
    obj.imageCheckBox44:setLeft(231);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(15);
    obj.imageCheckBox44:setHeight(15);
    obj.imageCheckBox44:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox44:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout14);
    obj.imageCheckBox45:setField("doisoutras4_5");
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
    obj.edit10:setFontColor("black");
    obj.edit10:setField("doisoutras5");
    obj.edit10:setType("text");
    obj.edit10:setName("edit10");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout15);
    obj.imageCheckBox46:setField("doisoutras5_1");
    obj.imageCheckBox46:setLeft(177);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(15);
    obj.imageCheckBox46:setHeight(15);
    obj.imageCheckBox46:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox46:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout15);
    obj.imageCheckBox47:setField("doisoutras5_2");
    obj.imageCheckBox47:setLeft(195);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(15);
    obj.imageCheckBox47:setHeight(15);
    obj.imageCheckBox47:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox47:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout15);
    obj.imageCheckBox48:setField("doisoutras5_3");
    obj.imageCheckBox48:setLeft(213);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(15);
    obj.imageCheckBox48:setHeight(15);
    obj.imageCheckBox48:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox48:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout15);
    obj.imageCheckBox49:setField("doisoutras5_4");
    obj.imageCheckBox49:setLeft(231);
    obj.imageCheckBox49:setTop(4);
    obj.imageCheckBox49:setWidth(15);
    obj.imageCheckBox49:setHeight(15);
    obj.imageCheckBox49:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox49:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout15);
    obj.imageCheckBox50:setField("doisoutras5_5");
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
    obj.edit11:setFontColor("black");
    obj.edit11:setField("tresoutras1");
    obj.edit11:setType("text");
    obj.edit11:setName("edit11");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout17);
    obj.imageCheckBox51:setField("tresoutras1_1");
    obj.imageCheckBox51:setLeft(177);
    obj.imageCheckBox51:setTop(4);
    obj.imageCheckBox51:setWidth(15);
    obj.imageCheckBox51:setHeight(15);
    obj.imageCheckBox51:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox51:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout17);
    obj.imageCheckBox52:setField("tresoutras1_2");
    obj.imageCheckBox52:setLeft(195);
    obj.imageCheckBox52:setTop(4);
    obj.imageCheckBox52:setWidth(15);
    obj.imageCheckBox52:setHeight(15);
    obj.imageCheckBox52:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox52:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout17);
    obj.imageCheckBox53:setField("tresoutras1_3");
    obj.imageCheckBox53:setLeft(213);
    obj.imageCheckBox53:setTop(4);
    obj.imageCheckBox53:setWidth(15);
    obj.imageCheckBox53:setHeight(15);
    obj.imageCheckBox53:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox53:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout17);
    obj.imageCheckBox54:setField("tresoutras1_4");
    obj.imageCheckBox54:setLeft(231);
    obj.imageCheckBox54:setTop(4);
    obj.imageCheckBox54:setWidth(15);
    obj.imageCheckBox54:setHeight(15);
    obj.imageCheckBox54:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox54:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout17);
    obj.imageCheckBox55:setField("tresoutras1_5");
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
    obj.edit12:setFontColor("black");
    obj.edit12:setField("tresoutras2");
    obj.edit12:setType("text");
    obj.edit12:setName("edit12");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout18);
    obj.imageCheckBox56:setField("tresoutras2_1");
    obj.imageCheckBox56:setLeft(177);
    obj.imageCheckBox56:setTop(4);
    obj.imageCheckBox56:setWidth(15);
    obj.imageCheckBox56:setHeight(15);
    obj.imageCheckBox56:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox56:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout18);
    obj.imageCheckBox57:setField("tresoutras2_2");
    obj.imageCheckBox57:setLeft(195);
    obj.imageCheckBox57:setTop(4);
    obj.imageCheckBox57:setWidth(15);
    obj.imageCheckBox57:setHeight(15);
    obj.imageCheckBox57:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox57:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout18);
    obj.imageCheckBox58:setField("tresoutras2_3");
    obj.imageCheckBox58:setLeft(213);
    obj.imageCheckBox58:setTop(4);
    obj.imageCheckBox58:setWidth(15);
    obj.imageCheckBox58:setHeight(15);
    obj.imageCheckBox58:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox58:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout18);
    obj.imageCheckBox59:setField("tresoutras2_4");
    obj.imageCheckBox59:setLeft(231);
    obj.imageCheckBox59:setTop(4);
    obj.imageCheckBox59:setWidth(15);
    obj.imageCheckBox59:setHeight(15);
    obj.imageCheckBox59:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox59:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout18);
    obj.imageCheckBox60:setField("tresoutras2_5");
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
    obj.edit13:setFontColor("black");
    obj.edit13:setField("tresoutras3");
    obj.edit13:setType("text");
    obj.edit13:setName("edit13");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout19);
    obj.imageCheckBox61:setField("tresoutras3_1");
    obj.imageCheckBox61:setLeft(177);
    obj.imageCheckBox61:setTop(4);
    obj.imageCheckBox61:setWidth(15);
    obj.imageCheckBox61:setHeight(15);
    obj.imageCheckBox61:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox61:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout19);
    obj.imageCheckBox62:setField("tresoutras3_2");
    obj.imageCheckBox62:setLeft(195);
    obj.imageCheckBox62:setTop(4);
    obj.imageCheckBox62:setWidth(15);
    obj.imageCheckBox62:setHeight(15);
    obj.imageCheckBox62:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox62:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout19);
    obj.imageCheckBox63:setField("tresoutras3_3");
    obj.imageCheckBox63:setLeft(213);
    obj.imageCheckBox63:setTop(4);
    obj.imageCheckBox63:setWidth(15);
    obj.imageCheckBox63:setHeight(15);
    obj.imageCheckBox63:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox63:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout19);
    obj.imageCheckBox64:setField("tresoutras3_4");
    obj.imageCheckBox64:setLeft(231);
    obj.imageCheckBox64:setTop(4);
    obj.imageCheckBox64:setWidth(15);
    obj.imageCheckBox64:setHeight(15);
    obj.imageCheckBox64:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox64:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout19);
    obj.imageCheckBox65:setField("tresoutras3_5");
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
    obj.edit14:setFontColor("black");
    obj.edit14:setField("tresoutras4");
    obj.edit14:setType("text");
    obj.edit14:setName("edit14");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout20);
    obj.imageCheckBox66:setField("tresoutras4_1");
    obj.imageCheckBox66:setLeft(177);
    obj.imageCheckBox66:setTop(4);
    obj.imageCheckBox66:setWidth(15);
    obj.imageCheckBox66:setHeight(15);
    obj.imageCheckBox66:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox66:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout20);
    obj.imageCheckBox67:setField("tresoutras4_2");
    obj.imageCheckBox67:setLeft(195);
    obj.imageCheckBox67:setTop(4);
    obj.imageCheckBox67:setWidth(15);
    obj.imageCheckBox67:setHeight(15);
    obj.imageCheckBox67:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox67:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout20);
    obj.imageCheckBox68:setField("tresoutras4_3");
    obj.imageCheckBox68:setLeft(213);
    obj.imageCheckBox68:setTop(4);
    obj.imageCheckBox68:setWidth(15);
    obj.imageCheckBox68:setHeight(15);
    obj.imageCheckBox68:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox68:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout20);
    obj.imageCheckBox69:setField("tresoutras4_4");
    obj.imageCheckBox69:setLeft(231);
    obj.imageCheckBox69:setTop(4);
    obj.imageCheckBox69:setWidth(15);
    obj.imageCheckBox69:setHeight(15);
    obj.imageCheckBox69:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox69:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout20);
    obj.imageCheckBox70:setField("tresoutras4_5");
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
    obj.edit15:setFontColor("black");
    obj.edit15:setField("tresoutras5");
    obj.edit15:setType("text");
    obj.edit15:setName("edit15");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout21);
    obj.imageCheckBox71:setField("tresoutras5_1");
    obj.imageCheckBox71:setLeft(177);
    obj.imageCheckBox71:setTop(4);
    obj.imageCheckBox71:setWidth(15);
    obj.imageCheckBox71:setHeight(15);
    obj.imageCheckBox71:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox71:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout21);
    obj.imageCheckBox72:setField("tresoutras5_2");
    obj.imageCheckBox72:setLeft(195);
    obj.imageCheckBox72:setTop(4);
    obj.imageCheckBox72:setWidth(15);
    obj.imageCheckBox72:setHeight(15);
    obj.imageCheckBox72:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox72:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout21);
    obj.imageCheckBox73:setField("tresoutras5_3");
    obj.imageCheckBox73:setLeft(213);
    obj.imageCheckBox73:setTop(4);
    obj.imageCheckBox73:setWidth(15);
    obj.imageCheckBox73:setHeight(15);
    obj.imageCheckBox73:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox73:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout21);
    obj.imageCheckBox74:setField("tresoutras5_4");
    obj.imageCheckBox74:setLeft(231);
    obj.imageCheckBox74:setTop(4);
    obj.imageCheckBox74:setWidth(15);
    obj.imageCheckBox74:setHeight(15);
    obj.imageCheckBox74:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox74:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout21);
    obj.imageCheckBox75:setField("tresoutras5_5");
    obj.imageCheckBox75:setLeft(249);
    obj.imageCheckBox75:setTop(4);
    obj.imageCheckBox75:setWidth(15);
    obj.imageCheckBox75:setHeight(15);
    obj.imageCheckBox75:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox75:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setTop(355);
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
    obj.layout23:setTop(35);
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
    obj.edit16:setFontColor("black");
    obj.edit16:setField("total");
    obj.edit16:setType("text");
    obj.edit16:setName("edit16");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout22);
    obj.layout24:setLeft(40);
    obj.layout24:setTop(60);
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
    obj.edit17:setFontColor("black");
    obj.edit17:setField("totalgasto");
    obj.edit17:setType("text");
    obj.edit17:setName("edit17");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout22);
    obj.layout25:setLeft(45);
    obj.layout25:setTop(85);
    obj.layout25:setWidth(400);
    obj.layout25:setHeight(400);
    obj.layout25:setName("layout25");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout25);
    obj.label6:setAutoSize(true);
    obj.label6:setTop(45);
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
    obj.textEditor1:setHeight(120);
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setField("gastoem");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout22);
    obj.layout26:setLeft(495);
    obj.layout26:setTop(25);
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
    obj.layout27:setLeft(445);
    obj.layout27:setTop(45);
    obj.layout27:setWidth(400);
    obj.layout27:setHeight(400);
    obj.layout27:setName("layout27");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout27);
    obj.textEditor2:setLeft(45);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(350);
    obj.textEditor2:setHeight(70);
    obj.textEditor2:setFontColor("black");
    obj.textEditor2:setField("laco");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout22);
    obj.layout28:setLeft(495);
    obj.layout28:setTop(115);
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
    obj.layout29:setLeft(445);
    obj.layout29:setTop(135);
    obj.layout29:setWidth(400);
    obj.layout29:setHeight(400);
    obj.layout29:setName("layout29");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout29);
    obj.textEditor3:setLeft(45);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(350);
    obj.textEditor3:setHeight(70);
    obj.textEditor3:setFontColor("black");
    obj.textEditor3:setField("pertubacoes");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox1);
    obj.layout30:setTop(570);
    obj.layout30:setWidth(880);
    obj.layout30:setHeight(25);
    obj.layout30:setName("layout30");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout30);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setWidth(880);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout30);
    obj.label9:setLeft(415);
    obj.label9:setTop(2);
    obj.label9:setWidth(250);
    obj.label9:setHeight(20);
    obj.label9:setText("Combate");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("White");
    obj.label9:setName("label9");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.scrollBox1);
    obj.layout31:setTop(605);
    obj.layout31:setWidth(880);
    obj.layout31:setHeight(300);
    obj.layout31:setName("layout31");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout31);
    obj.rectangle7:setLeft(15);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setWidth(200);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setName("rectangle7");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout31);
    obj.label10:setLeft(25);
    obj.label10:setTop(2);
    obj.label10:setWidth(250);
    obj.label10:setHeight(20);
    obj.label10:setText("Arma");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("white");
    obj.label10:setName("label10");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout31);
    obj.rectangle8:setLeft(220);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setName("rectangle8");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout31);
    obj.label11:setLeft(230);
    obj.label11:setTop(2);
    obj.label11:setWidth(250);
    obj.label11:setHeight(20);
    obj.label11:setText("Dano");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("white");
    obj.label11:setName("label11");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout31);
    obj.rectangle9:setLeft(305);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setName("rectangle9");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout31);
    obj.label12:setLeft(315);
    obj.label12:setTop(2);
    obj.label12:setWidth(250);
    obj.label12:setHeight(20);
    obj.label12:setText("Alcance");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("white");
    obj.label12:setName("label12");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout31);
    obj.rectangle10:setLeft(390);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout31);
    obj.label13:setLeft(400);
    obj.label13:setTop(2);
    obj.label13:setWidth(250);
    obj.label13:setHeight(20);
    obj.label13:setText("CdT");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("white");
    obj.label13:setName("label13");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout31);
    obj.rectangle11:setLeft(475);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setName("rectangle11");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout31);
    obj.label14:setLeft(485);
    obj.label14:setTop(2);
    obj.label14:setWidth(250);
    obj.label14:setHeight(20);
    obj.label14:setText("Pente");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("white");
    obj.label14:setName("label14");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout31);
    obj.rectangle12:setLeft(560);
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setWidth(150);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setName("rectangle12");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout31);
    obj.label15:setLeft(570);
    obj.label15:setTop(2);
    obj.label15:setWidth(250);
    obj.label15:setHeight(20);
    obj.label15:setText("Ocultabilidade");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("white");
    obj.label15:setName("label15");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout31);
    obj.rectangle13:setLeft(715);
    obj.rectangle13:setHeight(25);
    obj.rectangle13:setWidth(150);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setName("rectangle13");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout31);
    obj.label16:setLeft(725);
    obj.label16:setTop(2);
    obj.label16:setWidth(250);
    obj.label16:setHeight(20);
    obj.label16:setText("Armadura");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("white");
    obj.label16:setName("label16");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout31);
    obj.layout32:setLeft(0);
    obj.layout32:setTop(0);
    obj.layout32:setWidth(880);
    obj.layout32:setHeight(300);
    obj.layout32:setName("layout32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout32);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(30);
    obj.layout33:setWidth(880);
    obj.layout33:setHeight(200);
    obj.layout33:setName("layout33");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout33);
    obj.edit18:setLeft(15);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(200);
    obj.edit18:setHeight(25);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setFontColor("black");
    obj.edit18:setField("combate1_1");
    obj.edit18:setType("text");
    obj.edit18:setName("edit18");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout33);
    obj.edit19:setLeft(220);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(80);
    obj.edit19:setHeight(25);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setFontColor("black");
    obj.edit19:setField("combate1_2");
    obj.edit19:setType("text");
    obj.edit19:setName("edit19");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout33);
    obj.edit20:setLeft(305);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(80);
    obj.edit20:setHeight(25);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setFontColor("black");
    obj.edit20:setField("combate1_3");
    obj.edit20:setType("text");
    obj.edit20:setName("edit20");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout33);
    obj.edit21:setLeft(390);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(80);
    obj.edit21:setHeight(25);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setFontColor("black");
    obj.edit21:setField("combate1_4");
    obj.edit21:setType("text");
    obj.edit21:setName("edit21");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout33);
    obj.edit22:setLeft(475);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(80);
    obj.edit22:setHeight(25);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setFontColor("black");
    obj.edit22:setField("combate1_5");
    obj.edit22:setType("text");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout33);
    obj.edit23:setLeft(560);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(150);
    obj.edit23:setHeight(25);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setFontColor("black");
    obj.edit23:setField("combate1_6");
    obj.edit23:setType("text");
    obj.edit23:setName("edit23");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout32);
    obj.layout34:setLeft(0);
    obj.layout34:setTop(60);
    obj.layout34:setWidth(880);
    obj.layout34:setHeight(200);
    obj.layout34:setName("layout34");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout34);
    obj.edit24:setLeft(15);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(200);
    obj.edit24:setHeight(25);
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setFontColor("black");
    obj.edit24:setField("combate2_1");
    obj.edit24:setType("text");
    obj.edit24:setName("edit24");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout34);
    obj.edit25:setLeft(220);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(80);
    obj.edit25:setHeight(25);
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setFontColor("black");
    obj.edit25:setField("combate2_2");
    obj.edit25:setType("text");
    obj.edit25:setName("edit25");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout34);
    obj.edit26:setLeft(305);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(80);
    obj.edit26:setHeight(25);
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setFontColor("black");
    obj.edit26:setField("combate2_3");
    obj.edit26:setType("text");
    obj.edit26:setName("edit26");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout34);
    obj.edit27:setLeft(390);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(80);
    obj.edit27:setHeight(25);
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setFontColor("black");
    obj.edit27:setField("combate2_4");
    obj.edit27:setType("text");
    obj.edit27:setName("edit27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout34);
    obj.edit28:setLeft(475);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(80);
    obj.edit28:setHeight(25);
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setFontColor("black");
    obj.edit28:setField("combate2_5");
    obj.edit28:setType("text");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout34);
    obj.edit29:setLeft(560);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(150);
    obj.edit29:setHeight(25);
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setFontColor("black");
    obj.edit29:setField("combate2_6");
    obj.edit29:setType("text");
    obj.edit29:setName("edit29");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout32);
    obj.layout35:setLeft(0);
    obj.layout35:setTop(90);
    obj.layout35:setWidth(880);
    obj.layout35:setHeight(200);
    obj.layout35:setName("layout35");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout35);
    obj.edit30:setLeft(15);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(200);
    obj.edit30:setHeight(25);
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setFontColor("black");
    obj.edit30:setField("combate3_1");
    obj.edit30:setType("text");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout35);
    obj.edit31:setLeft(220);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(80);
    obj.edit31:setHeight(25);
    lfm_setPropAsString(obj.edit31, "fontStyle",  "bold");
    obj.edit31:setFontColor("black");
    obj.edit31:setField("combate3_2");
    obj.edit31:setType("text");
    obj.edit31:setName("edit31");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout35);
    obj.edit32:setLeft(305);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(80);
    obj.edit32:setHeight(25);
    lfm_setPropAsString(obj.edit32, "fontStyle",  "bold");
    obj.edit32:setFontColor("black");
    obj.edit32:setField("combate3_3");
    obj.edit32:setType("text");
    obj.edit32:setName("edit32");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout35);
    obj.edit33:setLeft(390);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(80);
    obj.edit33:setHeight(25);
    lfm_setPropAsString(obj.edit33, "fontStyle",  "bold");
    obj.edit33:setFontColor("black");
    obj.edit33:setField("combate3_4");
    obj.edit33:setType("text");
    obj.edit33:setName("edit33");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout35);
    obj.edit34:setLeft(475);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(80);
    obj.edit34:setHeight(25);
    lfm_setPropAsString(obj.edit34, "fontStyle",  "bold");
    obj.edit34:setFontColor("black");
    obj.edit34:setField("combate3_5");
    obj.edit34:setType("text");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout35);
    obj.edit35:setLeft(560);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(150);
    obj.edit35:setHeight(25);
    lfm_setPropAsString(obj.edit35, "fontStyle",  "bold");
    obj.edit35:setFontColor("black");
    obj.edit35:setField("combate3_6");
    obj.edit35:setType("text");
    obj.edit35:setName("edit35");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout32);
    obj.layout36:setLeft(0);
    obj.layout36:setTop(120);
    obj.layout36:setWidth(880);
    obj.layout36:setHeight(200);
    obj.layout36:setName("layout36");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout36);
    obj.edit36:setLeft(15);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(200);
    obj.edit36:setHeight(25);
    lfm_setPropAsString(obj.edit36, "fontStyle",  "bold");
    obj.edit36:setFontColor("black");
    obj.edit36:setField("combate4_1");
    obj.edit36:setType("text");
    obj.edit36:setName("edit36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout36);
    obj.edit37:setLeft(220);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(80);
    obj.edit37:setHeight(25);
    lfm_setPropAsString(obj.edit37, "fontStyle",  "bold");
    obj.edit37:setFontColor("black");
    obj.edit37:setField("combate4_2");
    obj.edit37:setType("text");
    obj.edit37:setName("edit37");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout36);
    obj.edit38:setLeft(305);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(80);
    obj.edit38:setHeight(25);
    lfm_setPropAsString(obj.edit38, "fontStyle",  "bold");
    obj.edit38:setFontColor("black");
    obj.edit38:setField("combate4_3");
    obj.edit38:setType("text");
    obj.edit38:setName("edit38");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout36);
    obj.edit39:setLeft(390);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(80);
    obj.edit39:setHeight(25);
    lfm_setPropAsString(obj.edit39, "fontStyle",  "bold");
    obj.edit39:setFontColor("black");
    obj.edit39:setField("combate4_4");
    obj.edit39:setType("text");
    obj.edit39:setName("edit39");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout36);
    obj.edit40:setLeft(475);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(80);
    obj.edit40:setHeight(25);
    lfm_setPropAsString(obj.edit40, "fontStyle",  "bold");
    obj.edit40:setFontColor("black");
    obj.edit40:setField("combate4_5");
    obj.edit40:setType("text");
    obj.edit40:setName("edit40");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout36);
    obj.edit41:setLeft(560);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(150);
    obj.edit41:setHeight(25);
    lfm_setPropAsString(obj.edit41, "fontStyle",  "bold");
    obj.edit41:setFontColor("black");
    obj.edit41:setField("combate4_6");
    obj.edit41:setType("text");
    obj.edit41:setName("edit41");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout32);
    obj.layout37:setLeft(0);
    obj.layout37:setTop(150);
    obj.layout37:setWidth(880);
    obj.layout37:setHeight(200);
    obj.layout37:setName("layout37");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout37);
    obj.edit42:setLeft(15);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(200);
    obj.edit42:setHeight(25);
    lfm_setPropAsString(obj.edit42, "fontStyle",  "bold");
    obj.edit42:setFontColor("black");
    obj.edit42:setField("combate5_1");
    obj.edit42:setType("text");
    obj.edit42:setName("edit42");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout37);
    obj.edit43:setLeft(220);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(80);
    obj.edit43:setHeight(25);
    lfm_setPropAsString(obj.edit43, "fontStyle",  "bold");
    obj.edit43:setFontColor("black");
    obj.edit43:setField("combate5_2");
    obj.edit43:setType("text");
    obj.edit43:setName("edit43");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout37);
    obj.edit44:setLeft(305);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(80);
    obj.edit44:setHeight(25);
    lfm_setPropAsString(obj.edit44, "fontStyle",  "bold");
    obj.edit44:setFontColor("black");
    obj.edit44:setField("combate5_3");
    obj.edit44:setType("text");
    obj.edit44:setName("edit44");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout37);
    obj.edit45:setLeft(390);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(80);
    obj.edit45:setHeight(25);
    lfm_setPropAsString(obj.edit45, "fontStyle",  "bold");
    obj.edit45:setFontColor("black");
    obj.edit45:setField("combate5_4");
    obj.edit45:setType("text");
    obj.edit45:setName("edit45");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout37);
    obj.edit46:setLeft(475);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(80);
    obj.edit46:setHeight(25);
    lfm_setPropAsString(obj.edit46, "fontStyle",  "bold");
    obj.edit46:setFontColor("black");
    obj.edit46:setField("combate5_5");
    obj.edit46:setType("text");
    obj.edit46:setName("edit46");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout37);
    obj.edit47:setLeft(560);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(150);
    obj.edit47:setHeight(25);
    lfm_setPropAsString(obj.edit47, "fontStyle",  "bold");
    obj.edit47:setFontColor("black");
    obj.edit47:setField("combate5_6");
    obj.edit47:setType("text");
    obj.edit47:setName("edit47");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout32);
    obj.layout38:setLeft(0);
    obj.layout38:setTop(180);
    obj.layout38:setWidth(880);
    obj.layout38:setHeight(200);
    obj.layout38:setName("layout38");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout38);
    obj.edit48:setLeft(15);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(200);
    obj.edit48:setHeight(25);
    lfm_setPropAsString(obj.edit48, "fontStyle",  "bold");
    obj.edit48:setFontColor("black");
    obj.edit48:setField("combate6_1");
    obj.edit48:setType("text");
    obj.edit48:setName("edit48");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout38);
    obj.edit49:setLeft(220);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(80);
    obj.edit49:setHeight(25);
    lfm_setPropAsString(obj.edit49, "fontStyle",  "bold");
    obj.edit49:setFontColor("black");
    obj.edit49:setField("combate6_2");
    obj.edit49:setType("text");
    obj.edit49:setName("edit49");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout38);
    obj.edit50:setLeft(305);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(80);
    obj.edit50:setHeight(25);
    lfm_setPropAsString(obj.edit50, "fontStyle",  "bold");
    obj.edit50:setFontColor("black");
    obj.edit50:setField("combate6_3");
    obj.edit50:setType("text");
    obj.edit50:setName("edit50");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout38);
    obj.edit51:setLeft(390);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(80);
    obj.edit51:setHeight(25);
    lfm_setPropAsString(obj.edit51, "fontStyle",  "bold");
    obj.edit51:setFontColor("black");
    obj.edit51:setField("combate6_4");
    obj.edit51:setType("text");
    obj.edit51:setName("edit51");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout38);
    obj.edit52:setLeft(475);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(80);
    obj.edit52:setHeight(25);
    lfm_setPropAsString(obj.edit52, "fontStyle",  "bold");
    obj.edit52:setFontColor("black");
    obj.edit52:setField("combate6_5");
    obj.edit52:setType("text");
    obj.edit52:setName("edit52");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout38);
    obj.edit53:setLeft(560);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(150);
    obj.edit53:setHeight(25);
    lfm_setPropAsString(obj.edit53, "fontStyle",  "bold");
    obj.edit53:setFontColor("black");
    obj.edit53:setField("combate6_6");
    obj.edit53:setType("text");
    obj.edit53:setName("edit53");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout32);
    obj.layout39:setLeft(0);
    obj.layout39:setTop(210);
    obj.layout39:setWidth(880);
    obj.layout39:setHeight(200);
    obj.layout39:setName("layout39");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout39);
    obj.edit54:setLeft(15);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(200);
    obj.edit54:setHeight(25);
    lfm_setPropAsString(obj.edit54, "fontStyle",  "bold");
    obj.edit54:setFontColor("black");
    obj.edit54:setField("combate7_1");
    obj.edit54:setType("text");
    obj.edit54:setName("edit54");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout39);
    obj.edit55:setLeft(220);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(80);
    obj.edit55:setHeight(25);
    lfm_setPropAsString(obj.edit55, "fontStyle",  "bold");
    obj.edit55:setFontColor("black");
    obj.edit55:setField("combate7_2");
    obj.edit55:setType("text");
    obj.edit55:setName("edit55");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout39);
    obj.edit56:setLeft(305);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(80);
    obj.edit56:setHeight(25);
    lfm_setPropAsString(obj.edit56, "fontStyle",  "bold");
    obj.edit56:setFontColor("black");
    obj.edit56:setField("combate7_3");
    obj.edit56:setType("text");
    obj.edit56:setName("edit56");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout39);
    obj.edit57:setLeft(390);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(80);
    obj.edit57:setHeight(25);
    lfm_setPropAsString(obj.edit57, "fontStyle",  "bold");
    obj.edit57:setFontColor("black");
    obj.edit57:setField("combate7_4");
    obj.edit57:setType("text");
    obj.edit57:setName("edit57");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout39);
    obj.edit58:setLeft(475);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(80);
    obj.edit58:setHeight(25);
    lfm_setPropAsString(obj.edit58, "fontStyle",  "bold");
    obj.edit58:setFontColor("black");
    obj.edit58:setField("combate7_5");
    obj.edit58:setType("text");
    obj.edit58:setName("edit58");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout39);
    obj.edit59:setLeft(560);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(150);
    obj.edit59:setHeight(25);
    lfm_setPropAsString(obj.edit59, "fontStyle",  "bold");
    obj.edit59:setFontColor("black");
    obj.edit59:setField("combate7_6");
    obj.edit59:setType("text");
    obj.edit59:setName("edit59");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout31);
    obj.layout40:setLeft(695);
    obj.layout40:setTop(30);
    obj.layout40:setWidth(400);
    obj.layout40:setHeight(400);
    obj.layout40:setName("layout40");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout40);
    obj.textEditor4:setLeft(20);
    obj.textEditor4:setTop(0);
    obj.textEditor4:setWidth(150);
    obj.textEditor4:setHeight(205);
    obj.textEditor4:setFontColor("black");
    obj.textEditor4:setField("armadura");
    lfm_setPropAsString(obj.textEditor4, "fontStyle",  "bold");
    obj.textEditor4:setName("textEditor4");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.scrollBox1);
    obj.layout41:setTop(850);
    obj.layout41:setWidth(880);
    obj.layout41:setHeight(25);
    obj.layout41:setName("layout41");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout41);
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setWidth(880);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setName("rectangle14");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout41);
    obj.label17:setLeft(415);
    obj.label17:setTop(2);
    obj.label17:setWidth(250);
    obj.label17:setHeight(20);
    obj.label17:setText("Pertences");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("White");
    obj.label17:setName("label17");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.scrollBox1);
    obj.layout42:setTop(845);
    obj.layout42:setWidth(880);
    obj.layout42:setHeight(200);
    obj.layout42:setName("layout42");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout42);
    obj.layout43:setLeft(20);
    obj.layout43:setTop(35);
    obj.layout43:setWidth(400);
    obj.layout43:setHeight(400);
    obj.layout43:setName("layout43");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout43);
    obj.label18:setWidth(200);
    obj.label18:setTop(0);
    obj.label18:setText("Equipamento (possuído):");
    obj.label18:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("Black");
    obj.label18:setName("label18");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout42);
    obj.layout44:setLeft(0);
    obj.layout44:setTop(55);
    obj.layout44:setWidth(500);
    obj.layout44:setHeight(400);
    obj.layout44:setName("layout44");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout44);
    obj.textEditor5:setLeft(20);
    obj.textEditor5:setTop(0);
    obj.textEditor5:setWidth(415);
    obj.textEditor5:setHeight(80);
    obj.textEditor5:setFontColor("black");
    obj.textEditor5:setField("equipP");
    lfm_setPropAsString(obj.textEditor5, "fontStyle",  "bold");
    obj.textEditor5:setName("textEditor5");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout42);
    obj.layout45:setLeft(450);
    obj.layout45:setTop(35);
    obj.layout45:setWidth(400);
    obj.layout45:setHeight(400);
    obj.layout45:setName("layout45");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout45);
    obj.label19:setWidth(200);
    obj.label19:setTop(0);
    obj.label19:setText("Equipamento (carregado):");
    obj.label19:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("Black");
    obj.label19:setName("label19");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout42);
    obj.layout46:setLeft(430);
    obj.layout46:setTop(55);
    obj.layout46:setWidth(500);
    obj.layout46:setHeight(400);
    obj.layout46:setName("layout46");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout46);
    obj.textEditor6:setLeft(20);
    obj.textEditor6:setTop(0);
    obj.textEditor6:setWidth(415);
    obj.textEditor6:setHeight(80);
    obj.textEditor6:setFontColor("black");
    obj.textEditor6:setField("equipC");
    lfm_setPropAsString(obj.textEditor6, "fontStyle",  "bold");
    obj.textEditor6:setName("textEditor6");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.scrollBox1);
    obj.layout47:setTop(990);
    obj.layout47:setWidth(880);
    obj.layout47:setHeight(25);
    obj.layout47:setName("layout47");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout47);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setWidth(880);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setName("rectangle15");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout47);
    obj.label20:setLeft(415);
    obj.label20:setTop(2);
    obj.label20:setWidth(250);
    obj.label20:setHeight(20);
    obj.label20:setText("Refúgios");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontColor("White");
    obj.label20:setName("label20");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.scrollBox1);
    obj.layout48:setTop(1005);
    obj.layout48:setWidth(880);
    obj.layout48:setHeight(100);
    obj.layout48:setName("layout48");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout48);
    obj.layout49:setLeft(0);
    obj.layout49:setTop(15);
    obj.layout49:setWidth(880);
    obj.layout49:setHeight(100);
    obj.layout49:setName("layout49");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout49);
    obj.textEditor7:setLeft(20);
    obj.textEditor7:setTop(0);
    obj.textEditor7:setWidth(845);
    obj.textEditor7:setHeight(80);
    obj.textEditor7:setFontColor("black");
    obj.textEditor7:setField("refugios");
    lfm_setPropAsString(obj.textEditor7, "fontStyle",  "bold");
    obj.textEditor7:setName("textEditor7");

    obj.frmCodigo2 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo2:setParent(obj);
    obj.frmCodigo2:setName("frmCodigo2");
    obj.frmCodigo2:setHeight(0);
    obj.frmCodigo2:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo2);
    obj.dataLink1:setFields({'umoutras1_5', 'umoutras1_4', 'umoutras1_3', 'umoutras1_2', 'umoutras1_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo2);
    obj.dataLink2:setFields({'umoutras2_5', 'umoutras2_4', 'umoutras2_3', 'umoutras2_2', 'umoutras2_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo2);
    obj.dataLink3:setFields({'umoutras3_5', 'umoutras3_4', 'umoutras3_3', 'umoutras3_2', 'umoutras3_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo2);
    obj.dataLink4:setFields({'umoutras4_5', 'umoutras4_4', 'umoutras4_3', 'umoutras4_2', 'umoutras4_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo2);
    obj.dataLink5:setFields({'umoutras5_5', 'umoutras5_4', 'umoutras5_3', 'umoutras5_2', 'umoutras5_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo2);
    obj.dataLink6:setFields({'doisoutras1_5', 'doisoutras1_4', 'doisoutras1_3', 'doisoutras1_2', 'doisoutras1_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo2);
    obj.dataLink7:setFields({'doisoutras2_5', 'doisoutras2_4', 'doisoutras2_3', 'doisoutras2_2', 'doisoutras2_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo2);
    obj.dataLink8:setFields({'doisoutras3_5', 'doisoutras3_4', 'doisoutras3_3', 'doisoutras3_2', 'doisoutras3_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo2);
    obj.dataLink9:setFields({'doisoutras4_5', 'doisoutras4_4', 'doisoutras4_3', 'doisoutras4_2', 'doisoutras4_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo2);
    obj.dataLink10:setFields({'doisoutras5_5', 'doisoutras5_4', 'doisoutras5_3', 'doisoutras5_2', 'doisoutras5_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo2);
    obj.dataLink11:setFields({'tresoutras1_5', 'tresoutras1_4', 'tresoutras1_3', 'tresoutras1_2', 'tresoutras1_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo2);
    obj.dataLink12:setFields({'tresoutras2_5', 'tresoutras2_4', 'tresoutras2_3', 'tresoutras2_2', 'tresoutras2_1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo2);
    obj.dataLink13:setFields({'tresoutras3_5', 'tresoutras3_4', 'tresoutras3_3', 'tresoutras3_2', 'tresoutras3_1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo2);
    obj.dataLink14:setFields({'tresoutras4_5', 'tresoutras4_4', 'tresoutras4_3', 'tresoutras4_2', 'tresoutras4_1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo2);
    obj.dataLink15:setFields({'tresoutras5_5', 'tresoutras5_4', 'tresoutras5_3', 'tresoutras5_2', 'tresoutras5_1'});
    obj.dataLink15:setName("dataLink15");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras1_5 == true then
            		sheet.umoutras1_4 = true;
            		sheet.umoutras1_3 = true;
            		sheet.umoutras1_2 = true;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_4 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_3 = true;
            		sheet.umoutras1_2 = true;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_3 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_4 = false;
            		sheet.umoutras1_2 = true;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_2 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_4 = false;
            		sheet.umoutras1_3 = false;
            		sheet.umoutras1_1 = true;
            	elseif sheet.umoutras1_1 == true then
            		sheet.umoutras1_5 = false;
            		sheet.umoutras1_4 = false;
            		sheet.umoutras1_3 = false;
            		sheet.umoutras1_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras2_5 == true then
            		sheet.umoutras2_4 = true;
            		sheet.umoutras2_3 = true;
            		sheet.umoutras2_2 = true;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_4 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_3 = true;
            		sheet.umoutras2_2 = true;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_3 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_4 = false;
            		sheet.umoutras2_2 = true;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_2 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_4 = false;
            		sheet.umoutras2_3 = false;
            		sheet.umoutras2_1 = true;
            	elseif sheet.umoutras2_1 == true then
            		sheet.umoutras2_5 = false;
            		sheet.umoutras2_4 = false;
            		sheet.umoutras2_3 = false;
            		sheet.umoutras2_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras3_5 == true then
            		sheet.umoutras3_4 = true;
            		sheet.umoutras3_3 = true;
            		sheet.umoutras3_2 = true;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_4 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_3 = true;
            		sheet.umoutras3_2 = true;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_3 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_4 = false;
            		sheet.umoutras3_2 = true;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_2 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_4 = false;
            		sheet.umoutras3_3 = false;
            		sheet.umoutras3_1 = true;
            	elseif sheet.umoutras3_1 == true then
            		sheet.umoutras3_5 = false;
            		sheet.umoutras3_4 = false;
            		sheet.umoutras3_3 = false;
            		sheet.umoutras3_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras4_5 == true then
            		sheet.umoutras4_4 = true;
            		sheet.umoutras4_3 = true;
            		sheet.umoutras4_2 = true;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_4 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_3 = true;
            		sheet.umoutras4_2 = true;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_3 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_4 = false;
            		sheet.umoutras4_2 = true;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_2 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_4 = false;
            		sheet.umoutras4_3 = false;
            		sheet.umoutras4_1 = true;
            	elseif sheet.umoutras4_1 == true then
            		sheet.umoutras4_5 = false;
            		sheet.umoutras4_4 = false;
            		sheet.umoutras4_3 = false;
            		sheet.umoutras4_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.umoutras5_5 == true then
            		sheet.umoutras5_4 = true;
            		sheet.umoutras5_3 = true;
            		sheet.umoutras5_2 = true;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_4 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_3 = true;
            		sheet.umoutras5_2 = true;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_3 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_4 = false;
            		sheet.umoutras5_2 = true;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_2 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_4 = false;
            		sheet.umoutras5_3 = false;
            		sheet.umoutras5_1 = true;
            	elseif sheet.umoutras5_1 == true then
            		sheet.umoutras5_5 = false;
            		sheet.umoutras5_4 = false;
            		sheet.umoutras5_3 = false;
            		sheet.umoutras5_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras1_5 == true then
            		sheet.doisoutras1_4 = true;
            		sheet.doisoutras1_3 = true;
            		sheet.doisoutras1_2 = true;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_4 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_3 = true;
            		sheet.doisoutras1_2 = true;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_3 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_4 = false;
            		sheet.doisoutras1_2 = true;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_2 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_4 = false;
            		sheet.doisoutras1_3 = false;
            		sheet.doisoutras1_1 = true;
            	elseif sheet.doisoutras1_1 == true then
            		sheet.doisoutras1_5 = false;
            		sheet.doisoutras1_4 = false;
            		sheet.doisoutras1_3 = false;
            		sheet.doisoutras1_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras2_5 == true then
            		sheet.doisoutras2_4 = true;
            		sheet.doisoutras2_3 = true;
            		sheet.doisoutras2_2 = true;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_4 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_3 = true;
            		sheet.doisoutras2_2 = true;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_3 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_4 = false;
            		sheet.doisoutras2_2 = true;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_2 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_4 = false;
            		sheet.doisoutras2_3 = false;
            		sheet.doisoutras2_1 = true;
            	elseif sheet.doisoutras2_1 == true then
            		sheet.doisoutras2_5 = false;
            		sheet.doisoutras2_4 = false;
            		sheet.doisoutras2_3 = false;
            		sheet.doisoutras2_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras3_5 == true then
            		sheet.doisoutras3_4 = true;
            		sheet.doisoutras3_3 = true;
            		sheet.doisoutras3_2 = true;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_4 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_3 = true;
            		sheet.doisoutras3_2 = true;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_3 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_4 = false;
            		sheet.doisoutras3_2 = true;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_2 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_4 = false;
            		sheet.doisoutras3_3 = false;
            		sheet.doisoutras3_1 = true;
            	elseif sheet.doisoutras3_1 == true then
            		sheet.doisoutras3_5 = false;
            		sheet.doisoutras3_4 = false;
            		sheet.doisoutras3_3 = false;
            		sheet.doisoutras3_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras4_5 == true then
            		sheet.doisoutras4_4 = true;
            		sheet.doisoutras4_3 = true;
            		sheet.doisoutras4_2 = true;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_4 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_3 = true;
            		sheet.doisoutras4_2 = true;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_3 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_4 = false;
            		sheet.doisoutras4_2 = true;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_2 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_4 = false;
            		sheet.doisoutras4_3 = false;
            		sheet.doisoutras4_1 = true;
            	elseif sheet.doisoutras4_1 == true then
            		sheet.doisoutras4_5 = false;
            		sheet.doisoutras4_4 = false;
            		sheet.doisoutras4_3 = false;
            		sheet.doisoutras4_2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.doisoutras5_5 == true then
            		sheet.doisoutras5_4 = true;
            		sheet.doisoutras5_3 = true;
            		sheet.doisoutras5_2 = true;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_4 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_3 = true;
            		sheet.doisoutras5_2 = true;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_3 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_4 = false;
            		sheet.doisoutras5_2 = true;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_2 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_4 = false;
            		sheet.doisoutras5_3 = false;
            		sheet.doisoutras5_1 = true;
            	elseif sheet.doisoutras5_1 == true then
            		sheet.doisoutras5_5 = false;
            		sheet.doisoutras5_4 = false;
            		sheet.doisoutras5_3 = false;
            		sheet.doisoutras5_2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras1_5 == true then
            		sheet.tresoutras1_4 = true;
            		sheet.tresoutras1_3 = true;
            		sheet.tresoutras1_2 = true;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_4 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_3 = true;
            		sheet.tresoutras1_2 = true;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_3 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_4 = false;
            		sheet.tresoutras1_2 = true;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_2 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_4 = false;
            		sheet.tresoutras1_3 = false;
            		sheet.tresoutras1_1 = true;
            	elseif sheet.tresoutras1_1 == true then
            		sheet.tresoutras1_5 = false;
            		sheet.tresoutras1_4 = false;
            		sheet.tresoutras1_3 = false;
            		sheet.tresoutras1_2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras2_5 == true then
            		sheet.tresoutras2_4 = true;
            		sheet.tresoutras2_3 = true;
            		sheet.tresoutras2_2 = true;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_4 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_3 = true;
            		sheet.tresoutras2_2 = true;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_3 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_4 = false;
            		sheet.tresoutras2_2 = true;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_2 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_4 = false;
            		sheet.tresoutras2_3 = false;
            		sheet.tresoutras2_1 = true;
            	elseif sheet.tresoutras2_1 == true then
            		sheet.tresoutras2_5 = false;
            		sheet.tresoutras2_4 = false;
            		sheet.tresoutras2_3 = false;
            		sheet.tresoutras2_2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras3_5 == true then
            		sheet.tresoutras3_4 = true;
            		sheet.tresoutras3_3 = true;
            		sheet.tresoutras3_2 = true;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_4 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_3 = true;
            		sheet.tresoutras3_2 = true;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_3 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_4 = false;
            		sheet.tresoutras3_2 = true;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_2 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_4 = false;
            		sheet.tresoutras3_3 = false;
            		sheet.tresoutras3_1 = true;
            	elseif sheet.tresoutras3_1 == true then
            		sheet.tresoutras3_5 = false;
            		sheet.tresoutras3_4 = false;
            		sheet.tresoutras3_3 = false;
            		sheet.tresoutras3_2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras4_5 == true then
            		sheet.tresoutras4_4 = true;
            		sheet.tresoutras4_3 = true;
            		sheet.tresoutras4_2 = true;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_4 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_3 = true;
            		sheet.tresoutras4_2 = true;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_3 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_4 = false;
            		sheet.tresoutras4_2 = true;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_2 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_4 = false;
            		sheet.tresoutras4_3 = false;
            		sheet.tresoutras4_1 = true;
            	elseif sheet.tresoutras4_1 == true then
            		sheet.tresoutras4_5 = false;
            		sheet.tresoutras4_4 = false;
            		sheet.tresoutras4_3 = false;
            		sheet.tresoutras4_2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.tresoutras5_5 == true then
            		sheet.tresoutras5_4 = true;
            		sheet.tresoutras5_3 = true;
            		sheet.tresoutras5_2 = true;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_4 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_3 = true;
            		sheet.tresoutras5_2 = true;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_3 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_4 = false;
            		sheet.tresoutras5_2 = true;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_2 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_4 = false;
            		sheet.tresoutras5_3 = false;
            		sheet.tresoutras5_1 = true;
            	elseif sheet.tresoutras5_1 == true then
            		sheet.tresoutras5_5 = false;
            		sheet.tresoutras5_4 = false;
            		sheet.tresoutras5_3 = false;
            		sheet.tresoutras5_2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.frmCodigo2 ~= nil then self.frmCodigo2:destroy(); self.frmCodigo2 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
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
