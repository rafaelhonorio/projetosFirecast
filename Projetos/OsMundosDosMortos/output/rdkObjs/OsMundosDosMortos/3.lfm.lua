require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_OsMundosDosMortos3()
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
    obj:setName("OsMundosDosMortos3");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(880);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("gray");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(8);
    obj.label1:setTop(5);
    obj.label1:setWidth(168);
    obj.label1:setHeight(20);
    obj.label1:setText("Habilidades Secundarias");
    obj.label1:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setName("label1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(45);
    obj.layout2:setWidth(860);
    obj.layout2:setHeight(320);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setName("rectangle2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(100);
    obj.label2:setTop(10);
    obj.label2:setWidth(130);
    obj.label2:setHeight(20);
    obj.label2:setText("Minhas Habilidades");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontSize(13);
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(365);
    obj.label3:setTop(10);
    obj.label3:setWidth(130);
    obj.label3:setHeight(20);
    obj.label3:setText("Minhas Habilidades");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontSize(13);
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(620);
    obj.label4:setTop(10);
    obj.label4:setWidth(140);
    obj.label4:setHeight(20);
    obj.label4:setText("Habilidades de Classe");
    obj.label4:setHorzTextAlign("trailing");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontSize(13);
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setLeft(30);
    obj.layout3:setTop(36);
    obj.layout3:setWidth(260);
    obj.layout3:setHeight(250);
    obj.layout3:setName("layout3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setLeft(10);
    obj.layout4:setTop(11);
    obj.layout4:setWidth(245);
    obj.layout4:setHeight(20);
    obj.layout4:setName("layout4");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout4);
    obj.horzLine1:setTop(18);
    obj.horzLine1:setWidth(130);
    obj.horzLine1:setStrokeSize(2);
    obj.horzLine1:setStrokeColor("black");
    obj.horzLine1:setName("horzLine1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout4);
    obj.edit1:setField("shabilidades1_e");
    obj.edit1:setLeft(2);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(125);
    obj.edit1:setHeight(20);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setFontColor("black");
    obj.edit1:setFontSize(14);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout4);
    obj.imageCheckBox1:setField("shabilidades1_1");
    obj.imageCheckBox1:setLeft(137);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout4);
    obj.imageCheckBox2:setField("shabilidades1_2");
    obj.imageCheckBox2:setLeft(155);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout4);
    obj.imageCheckBox3:setField("shabilidades1_3");
    obj.imageCheckBox3:setLeft(173);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout4);
    obj.imageCheckBox4:setField("shabilidades1_4");
    obj.imageCheckBox4:setLeft(191);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout4);
    obj.imageCheckBox5:setField("shabilidades1_5");
    obj.imageCheckBox5:setLeft(209);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(15);
    obj.imageCheckBox5:setHeight(15);
    obj.imageCheckBox5:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox5:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout4);
    obj.imageCheckBox6:setField("shabilidades1_6");
    obj.imageCheckBox6:setLeft(227);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout3);
    obj.layout5:setLeft(10);
    obj.layout5:setTop(41);
    obj.layout5:setWidth(245);
    obj.layout5:setHeight(20);
    obj.layout5:setName("layout5");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layout5);
    obj.horzLine2:setTop(18);
    obj.horzLine2:setWidth(130);
    obj.horzLine2:setStrokeSize(2);
    obj.horzLine2:setStrokeColor("black");
    obj.horzLine2:setName("horzLine2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout5);
    obj.edit2:setField("shabilidades2_e");
    obj.edit2:setLeft(2);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(125);
    obj.edit2:setHeight(20);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setFontColor("black");
    obj.edit2:setFontSize(14);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setTransparent(true);
    obj.edit2:setName("edit2");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout5);
    obj.imageCheckBox7:setField("shabilidades2_1");
    obj.imageCheckBox7:setLeft(137);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout5);
    obj.imageCheckBox8:setField("shabilidades2_2");
    obj.imageCheckBox8:setLeft(155);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout5);
    obj.imageCheckBox9:setField("shabilidades2_3");
    obj.imageCheckBox9:setLeft(173);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout5);
    obj.imageCheckBox10:setField("shabilidades2_4");
    obj.imageCheckBox10:setLeft(191);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(15);
    obj.imageCheckBox10:setHeight(15);
    obj.imageCheckBox10:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox10:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout5);
    obj.imageCheckBox11:setField("shabilidades2_5");
    obj.imageCheckBox11:setLeft(209);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout5);
    obj.imageCheckBox12:setField("shabilidades2_6");
    obj.imageCheckBox12:setLeft(227);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout3);
    obj.layout6:setLeft(10);
    obj.layout6:setTop(71);
    obj.layout6:setWidth(245);
    obj.layout6:setHeight(20);
    obj.layout6:setName("layout6");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout6);
    obj.horzLine3:setTop(18);
    obj.horzLine3:setWidth(130);
    obj.horzLine3:setStrokeSize(2);
    obj.horzLine3:setStrokeColor("black");
    obj.horzLine3:setName("horzLine3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout6);
    obj.edit3:setField("shabilidades3_e");
    obj.edit3:setLeft(2);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(125);
    obj.edit3:setHeight(20);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setFontColor("black");
    obj.edit3:setFontSize(14);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setTransparent(true);
    obj.edit3:setName("edit3");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout6);
    obj.imageCheckBox13:setField("shabilidades3_1");
    obj.imageCheckBox13:setLeft(137);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout6);
    obj.imageCheckBox14:setField("shabilidades3_2");
    obj.imageCheckBox14:setLeft(155);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout6);
    obj.imageCheckBox15:setField("shabilidades3_3");
    obj.imageCheckBox15:setLeft(173);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(15);
    obj.imageCheckBox15:setHeight(15);
    obj.imageCheckBox15:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox15:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout6);
    obj.imageCheckBox16:setField("shabilidades3_4");
    obj.imageCheckBox16:setLeft(191);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(15);
    obj.imageCheckBox16:setHeight(15);
    obj.imageCheckBox16:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox16:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout6);
    obj.imageCheckBox17:setField("shabilidades3_5");
    obj.imageCheckBox17:setLeft(209);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(15);
    obj.imageCheckBox17:setHeight(15);
    obj.imageCheckBox17:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox17:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout6);
    obj.imageCheckBox18:setField("shabilidades3_6");
    obj.imageCheckBox18:setLeft(227);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(15);
    obj.imageCheckBox18:setHeight(15);
    obj.imageCheckBox18:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox18:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout3);
    obj.layout7:setLeft(10);
    obj.layout7:setTop(101);
    obj.layout7:setWidth(245);
    obj.layout7:setHeight(20);
    obj.layout7:setName("layout7");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout7);
    obj.horzLine4:setTop(18);
    obj.horzLine4:setWidth(130);
    obj.horzLine4:setStrokeSize(2);
    obj.horzLine4:setStrokeColor("black");
    obj.horzLine4:setName("horzLine4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout7);
    obj.edit4:setField("shabilidades4_e");
    obj.edit4:setLeft(2);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(125);
    obj.edit4:setHeight(20);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setFontColor("black");
    obj.edit4:setFontSize(14);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setTransparent(true);
    obj.edit4:setName("edit4");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout7);
    obj.imageCheckBox19:setField("shabilidades4_1");
    obj.imageCheckBox19:setLeft(137);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(15);
    obj.imageCheckBox19:setHeight(15);
    obj.imageCheckBox19:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox19:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout7);
    obj.imageCheckBox20:setField("shabilidades4_2");
    obj.imageCheckBox20:setLeft(155);
    obj.imageCheckBox20:setTop(4);
    obj.imageCheckBox20:setWidth(15);
    obj.imageCheckBox20:setHeight(15);
    obj.imageCheckBox20:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox20:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout7);
    obj.imageCheckBox21:setField("shabilidades4_3");
    obj.imageCheckBox21:setLeft(173);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(15);
    obj.imageCheckBox21:setHeight(15);
    obj.imageCheckBox21:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox21:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout7);
    obj.imageCheckBox22:setField("shabilidades4_4");
    obj.imageCheckBox22:setLeft(191);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(15);
    obj.imageCheckBox22:setHeight(15);
    obj.imageCheckBox22:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox22:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout7);
    obj.imageCheckBox23:setField("shabilidades4_5");
    obj.imageCheckBox23:setLeft(209);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(15);
    obj.imageCheckBox23:setHeight(15);
    obj.imageCheckBox23:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox23:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout7);
    obj.imageCheckBox24:setField("shabilidades4_6");
    obj.imageCheckBox24:setLeft(227);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(15);
    obj.imageCheckBox24:setHeight(15);
    obj.imageCheckBox24:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox24:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout3);
    obj.layout8:setLeft(10);
    obj.layout8:setTop(131);
    obj.layout8:setWidth(245);
    obj.layout8:setHeight(20);
    obj.layout8:setName("layout8");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout8);
    obj.horzLine5:setTop(18);
    obj.horzLine5:setWidth(130);
    obj.horzLine5:setStrokeSize(2);
    obj.horzLine5:setStrokeColor("black");
    obj.horzLine5:setName("horzLine5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout8);
    obj.edit5:setField("shabilidades5_e");
    obj.edit5:setLeft(2);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(125);
    obj.edit5:setHeight(20);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setFontColor("black");
    obj.edit5:setFontSize(14);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setTransparent(true);
    obj.edit5:setName("edit5");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout8);
    obj.imageCheckBox25:setField("shabilidades5_1");
    obj.imageCheckBox25:setLeft(137);
    obj.imageCheckBox25:setTop(4);
    obj.imageCheckBox25:setWidth(15);
    obj.imageCheckBox25:setHeight(15);
    obj.imageCheckBox25:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox25:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout8);
    obj.imageCheckBox26:setField("shabilidades5_2");
    obj.imageCheckBox26:setLeft(155);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(15);
    obj.imageCheckBox26:setHeight(15);
    obj.imageCheckBox26:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox26:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout8);
    obj.imageCheckBox27:setField("shabilidades5_3");
    obj.imageCheckBox27:setLeft(173);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(15);
    obj.imageCheckBox27:setHeight(15);
    obj.imageCheckBox27:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox27:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout8);
    obj.imageCheckBox28:setField("shabilidades5_4");
    obj.imageCheckBox28:setLeft(191);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(15);
    obj.imageCheckBox28:setHeight(15);
    obj.imageCheckBox28:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox28:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout8);
    obj.imageCheckBox29:setField("shabilidades5_5");
    obj.imageCheckBox29:setLeft(209);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(15);
    obj.imageCheckBox29:setHeight(15);
    obj.imageCheckBox29:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox29:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout8);
    obj.imageCheckBox30:setField("shabilidades5_6");
    obj.imageCheckBox30:setLeft(227);
    obj.imageCheckBox30:setTop(4);
    obj.imageCheckBox30:setWidth(15);
    obj.imageCheckBox30:setHeight(15);
    obj.imageCheckBox30:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox30:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout3);
    obj.layout9:setLeft(10);
    obj.layout9:setTop(161);
    obj.layout9:setWidth(245);
    obj.layout9:setHeight(20);
    obj.layout9:setName("layout9");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout9);
    obj.horzLine6:setTop(18);
    obj.horzLine6:setWidth(130);
    obj.horzLine6:setStrokeSize(2);
    obj.horzLine6:setStrokeColor("black");
    obj.horzLine6:setName("horzLine6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout9);
    obj.edit6:setField("shabilidades6_e");
    obj.edit6:setLeft(2);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(125);
    obj.edit6:setHeight(20);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setFontColor("black");
    obj.edit6:setFontSize(14);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setTransparent(true);
    obj.edit6:setName("edit6");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout9);
    obj.imageCheckBox31:setField("shabilidades6_1");
    obj.imageCheckBox31:setLeft(137);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(15);
    obj.imageCheckBox31:setHeight(15);
    obj.imageCheckBox31:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox31:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout9);
    obj.imageCheckBox32:setField("shabilidades6_2");
    obj.imageCheckBox32:setLeft(155);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(15);
    obj.imageCheckBox32:setHeight(15);
    obj.imageCheckBox32:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox32:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout9);
    obj.imageCheckBox33:setField("shabilidades6_3");
    obj.imageCheckBox33:setLeft(173);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(15);
    obj.imageCheckBox33:setHeight(15);
    obj.imageCheckBox33:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox33:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout9);
    obj.imageCheckBox34:setField("shabilidades6_4");
    obj.imageCheckBox34:setLeft(191);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(15);
    obj.imageCheckBox34:setHeight(15);
    obj.imageCheckBox34:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox34:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout9);
    obj.imageCheckBox35:setField("shabilidades6_5");
    obj.imageCheckBox35:setLeft(209);
    obj.imageCheckBox35:setTop(4);
    obj.imageCheckBox35:setWidth(15);
    obj.imageCheckBox35:setHeight(15);
    obj.imageCheckBox35:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox35:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout9);
    obj.imageCheckBox36:setField("shabilidades6_6");
    obj.imageCheckBox36:setLeft(227);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(15);
    obj.imageCheckBox36:setHeight(15);
    obj.imageCheckBox36:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox36:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout3);
    obj.layout10:setLeft(10);
    obj.layout10:setTop(191);
    obj.layout10:setWidth(245);
    obj.layout10:setHeight(20);
    obj.layout10:setName("layout10");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.layout10);
    obj.horzLine7:setTop(18);
    obj.horzLine7:setWidth(130);
    obj.horzLine7:setStrokeSize(2);
    obj.horzLine7:setStrokeColor("black");
    obj.horzLine7:setName("horzLine7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout10);
    obj.edit7:setField("shabilidades7_e");
    obj.edit7:setLeft(2);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(125);
    obj.edit7:setHeight(20);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setFontColor("black");
    obj.edit7:setFontSize(14);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setTransparent(true);
    obj.edit7:setName("edit7");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout10);
    obj.imageCheckBox37:setField("shabilidades7_1");
    obj.imageCheckBox37:setLeft(137);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(15);
    obj.imageCheckBox37:setHeight(15);
    obj.imageCheckBox37:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox37:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout10);
    obj.imageCheckBox38:setField("shabilidades7_2");
    obj.imageCheckBox38:setLeft(155);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(15);
    obj.imageCheckBox38:setHeight(15);
    obj.imageCheckBox38:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox38:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout10);
    obj.imageCheckBox39:setField("shabilidades7_3");
    obj.imageCheckBox39:setLeft(173);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(15);
    obj.imageCheckBox39:setHeight(15);
    obj.imageCheckBox39:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox39:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout10);
    obj.imageCheckBox40:setField("shabilidades7_4");
    obj.imageCheckBox40:setLeft(191);
    obj.imageCheckBox40:setTop(4);
    obj.imageCheckBox40:setWidth(15);
    obj.imageCheckBox40:setHeight(15);
    obj.imageCheckBox40:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox40:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout10);
    obj.imageCheckBox41:setField("shabilidades7_5");
    obj.imageCheckBox41:setLeft(209);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(15);
    obj.imageCheckBox41:setHeight(15);
    obj.imageCheckBox41:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox41:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout10);
    obj.imageCheckBox42:setField("shabilidades7_6");
    obj.imageCheckBox42:setLeft(227);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(15);
    obj.imageCheckBox42:setHeight(15);
    obj.imageCheckBox42:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox42:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout3);
    obj.layout11:setLeft(10);
    obj.layout11:setTop(221);
    obj.layout11:setWidth(245);
    obj.layout11:setHeight(20);
    obj.layout11:setName("layout11");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout11);
    obj.horzLine8:setTop(18);
    obj.horzLine8:setWidth(130);
    obj.horzLine8:setStrokeSize(2);
    obj.horzLine8:setStrokeColor("black");
    obj.horzLine8:setName("horzLine8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout11);
    obj.edit8:setField("shabilidades8_e");
    obj.edit8:setLeft(2);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(125);
    obj.edit8:setHeight(20);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setFontColor("black");
    obj.edit8:setFontSize(14);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setTransparent(true);
    obj.edit8:setName("edit8");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout11);
    obj.imageCheckBox43:setField("shabilidades8_1");
    obj.imageCheckBox43:setLeft(137);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(15);
    obj.imageCheckBox43:setHeight(15);
    obj.imageCheckBox43:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox43:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout11);
    obj.imageCheckBox44:setField("shabilidades8_2");
    obj.imageCheckBox44:setLeft(155);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(15);
    obj.imageCheckBox44:setHeight(15);
    obj.imageCheckBox44:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox44:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout11);
    obj.imageCheckBox45:setField("shabilidades8_3");
    obj.imageCheckBox45:setLeft(173);
    obj.imageCheckBox45:setTop(4);
    obj.imageCheckBox45:setWidth(15);
    obj.imageCheckBox45:setHeight(15);
    obj.imageCheckBox45:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox45:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout11);
    obj.imageCheckBox46:setField("shabilidades8_4");
    obj.imageCheckBox46:setLeft(191);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(15);
    obj.imageCheckBox46:setHeight(15);
    obj.imageCheckBox46:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox46:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout11);
    obj.imageCheckBox47:setField("shabilidades8_5");
    obj.imageCheckBox47:setLeft(209);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(15);
    obj.imageCheckBox47:setHeight(15);
    obj.imageCheckBox47:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox47:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout11);
    obj.imageCheckBox48:setField("shabilidades8_6");
    obj.imageCheckBox48:setLeft(227);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(15);
    obj.imageCheckBox48:setHeight(15);
    obj.imageCheckBox48:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox48:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout2);
    obj.layout12:setLeft(295);
    obj.layout12:setTop(36);
    obj.layout12:setWidth(260);
    obj.layout12:setHeight(250);
    obj.layout12:setName("layout12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout12);
    obj.layout13:setLeft(10);
    obj.layout13:setTop(11);
    obj.layout13:setWidth(245);
    obj.layout13:setHeight(20);
    obj.layout13:setName("layout13");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout13);
    obj.horzLine9:setTop(18);
    obj.horzLine9:setWidth(130);
    obj.horzLine9:setStrokeSize(2);
    obj.horzLine9:setStrokeColor("black");
    obj.horzLine9:setName("horzLine9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout13);
    obj.edit9:setField("shabilidades1_f");
    obj.edit9:setLeft(2);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(125);
    obj.edit9:setHeight(20);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setFontColor("black");
    obj.edit9:setFontSize(14);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setTransparent(true);
    obj.edit9:setName("edit9");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout13);
    obj.imageCheckBox49:setField("shabilidades1_h1");
    obj.imageCheckBox49:setLeft(137);
    obj.imageCheckBox49:setTop(4);
    obj.imageCheckBox49:setWidth(15);
    obj.imageCheckBox49:setHeight(15);
    obj.imageCheckBox49:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox49:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout13);
    obj.imageCheckBox50:setField("shabilidades1_h2");
    obj.imageCheckBox50:setLeft(155);
    obj.imageCheckBox50:setTop(4);
    obj.imageCheckBox50:setWidth(15);
    obj.imageCheckBox50:setHeight(15);
    obj.imageCheckBox50:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox50:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout13);
    obj.imageCheckBox51:setField("shabilidades1_h3");
    obj.imageCheckBox51:setLeft(173);
    obj.imageCheckBox51:setTop(4);
    obj.imageCheckBox51:setWidth(15);
    obj.imageCheckBox51:setHeight(15);
    obj.imageCheckBox51:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox51:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout13);
    obj.imageCheckBox52:setField("shabilidades1_h4");
    obj.imageCheckBox52:setLeft(191);
    obj.imageCheckBox52:setTop(4);
    obj.imageCheckBox52:setWidth(15);
    obj.imageCheckBox52:setHeight(15);
    obj.imageCheckBox52:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox52:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout13);
    obj.imageCheckBox53:setField("shabilidades1_h5");
    obj.imageCheckBox53:setLeft(209);
    obj.imageCheckBox53:setTop(4);
    obj.imageCheckBox53:setWidth(15);
    obj.imageCheckBox53:setHeight(15);
    obj.imageCheckBox53:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox53:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout13);
    obj.imageCheckBox54:setField("shabilidades1_h6");
    obj.imageCheckBox54:setLeft(227);
    obj.imageCheckBox54:setTop(4);
    obj.imageCheckBox54:setWidth(15);
    obj.imageCheckBox54:setHeight(15);
    obj.imageCheckBox54:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox54:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout12);
    obj.layout14:setLeft(10);
    obj.layout14:setTop(41);
    obj.layout14:setWidth(245);
    obj.layout14:setHeight(20);
    obj.layout14:setName("layout14");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout14);
    obj.horzLine10:setTop(18);
    obj.horzLine10:setWidth(130);
    obj.horzLine10:setStrokeSize(2);
    obj.horzLine10:setStrokeColor("black");
    obj.horzLine10:setName("horzLine10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout14);
    obj.edit10:setField("shabilidades2_f");
    obj.edit10:setLeft(2);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(125);
    obj.edit10:setHeight(20);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setFontColor("black");
    obj.edit10:setFontSize(14);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setTransparent(true);
    obj.edit10:setName("edit10");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout14);
    obj.imageCheckBox55:setField("shabilidades2_h1");
    obj.imageCheckBox55:setLeft(137);
    obj.imageCheckBox55:setTop(4);
    obj.imageCheckBox55:setWidth(15);
    obj.imageCheckBox55:setHeight(15);
    obj.imageCheckBox55:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox55:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout14);
    obj.imageCheckBox56:setField("shabilidades2_h2");
    obj.imageCheckBox56:setLeft(155);
    obj.imageCheckBox56:setTop(4);
    obj.imageCheckBox56:setWidth(15);
    obj.imageCheckBox56:setHeight(15);
    obj.imageCheckBox56:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox56:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout14);
    obj.imageCheckBox57:setField("shabilidades2_h3");
    obj.imageCheckBox57:setLeft(173);
    obj.imageCheckBox57:setTop(4);
    obj.imageCheckBox57:setWidth(15);
    obj.imageCheckBox57:setHeight(15);
    obj.imageCheckBox57:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox57:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout14);
    obj.imageCheckBox58:setField("shabilidades2_h4");
    obj.imageCheckBox58:setLeft(191);
    obj.imageCheckBox58:setTop(4);
    obj.imageCheckBox58:setWidth(15);
    obj.imageCheckBox58:setHeight(15);
    obj.imageCheckBox58:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox58:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout14);
    obj.imageCheckBox59:setField("shabilidades2_h5");
    obj.imageCheckBox59:setLeft(209);
    obj.imageCheckBox59:setTop(4);
    obj.imageCheckBox59:setWidth(15);
    obj.imageCheckBox59:setHeight(15);
    obj.imageCheckBox59:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox59:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout14);
    obj.imageCheckBox60:setField("shabilidades2_h6");
    obj.imageCheckBox60:setLeft(227);
    obj.imageCheckBox60:setTop(4);
    obj.imageCheckBox60:setWidth(15);
    obj.imageCheckBox60:setHeight(15);
    obj.imageCheckBox60:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox60:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout12);
    obj.layout15:setLeft(10);
    obj.layout15:setTop(71);
    obj.layout15:setWidth(245);
    obj.layout15:setHeight(20);
    obj.layout15:setName("layout15");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout15);
    obj.horzLine11:setTop(18);
    obj.horzLine11:setWidth(130);
    obj.horzLine11:setStrokeSize(2);
    obj.horzLine11:setStrokeColor("black");
    obj.horzLine11:setName("horzLine11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout15);
    obj.edit11:setField("shabilidades3_f");
    obj.edit11:setLeft(2);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(125);
    obj.edit11:setHeight(20);
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setFontColor("black");
    obj.edit11:setFontSize(14);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setTransparent(true);
    obj.edit11:setName("edit11");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout15);
    obj.imageCheckBox61:setField("shabilidades3_h1");
    obj.imageCheckBox61:setLeft(137);
    obj.imageCheckBox61:setTop(4);
    obj.imageCheckBox61:setWidth(15);
    obj.imageCheckBox61:setHeight(15);
    obj.imageCheckBox61:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox61:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout15);
    obj.imageCheckBox62:setField("shabilidades3_h2");
    obj.imageCheckBox62:setLeft(155);
    obj.imageCheckBox62:setTop(4);
    obj.imageCheckBox62:setWidth(15);
    obj.imageCheckBox62:setHeight(15);
    obj.imageCheckBox62:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox62:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout15);
    obj.imageCheckBox63:setField("shabilidades3_h3");
    obj.imageCheckBox63:setLeft(173);
    obj.imageCheckBox63:setTop(4);
    obj.imageCheckBox63:setWidth(15);
    obj.imageCheckBox63:setHeight(15);
    obj.imageCheckBox63:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox63:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout15);
    obj.imageCheckBox64:setField("shabilidades3_h4");
    obj.imageCheckBox64:setLeft(191);
    obj.imageCheckBox64:setTop(4);
    obj.imageCheckBox64:setWidth(15);
    obj.imageCheckBox64:setHeight(15);
    obj.imageCheckBox64:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox64:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout15);
    obj.imageCheckBox65:setField("shabilidades3_h5");
    obj.imageCheckBox65:setLeft(209);
    obj.imageCheckBox65:setTop(4);
    obj.imageCheckBox65:setWidth(15);
    obj.imageCheckBox65:setHeight(15);
    obj.imageCheckBox65:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox65:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout15);
    obj.imageCheckBox66:setField("shabilidades3_h6");
    obj.imageCheckBox66:setLeft(227);
    obj.imageCheckBox66:setTop(4);
    obj.imageCheckBox66:setWidth(15);
    obj.imageCheckBox66:setHeight(15);
    obj.imageCheckBox66:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox66:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout12);
    obj.layout16:setLeft(10);
    obj.layout16:setTop(101);
    obj.layout16:setWidth(245);
    obj.layout16:setHeight(20);
    obj.layout16:setName("layout16");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout16);
    obj.horzLine12:setTop(18);
    obj.horzLine12:setWidth(130);
    obj.horzLine12:setStrokeSize(2);
    obj.horzLine12:setStrokeColor("black");
    obj.horzLine12:setName("horzLine12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout16);
    obj.edit12:setField("shabilidades4_f");
    obj.edit12:setLeft(2);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(125);
    obj.edit12:setHeight(20);
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setFontColor("black");
    obj.edit12:setFontSize(14);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setTransparent(true);
    obj.edit12:setName("edit12");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout16);
    obj.imageCheckBox67:setField("shabilidades4_h1");
    obj.imageCheckBox67:setLeft(137);
    obj.imageCheckBox67:setTop(4);
    obj.imageCheckBox67:setWidth(15);
    obj.imageCheckBox67:setHeight(15);
    obj.imageCheckBox67:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox67:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout16);
    obj.imageCheckBox68:setField("shabilidades4_h2");
    obj.imageCheckBox68:setLeft(155);
    obj.imageCheckBox68:setTop(4);
    obj.imageCheckBox68:setWidth(15);
    obj.imageCheckBox68:setHeight(15);
    obj.imageCheckBox68:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox68:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout16);
    obj.imageCheckBox69:setField("shabilidades4_h3");
    obj.imageCheckBox69:setLeft(173);
    obj.imageCheckBox69:setTop(4);
    obj.imageCheckBox69:setWidth(15);
    obj.imageCheckBox69:setHeight(15);
    obj.imageCheckBox69:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox69:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout16);
    obj.imageCheckBox70:setField("shabilidades4_h4");
    obj.imageCheckBox70:setLeft(191);
    obj.imageCheckBox70:setTop(4);
    obj.imageCheckBox70:setWidth(15);
    obj.imageCheckBox70:setHeight(15);
    obj.imageCheckBox70:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox70:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout16);
    obj.imageCheckBox71:setField("shabilidades4_h5");
    obj.imageCheckBox71:setLeft(209);
    obj.imageCheckBox71:setTop(4);
    obj.imageCheckBox71:setWidth(15);
    obj.imageCheckBox71:setHeight(15);
    obj.imageCheckBox71:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox71:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout16);
    obj.imageCheckBox72:setField("shabilidades4_h6");
    obj.imageCheckBox72:setLeft(227);
    obj.imageCheckBox72:setTop(4);
    obj.imageCheckBox72:setWidth(15);
    obj.imageCheckBox72:setHeight(15);
    obj.imageCheckBox72:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox72:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout12);
    obj.layout17:setLeft(10);
    obj.layout17:setTop(131);
    obj.layout17:setWidth(245);
    obj.layout17:setHeight(20);
    obj.layout17:setName("layout17");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout17);
    obj.horzLine13:setTop(18);
    obj.horzLine13:setWidth(130);
    obj.horzLine13:setStrokeSize(2);
    obj.horzLine13:setStrokeColor("black");
    obj.horzLine13:setName("horzLine13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout17);
    obj.edit13:setField("shabilidades5_f");
    obj.edit13:setLeft(2);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(125);
    obj.edit13:setHeight(20);
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setFontColor("black");
    obj.edit13:setFontSize(14);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setTransparent(true);
    obj.edit13:setName("edit13");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout17);
    obj.imageCheckBox73:setField("shabilidades5_h1");
    obj.imageCheckBox73:setLeft(137);
    obj.imageCheckBox73:setTop(4);
    obj.imageCheckBox73:setWidth(15);
    obj.imageCheckBox73:setHeight(15);
    obj.imageCheckBox73:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox73:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout17);
    obj.imageCheckBox74:setField("shabilidades5_h2");
    obj.imageCheckBox74:setLeft(155);
    obj.imageCheckBox74:setTop(4);
    obj.imageCheckBox74:setWidth(15);
    obj.imageCheckBox74:setHeight(15);
    obj.imageCheckBox74:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox74:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout17);
    obj.imageCheckBox75:setField("shabilidades5_h3");
    obj.imageCheckBox75:setLeft(173);
    obj.imageCheckBox75:setTop(4);
    obj.imageCheckBox75:setWidth(15);
    obj.imageCheckBox75:setHeight(15);
    obj.imageCheckBox75:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox75:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout17);
    obj.imageCheckBox76:setField("shabilidades5_h4");
    obj.imageCheckBox76:setLeft(191);
    obj.imageCheckBox76:setTop(4);
    obj.imageCheckBox76:setWidth(15);
    obj.imageCheckBox76:setHeight(15);
    obj.imageCheckBox76:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox76:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout17);
    obj.imageCheckBox77:setField("shabilidades5_h5");
    obj.imageCheckBox77:setLeft(209);
    obj.imageCheckBox77:setTop(4);
    obj.imageCheckBox77:setWidth(15);
    obj.imageCheckBox77:setHeight(15);
    obj.imageCheckBox77:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox77:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout17);
    obj.imageCheckBox78:setField("shabilidades5_h6");
    obj.imageCheckBox78:setLeft(227);
    obj.imageCheckBox78:setTop(4);
    obj.imageCheckBox78:setWidth(15);
    obj.imageCheckBox78:setHeight(15);
    obj.imageCheckBox78:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox78:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout12);
    obj.layout18:setLeft(10);
    obj.layout18:setTop(161);
    obj.layout18:setWidth(245);
    obj.layout18:setHeight(20);
    obj.layout18:setName("layout18");

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.layout18);
    obj.horzLine14:setTop(18);
    obj.horzLine14:setWidth(130);
    obj.horzLine14:setStrokeSize(2);
    obj.horzLine14:setStrokeColor("black");
    obj.horzLine14:setName("horzLine14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout18);
    obj.edit14:setField("shabilidades6_f");
    obj.edit14:setLeft(2);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(125);
    obj.edit14:setHeight(20);
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setFontColor("black");
    obj.edit14:setFontSize(14);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setTransparent(true);
    obj.edit14:setName("edit14");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout18);
    obj.imageCheckBox79:setField("shabilidades6_h1");
    obj.imageCheckBox79:setLeft(137);
    obj.imageCheckBox79:setTop(4);
    obj.imageCheckBox79:setWidth(15);
    obj.imageCheckBox79:setHeight(15);
    obj.imageCheckBox79:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox79:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout18);
    obj.imageCheckBox80:setField("shabilidades6_h2");
    obj.imageCheckBox80:setLeft(155);
    obj.imageCheckBox80:setTop(4);
    obj.imageCheckBox80:setWidth(15);
    obj.imageCheckBox80:setHeight(15);
    obj.imageCheckBox80:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox80:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout18);
    obj.imageCheckBox81:setField("shabilidades6_h3");
    obj.imageCheckBox81:setLeft(173);
    obj.imageCheckBox81:setTop(4);
    obj.imageCheckBox81:setWidth(15);
    obj.imageCheckBox81:setHeight(15);
    obj.imageCheckBox81:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox81:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout18);
    obj.imageCheckBox82:setField("shabilidades6_h4");
    obj.imageCheckBox82:setLeft(191);
    obj.imageCheckBox82:setTop(4);
    obj.imageCheckBox82:setWidth(15);
    obj.imageCheckBox82:setHeight(15);
    obj.imageCheckBox82:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox82:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout18);
    obj.imageCheckBox83:setField("shabilidades6_h5");
    obj.imageCheckBox83:setLeft(209);
    obj.imageCheckBox83:setTop(4);
    obj.imageCheckBox83:setWidth(15);
    obj.imageCheckBox83:setHeight(15);
    obj.imageCheckBox83:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox83:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout18);
    obj.imageCheckBox84:setField("shabilidades6_h6");
    obj.imageCheckBox84:setLeft(227);
    obj.imageCheckBox84:setTop(4);
    obj.imageCheckBox84:setWidth(15);
    obj.imageCheckBox84:setHeight(15);
    obj.imageCheckBox84:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox84:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout12);
    obj.layout19:setLeft(10);
    obj.layout19:setTop(191);
    obj.layout19:setWidth(245);
    obj.layout19:setHeight(20);
    obj.layout19:setName("layout19");

    obj.horzLine15 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine15:setParent(obj.layout19);
    obj.horzLine15:setTop(18);
    obj.horzLine15:setWidth(130);
    obj.horzLine15:setStrokeSize(2);
    obj.horzLine15:setStrokeColor("black");
    obj.horzLine15:setName("horzLine15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout19);
    obj.edit15:setField("shabilidades7_f");
    obj.edit15:setLeft(2);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(125);
    obj.edit15:setHeight(20);
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setFontColor("black");
    obj.edit15:setFontSize(14);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setTransparent(true);
    obj.edit15:setName("edit15");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout19);
    obj.imageCheckBox85:setField("shabilidades7_h1");
    obj.imageCheckBox85:setLeft(137);
    obj.imageCheckBox85:setTop(4);
    obj.imageCheckBox85:setWidth(15);
    obj.imageCheckBox85:setHeight(15);
    obj.imageCheckBox85:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox85:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout19);
    obj.imageCheckBox86:setField("shabilidades7_h2");
    obj.imageCheckBox86:setLeft(155);
    obj.imageCheckBox86:setTop(4);
    obj.imageCheckBox86:setWidth(15);
    obj.imageCheckBox86:setHeight(15);
    obj.imageCheckBox86:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox86:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout19);
    obj.imageCheckBox87:setField("shabilidades7_h3");
    obj.imageCheckBox87:setLeft(173);
    obj.imageCheckBox87:setTop(4);
    obj.imageCheckBox87:setWidth(15);
    obj.imageCheckBox87:setHeight(15);
    obj.imageCheckBox87:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox87:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout19);
    obj.imageCheckBox88:setField("shabilidades7_h4");
    obj.imageCheckBox88:setLeft(191);
    obj.imageCheckBox88:setTop(4);
    obj.imageCheckBox88:setWidth(15);
    obj.imageCheckBox88:setHeight(15);
    obj.imageCheckBox88:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox88:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout19);
    obj.imageCheckBox89:setField("shabilidades7_h5");
    obj.imageCheckBox89:setLeft(209);
    obj.imageCheckBox89:setTop(4);
    obj.imageCheckBox89:setWidth(15);
    obj.imageCheckBox89:setHeight(15);
    obj.imageCheckBox89:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox89:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout19);
    obj.imageCheckBox90:setField("shabilidades7_h6");
    obj.imageCheckBox90:setLeft(227);
    obj.imageCheckBox90:setTop(4);
    obj.imageCheckBox90:setWidth(15);
    obj.imageCheckBox90:setHeight(15);
    obj.imageCheckBox90:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox90:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout12);
    obj.layout20:setLeft(10);
    obj.layout20:setTop(221);
    obj.layout20:setWidth(245);
    obj.layout20:setHeight(20);
    obj.layout20:setName("layout20");

    obj.horzLine16 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine16:setParent(obj.layout20);
    obj.horzLine16:setTop(18);
    obj.horzLine16:setWidth(130);
    obj.horzLine16:setStrokeSize(2);
    obj.horzLine16:setStrokeColor("black");
    obj.horzLine16:setName("horzLine16");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout20);
    obj.edit16:setField("shabilidades8_f");
    obj.edit16:setLeft(2);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(125);
    obj.edit16:setHeight(20);
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setFontColor("black");
    obj.edit16:setFontSize(14);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setTransparent(true);
    obj.edit16:setName("edit16");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout20);
    obj.imageCheckBox91:setField("shabilidades8_h1");
    obj.imageCheckBox91:setLeft(137);
    obj.imageCheckBox91:setTop(4);
    obj.imageCheckBox91:setWidth(15);
    obj.imageCheckBox91:setHeight(15);
    obj.imageCheckBox91:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox91:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout20);
    obj.imageCheckBox92:setField("shabilidades8_h2");
    obj.imageCheckBox92:setLeft(155);
    obj.imageCheckBox92:setTop(4);
    obj.imageCheckBox92:setWidth(15);
    obj.imageCheckBox92:setHeight(15);
    obj.imageCheckBox92:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox92:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout20);
    obj.imageCheckBox93:setField("shabilidades8_h3");
    obj.imageCheckBox93:setLeft(173);
    obj.imageCheckBox93:setTop(4);
    obj.imageCheckBox93:setWidth(15);
    obj.imageCheckBox93:setHeight(15);
    obj.imageCheckBox93:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox93:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout20);
    obj.imageCheckBox94:setField("shabilidades8_h4");
    obj.imageCheckBox94:setLeft(191);
    obj.imageCheckBox94:setTop(4);
    obj.imageCheckBox94:setWidth(15);
    obj.imageCheckBox94:setHeight(15);
    obj.imageCheckBox94:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox94:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout20);
    obj.imageCheckBox95:setField("shabilidades8_h5");
    obj.imageCheckBox95:setLeft(209);
    obj.imageCheckBox95:setTop(4);
    obj.imageCheckBox95:setWidth(15);
    obj.imageCheckBox95:setHeight(15);
    obj.imageCheckBox95:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox95:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout20);
    obj.imageCheckBox96:setField("shabilidades8_h6");
    obj.imageCheckBox96:setLeft(227);
    obj.imageCheckBox96:setTop(4);
    obj.imageCheckBox96:setWidth(15);
    obj.imageCheckBox96:setHeight(15);
    obj.imageCheckBox96:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox96:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout2);
    obj.layout21:setLeft(560);
    obj.layout21:setTop(36);
    obj.layout21:setWidth(260);
    obj.layout21:setHeight(250);
    obj.layout21:setName("layout21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout21);
    obj.layout22:setLeft(10);
    obj.layout22:setTop(11);
    obj.layout22:setWidth(245);
    obj.layout22:setHeight(20);
    obj.layout22:setName("layout22");

    obj.horzLine17 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine17:setParent(obj.layout22);
    obj.horzLine17:setTop(18);
    obj.horzLine17:setWidth(238);
    obj.horzLine17:setStrokeSize(2);
    obj.horzLine17:setStrokeColor("black");
    obj.horzLine17:setName("horzLine17");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout22);
    obj.label5:setWidth(80);
    obj.label5:setHeight(20);
    obj.label5:setText("Nível 1 ->");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontSize(15);
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout22);
    obj.edit17:setField("snivel1");
    obj.edit17:setLeft(70);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(168);
    obj.edit17:setHeight(20);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setFontColor("black");
    obj.edit17:setFontSize(15);
    obj.edit17:setTransparent(true);
    obj.edit17:setName("edit17");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout21);
    obj.layout23:setLeft(10);
    obj.layout23:setTop(53);
    obj.layout23:setWidth(245);
    obj.layout23:setHeight(20);
    obj.layout23:setName("layout23");

    obj.horzLine18 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine18:setParent(obj.layout23);
    obj.horzLine18:setTop(18);
    obj.horzLine18:setWidth(238);
    obj.horzLine18:setStrokeSize(2);
    obj.horzLine18:setStrokeColor("black");
    obj.horzLine18:setName("horzLine18");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout23);
    obj.label6:setWidth(80);
    obj.label6:setHeight(20);
    obj.label6:setText("Nível 2 ->");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontSize(15);
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout23);
    obj.edit18:setField("snivel2");
    obj.edit18:setLeft(70);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(168);
    obj.edit18:setHeight(20);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setFontColor("black");
    obj.edit18:setFontSize(15);
    obj.edit18:setTransparent(true);
    obj.edit18:setName("edit18");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout21);
    obj.layout24:setLeft(10);
    obj.layout24:setTop(95);
    obj.layout24:setWidth(245);
    obj.layout24:setHeight(20);
    obj.layout24:setName("layout24");

    obj.horzLine19 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine19:setParent(obj.layout24);
    obj.horzLine19:setTop(18);
    obj.horzLine19:setWidth(238);
    obj.horzLine19:setStrokeSize(2);
    obj.horzLine19:setStrokeColor("black");
    obj.horzLine19:setName("horzLine19");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout24);
    obj.label7:setWidth(80);
    obj.label7:setHeight(20);
    obj.label7:setText("Nível 3 ->");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontSize(15);
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout24);
    obj.edit19:setField("snivel3");
    obj.edit19:setLeft(70);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(168);
    obj.edit19:setHeight(20);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setFontColor("black");
    obj.edit19:setFontSize(15);
    obj.edit19:setTransparent(true);
    obj.edit19:setName("edit19");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout21);
    obj.layout25:setLeft(10);
    obj.layout25:setTop(137);
    obj.layout25:setWidth(245);
    obj.layout25:setHeight(20);
    obj.layout25:setName("layout25");

    obj.horzLine20 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine20:setParent(obj.layout25);
    obj.horzLine20:setTop(18);
    obj.horzLine20:setWidth(238);
    obj.horzLine20:setStrokeSize(2);
    obj.horzLine20:setStrokeColor("black");
    obj.horzLine20:setName("horzLine20");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout25);
    obj.label8:setWidth(80);
    obj.label8:setHeight(20);
    obj.label8:setText("Nível 4 ->");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontSize(15);
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout25);
    obj.edit20:setField("snivel4");
    obj.edit20:setLeft(70);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(168);
    obj.edit20:setHeight(20);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setFontColor("black");
    obj.edit20:setFontSize(15);
    obj.edit20:setTransparent(true);
    obj.edit20:setName("edit20");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout21);
    obj.layout26:setLeft(10);
    obj.layout26:setTop(179);
    obj.layout26:setWidth(245);
    obj.layout26:setHeight(20);
    obj.layout26:setName("layout26");

    obj.horzLine21 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine21:setParent(obj.layout26);
    obj.horzLine21:setTop(18);
    obj.horzLine21:setWidth(238);
    obj.horzLine21:setStrokeSize(2);
    obj.horzLine21:setStrokeColor("black");
    obj.horzLine21:setName("horzLine21");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout26);
    obj.label9:setWidth(80);
    obj.label9:setHeight(20);
    obj.label9:setText("Nível 5 ->");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontSize(15);
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout26);
    obj.edit21:setField("snivel5");
    obj.edit21:setLeft(70);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(168);
    obj.edit21:setHeight(20);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setFontColor("black");
    obj.edit21:setFontSize(15);
    obj.edit21:setTransparent(true);
    obj.edit21:setName("edit21");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout21);
    obj.layout27:setLeft(10);
    obj.layout27:setTop(221);
    obj.layout27:setWidth(245);
    obj.layout27:setHeight(20);
    obj.layout27:setName("layout27");

    obj.horzLine22 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine22:setParent(obj.layout27);
    obj.horzLine22:setTop(18);
    obj.horzLine22:setWidth(238);
    obj.horzLine22:setStrokeSize(2);
    obj.horzLine22:setStrokeColor("black");
    obj.horzLine22:setName("horzLine22");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout27);
    obj.label10:setWidth(80);
    obj.label10:setHeight(20);
    obj.label10:setText("Nível 6 ->");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontSize(15);
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout27);
    obj.edit22:setField("snivel6");
    obj.edit22:setLeft(70);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(168);
    obj.edit22:setHeight(20);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setFontColor("black");
    obj.edit22:setFontSize(15);
    obj.edit22:setTransparent(true);
    obj.edit22:setName("edit22");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox1);
    obj.layout28:setLeft(0);
    obj.layout28:setTop(380);
    obj.layout28:setWidth(880);
    obj.layout28:setHeight(30);
    obj.layout28:setName("layout28");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout28);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("gray");
    obj.rectangle3:setName("rectangle3");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout28);
    obj.label11:setLeft(8);
    obj.label11:setTop(5);
    obj.label11:setWidth(138);
    obj.label11:setHeight(20);
    obj.label11:setText("Informações");
    obj.label11:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox1);
    obj.layout29:setLeft(10);
    obj.layout29:setTop(425);
    obj.layout29:setWidth(860);
    obj.layout29:setHeight(165);
    obj.layout29:setName("layout29");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout29);
    obj.rectangle4:setLeft(5);
    obj.rectangle4:setTop(0);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(84);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout29);
    obj.label12:setLeft(7);
    obj.label12:setWidth(90);
    obj.label12:setHeight(20);
    obj.label12:setText("Anotações");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontSize(16);
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout29);
    obj.textEditor1:setTop(20);
    obj.textEditor1:setWidth(860);
    obj.textEditor1:setHeight(165);
    obj.textEditor1:setField("anotacoes");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox1);
    obj.layout30:setLeft(10);
    obj.layout30:setTop(600);
    obj.layout30:setWidth(860);
    obj.layout30:setHeight(165);
    obj.layout30:setName("layout30");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout30);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(100);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout30);
    obj.label13:setLeft(7);
    obj.label13:setWidth(100);
    obj.label13:setHeight(20);
    obj.label13:setText("Experiência");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontSize(16);
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout30);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(860);
    obj.textEditor2:setHeight(165);
    obj.textEditor2:setField("experiencia");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.frmCodigo2 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo2:setParent(obj);
    obj.frmCodigo2:setName("frmCodigo2");
    obj.frmCodigo2:setHeight(0);
    obj.frmCodigo2:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo2);
    obj.dataLink1:setFields({'shabilidades1_6', 'shabilidades1_5', 'shabilidades1_4', 'shabilidades1_3', 'shabilidades1_2', 'shabilidades1_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo2);
    obj.dataLink2:setFields({'shabilidades2_6', 'shabilidades2_5', 'shabilidades2_4', 'shabilidades2_3', 'shabilidades2_2', 'shabilidades2_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo2);
    obj.dataLink3:setFields({'shabilidades3_6', 'shabilidades3_5', 'shabilidades3_4', 'shabilidades3_3', 'shabilidades3_2', 'shabilidades3_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo2);
    obj.dataLink4:setFields({'shabilidades4_6', 'shabilidades4_5', 'shabilidades4_4', 'shabilidades4_3', 'shabilidades4_2', 'shabilidades4_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo2);
    obj.dataLink5:setFields({'shabilidades5_6', 'shabilidades5_5', 'shabilidades5_4', 'shabilidades5_3', 'shabilidades5_2', 'shabilidades5_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo2);
    obj.dataLink6:setFields({'shabilidades6_6', 'shabilidades6_5', 'shabilidades6_4', 'shabilidades6_3', 'shabilidades6_2', 'shabilidades6_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo2);
    obj.dataLink7:setFields({'shabilidades7_6', 'shabilidades7_5', 'shabilidades7_4', 'shabilidades7_3', 'shabilidades7_2', 'shabilidades7_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo2);
    obj.dataLink8:setFields({'shabilidades8_6', 'shabilidades8_5', 'shabilidades8_4', 'shabilidades8_3', 'shabilidades8_2', 'shabilidades8_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo2);
    obj.dataLink9:setFields({'shabilidades1_h6', 'shabilidades1_h5', 'shabilidades1_h4', 'shabilidades1_h3', 'shabilidades1_h2', 'shabilidades1_h1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo2);
    obj.dataLink10:setFields({'shabilidades2_h6', 'shabilidades2_h5', 'shabilidades2_h4', 'shabilidades2_h3', 'shabilidades2_h2', 'shabilidades2_h1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo2);
    obj.dataLink11:setFields({'shabilidades3_h6', 'shabilidades3_h5', 'shabilidades3_h4', 'shabilidades3_h3', 'shabilidades3_h2', 'shabilidades3_h1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo2);
    obj.dataLink12:setFields({'shabilidades4_h6', 'shabilidades4_h5', 'shabilidades4_h4', 'shabilidades4_h3', 'shabilidades4_h2', 'shabilidades4_h1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo2);
    obj.dataLink13:setFields({'shabilidades5_h6', 'shabilidades5_h5', 'shabilidades5_h4', 'shabilidades5_h3', 'shabilidades5_h2', 'shabilidades5_h1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo2);
    obj.dataLink14:setFields({'shabilidades6_h6', 'shabilidades6_h5', 'shabilidades6_h4', 'shabilidades6_h3', 'shabilidades6_h2', 'shabilidades6_h1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo2);
    obj.dataLink15:setFields({'shabilidades7_h6', 'shabilidades7_h5', 'shabilidades7_h4', 'shabilidades7_h3', 'shabilidades7_h2', 'shabilidades7_h1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo2);
    obj.dataLink16:setFields({'shabilidades8_h6', 'shabilidades8_h5', 'shabilidades8_h4', 'shabilidades8_h3', 'shabilidades8_h2', 'shabilidades8_h1'});
    obj.dataLink16:setName("dataLink16");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades1_6 == true then
            		sheet.shabilidades1_5 = true;
            		sheet.shabilidades1_4 = true;
            		sheet.shabilidades1_3 = true;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_5 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_4 = true;
            		sheet.shabilidades1_3 = true;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_4 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_3 = true;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_3 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_2 = true;
            		sheet.shabilidades1_1 = true;
            	elseif sheet.shabilidades1_2 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_3 = false;
            		sheet.shabilidades1_1 = true;	
            	elseif sheet.shabilidades1_1 == true then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_3 = false;
            		sheet.shabilidades1_2 = false;
            	elseif sheet.shabilidades1_1 == false then
            		sheet.shabilidades1_6 = false;
            		sheet.shabilidades1_5 = false;
            		sheet.shabilidades1_4 = false;
            		sheet.shabilidades1_3 = false;
            		sheet.shabilidades1_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades2_6 == true then
            		sheet.shabilidades2_5 = true;
            		sheet.shabilidades2_4 = true;
            		sheet.shabilidades2_3 = true;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_5 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_4 = true;
            		sheet.shabilidades2_3 = true;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_4 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_3 = true;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_3 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_2 = true;
            		sheet.shabilidades2_1 = true;
            	elseif sheet.shabilidades2_2 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_3 = false;
            		sheet.shabilidades2_1 = true;	
            	elseif sheet.shabilidades2_1 == true then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_3 = false;
            		sheet.shabilidades2_2 = false;
            	elseif sheet.shabilidades2_1 == false then
            		sheet.shabilidades2_6 = false;
            		sheet.shabilidades2_5 = false;
            		sheet.shabilidades2_4 = false;
            		sheet.shabilidades2_3 = false;
            		sheet.shabilidades2_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades3_6 == true then
            		sheet.shabilidades3_5 = true;
            		sheet.shabilidades3_4 = true;
            		sheet.shabilidades3_3 = true;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_5 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_4 = true;
            		sheet.shabilidades3_3 = true;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_4 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_3 = true;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_3 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_2 = true;
            		sheet.shabilidades3_1 = true;
            	elseif sheet.shabilidades3_2 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_3 = false;
            		sheet.shabilidades3_1 = true;	
            	elseif sheet.shabilidades3_1 == true then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_3 = false;
            		sheet.shabilidades3_2 = false;
            	elseif sheet.shabilidades3_1 == false then
            		sheet.shabilidades3_6 = false;
            		sheet.shabilidades3_5 = false;
            		sheet.shabilidades3_4 = false;
            		sheet.shabilidades3_3 = false;
            		sheet.shabilidades3_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades4_6 == true then
            		sheet.shabilidades4_5 = true;
            		sheet.shabilidades4_4 = true;
            		sheet.shabilidades4_3 = true;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_5 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_4 = true;
            		sheet.shabilidades4_3 = true;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_4 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_3 = true;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_3 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_2 = true;
            		sheet.shabilidades4_1 = true;
            	elseif sheet.shabilidades4_2 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_3 = false;
            		sheet.shabilidades4_1 = true;	
            	elseif sheet.shabilidades4_1 == true then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_3 = false;
            		sheet.shabilidades4_2 = false;
            	elseif sheet.shabilidades4_1 == false then
            		sheet.shabilidades4_6 = false;
            		sheet.shabilidades4_5 = false;
            		sheet.shabilidades4_4 = false;
            		sheet.shabilidades4_3 = false;
            		sheet.shabilidades4_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades5_6 == true then
            		sheet.shabilidades5_5 = true;
            		sheet.shabilidades5_4 = true;
            		sheet.shabilidades5_3 = true;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_5 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_4 = true;
            		sheet.shabilidades5_3 = true;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_4 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_3 = true;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_3 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_2 = true;
            		sheet.shabilidades5_1 = true;
            	elseif sheet.shabilidades5_2 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_3 = false;
            		sheet.shabilidades5_1 = true;	
            	elseif sheet.shabilidades5_1 == true then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_3 = false;
            		sheet.shabilidades5_2 = false;
            	elseif sheet.shabilidades5_1 == false then
            		sheet.shabilidades5_6 = false;
            		sheet.shabilidades5_5 = false;
            		sheet.shabilidades5_4 = false;
            		sheet.shabilidades5_3 = false;
            		sheet.shabilidades5_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades6_6 == true then
            		sheet.shabilidades6_5 = true;
            		sheet.shabilidades6_4 = true;
            		sheet.shabilidades6_3 = true;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_5 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_4 = true;
            		sheet.shabilidades6_3 = true;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_4 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_3 = true;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_3 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_2 = true;
            		sheet.shabilidades6_1 = true;
            	elseif sheet.shabilidades6_2 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_3 = false;
            		sheet.shabilidades6_1 = true;	
            	elseif sheet.shabilidades6_1 == true then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_3 = false;
            		sheet.shabilidades6_2 = false;
            	elseif sheet.shabilidades6_1 == false then
            		sheet.shabilidades6_6 = false;
            		sheet.shabilidades6_5 = false;
            		sheet.shabilidades6_4 = false;
            		sheet.shabilidades6_3 = false;
            		sheet.shabilidades6_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades7_6 == true then
            		sheet.shabilidades7_5 = true;
            		sheet.shabilidades7_4 = true;
            		sheet.shabilidades7_3 = true;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_5 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_4 = true;
            		sheet.shabilidades7_3 = true;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_4 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_3 = true;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_3 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_2 = true;
            		sheet.shabilidades7_1 = true;
            	elseif sheet.shabilidades7_2 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_3 = false;
            		sheet.shabilidades7_1 = true;	
            	elseif sheet.shabilidades7_1 == true then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_3 = false;
            		sheet.shabilidades7_2 = false;
            	elseif sheet.shabilidades7_1 == false then
            		sheet.shabilidades7_6 = false;
            		sheet.shabilidades7_5 = false;
            		sheet.shabilidades7_4 = false;
            		sheet.shabilidades7_3 = false;
            		sheet.shabilidades7_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades8_6 == true then
            		sheet.shabilidades8_5 = true;
            		sheet.shabilidades8_4 = true;
            		sheet.shabilidades8_3 = true;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_5 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_4 = true;
            		sheet.shabilidades8_3 = true;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_4 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_3 = true;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_3 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_2 = true;
            		sheet.shabilidades8_1 = true;
            	elseif sheet.shabilidades8_2 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_3 = false;
            		sheet.shabilidades8_1 = true;	
            	elseif sheet.shabilidades8_1 == true then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_3 = false;
            		sheet.shabilidades8_2 = false;
            	elseif sheet.shabilidades8_1 == false then
            		sheet.shabilidades8_6 = false;
            		sheet.shabilidades8_5 = false;
            		sheet.shabilidades8_4 = false;
            		sheet.shabilidades8_3 = false;
            		sheet.shabilidades8_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades1_h6 == true then
            		sheet.shabilidades1_h5 = true;
            		sheet.shabilidades1_h4 = true;
            		sheet.shabilidades1_h3 = true;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h5 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h4 = true;
            		sheet.shabilidades1_h3 = true;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h4 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h3 = true;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h3 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h2 = true;
            		sheet.shabilidades1_h1 = true;
            	elseif sheet.shabilidades1_h2 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h3 = false;
            		sheet.shabilidades1_h1 = true;	
            	elseif sheet.shabilidades1_h1 == true then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h3 = false;
            		sheet.shabilidades1_h2 = false;
            	elseif sheet.shabilidades1_h1 == false then
            		sheet.shabilidades1_h6 = false;
            		sheet.shabilidades1_h5 = false;
            		sheet.shabilidades1_h4 = false;
            		sheet.shabilidades1_h3 = false;
            		sheet.shabilidades1_h2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades2_h6 == true then
            		sheet.shabilidades2_h5 = true;
            		sheet.shabilidades2_h4 = true;
            		sheet.shabilidades2_h3 = true;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h5 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h4 = true;
            		sheet.shabilidades2_h3 = true;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h4 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h3 = true;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h3 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h2 = true;
            		sheet.shabilidades2_h1 = true;
            	elseif sheet.shabilidades2_h2 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h3 = false;
            		sheet.shabilidades2_h1 = true;	
            	elseif sheet.shabilidades2_h1 == true then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h3 = false;
            		sheet.shabilidades2_h2 = false;
            	elseif sheet.shabilidades2_h1 == false then
            		sheet.shabilidades2_h6 = false;
            		sheet.shabilidades2_h5 = false;
            		sheet.shabilidades2_h4 = false;
            		sheet.shabilidades2_h3 = false;
            		sheet.shabilidades2_h2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades3_h6 == true then
            		sheet.shabilidades3_h5 = true;
            		sheet.shabilidades3_h4 = true;
            		sheet.shabilidades3_h3 = true;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h5 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h4 = true;
            		sheet.shabilidades3_h3 = true;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h4 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h3 = true;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h3 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h2 = true;
            		sheet.shabilidades3_h1 = true;
            	elseif sheet.shabilidades3_h2 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h3 = false;
            		sheet.shabilidades3_h1 = true;	
            	elseif sheet.shabilidades3_h1 == true then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h3 = false;
            		sheet.shabilidades3_h2 = false;
            	elseif sheet.shabilidades3_h1 == false then
            		sheet.shabilidades3_h6 = false;
            		sheet.shabilidades3_h5 = false;
            		sheet.shabilidades3_h4 = false;
            		sheet.shabilidades3_h3 = false;
            		sheet.shabilidades3_h2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades4_h6 == true then
            		sheet.shabilidades4_h5 = true;
            		sheet.shabilidades4_h4 = true;
            		sheet.shabilidades4_h3 = true;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h5 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h4 = true;
            		sheet.shabilidades4_h3 = true;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h4 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h3 = true;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h3 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h2 = true;
            		sheet.shabilidades4_h1 = true;
            	elseif sheet.shabilidades4_h2 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h3 = false;
            		sheet.shabilidades4_h1 = true;	
            	elseif sheet.shabilidades4_h1 == true then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h3 = false;
            		sheet.shabilidades4_h2 = false;
            	elseif sheet.shabilidades4_h1 == false then
            		sheet.shabilidades4_h6 = false;
            		sheet.shabilidades4_h5 = false;
            		sheet.shabilidades4_h4 = false;
            		sheet.shabilidades4_h3 = false;
            		sheet.shabilidades4_h2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades5_h6 == true then
            		sheet.shabilidades5_h5 = true;
            		sheet.shabilidades5_h4 = true;
            		sheet.shabilidades5_h3 = true;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h5 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h4 = true;
            		sheet.shabilidades5_h3 = true;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h4 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h3 = true;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h3 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h2 = true;
            		sheet.shabilidades5_h1 = true;
            	elseif sheet.shabilidades5_h2 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h3 = false;
            		sheet.shabilidades5_h1 = true;	
            	elseif sheet.shabilidades5_h1 == true then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h3 = false;
            		sheet.shabilidades5_h2 = false;
            	elseif sheet.shabilidades5_h1 == false then
            		sheet.shabilidades5_h6 = false;
            		sheet.shabilidades5_h5 = false;
            		sheet.shabilidades5_h4 = false;
            		sheet.shabilidades5_h3 = false;
            		sheet.shabilidades5_h2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades6_h6 == true then
            		sheet.shabilidades6_h5 = true;
            		sheet.shabilidades6_h4 = true;
            		sheet.shabilidades6_h3 = true;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h5 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h4 = true;
            		sheet.shabilidades6_h3 = true;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h4 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h3 = true;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h3 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h2 = true;
            		sheet.shabilidades6_h1 = true;
            	elseif sheet.shabilidades6_h2 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h3 = false;
            		sheet.shabilidades6_h1 = true;	
            	elseif sheet.shabilidades6_h1 == true then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h3 = false;
            		sheet.shabilidades6_h2 = false;
            	elseif sheet.shabilidades6_h1 == false then
            		sheet.shabilidades6_h6 = false;
            		sheet.shabilidades6_h5 = false;
            		sheet.shabilidades6_h4 = false;
            		sheet.shabilidades6_h3 = false;
            		sheet.shabilidades6_h2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades7_h6 == true then
            		sheet.shabilidades7_h5 = true;
            		sheet.shabilidades7_h4 = true;
            		sheet.shabilidades7_h3 = true;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h5 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h4 = true;
            		sheet.shabilidades7_h3 = true;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h4 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h3 = true;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h3 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h2 = true;
            		sheet.shabilidades7_h1 = true;
            	elseif sheet.shabilidades7_h2 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h3 = false;
            		sheet.shabilidades7_h1 = true;	
            	elseif sheet.shabilidades7_h1 == true then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h3 = false;
            		sheet.shabilidades7_h2 = false;
            	elseif sheet.shabilidades7_h1 == false then
            		sheet.shabilidades7_h6 = false;
            		sheet.shabilidades7_h5 = false;
            		sheet.shabilidades7_h4 = false;
            		sheet.shabilidades7_h3 = false;
            		sheet.shabilidades7_h2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.shabilidades8_h6 == true then
            		sheet.shabilidades8_h5 = true;
            		sheet.shabilidades8_h4 = true;
            		sheet.shabilidades8_h3 = true;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h5 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h4 = true;
            		sheet.shabilidades8_h3 = true;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h4 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h3 = true;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h3 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h2 = true;
            		sheet.shabilidades8_h1 = true;
            	elseif sheet.shabilidades8_h2 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h3 = false;
            		sheet.shabilidades8_h1 = true;	
            	elseif sheet.shabilidades8_h1 == true then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h3 = false;
            		sheet.shabilidades8_h2 = false;
            	elseif sheet.shabilidades8_h1 == false then
            		sheet.shabilidades8_h6 = false;
            		sheet.shabilidades8_h5 = false;
            		sheet.shabilidades8_h4 = false;
            		sheet.shabilidades8_h3 = false;
            		sheet.shabilidades8_h2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.horzLine19 ~= nil then self.horzLine19:destroy(); self.horzLine19 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.horzLine16 ~= nil then self.horzLine16:destroy(); self.horzLine16 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.frmCodigo2 ~= nil then self.frmCodigo2:destroy(); self.frmCodigo2 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.horzLine21 ~= nil then self.horzLine21:destroy(); self.horzLine21 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.horzLine17 ~= nil then self.horzLine17:destroy(); self.horzLine17 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.horzLine22 ~= nil then self.horzLine22:destroy(); self.horzLine22 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.horzLine18 ~= nil then self.horzLine18:destroy(); self.horzLine18 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.horzLine20 ~= nil then self.horzLine20:destroy(); self.horzLine20 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.horzLine15 ~= nil then self.horzLine15:destroy(); self.horzLine15 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newOsMundosDosMortos3()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_OsMundosDosMortos3();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _OsMundosDosMortos3 = {
    newEditor = newOsMundosDosMortos3, 
    new = newOsMundosDosMortos3, 
    name = "OsMundosDosMortos3", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

OsMundosDosMortos3 = _OsMundosDosMortos3;
Firecast.registrarForm(_OsMundosDosMortos3);

return _OsMundosDosMortos3;
