require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_VampiroAMascara1()
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
    obj:setName("VampiroAMascara1");
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
    obj.image1:setLeft(330);
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
    obj.layout3:setLeft(0);
    obj.layout3:setTop(200);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(125);
    obj.layout3:setName("layout3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(5);
    obj.layout4:setWidth(290);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout4);
    obj.rectangle3:setLeft(5);
    obj.rectangle3:setTop(31);
    obj.rectangle3:setColor("Gainsboro");
    obj.rectangle3:setWidth(80);
    obj.rectangle3:setHeight(25);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout4);
    obj.label1:setLeft(5);
    obj.label1:setTop(3);
    obj.label1:setWidth(100);
    obj.label1:setHeight(20);
    obj.label1:setText("Nome:");
    obj.label1:setHorzTextAlign("leading");
    obj.label1:setFontSize(12);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout4);
    obj.edit1:setLeft(90);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(200);
    obj.edit1:setHeight(25);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setField("nome");
    obj.edit1:setType("text");
    obj.edit1:setName("edit1");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout3);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(35);
    obj.layout5:setWidth(290);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout5);
    obj.rectangle4:setLeft(5);
    obj.rectangle4:setTop(31);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(80);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout5);
    obj.label2:setLeft(5);
    obj.label2:setTop(3);
    obj.label2:setWidth(100);
    obj.label2:setHeight(20);
    obj.label2:setText("Jogador:");
    obj.label2:setHorzTextAlign("leading");
    obj.label2:setFontSize(12);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout5);
    obj.edit2:setLeft(90);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(200);
    obj.edit2:setHeight(25);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setField("jogador");
    obj.edit2:setType("text");
    obj.edit2:setName("edit2");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout3);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(65);
    obj.layout6:setWidth(290);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout6);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(31);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(80);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout6);
    obj.label3:setLeft(5);
    obj.label3:setTop(3);
    obj.label3:setWidth(100);
    obj.label3:setHeight(20);
    obj.label3:setText("Crônica:");
    obj.label3:setHorzTextAlign("leading");
    obj.label3:setFontSize(12);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout6);
    obj.edit3:setLeft(90);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("cronica");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout3);
    obj.layout7:setLeft(300);
    obj.layout7:setTop(5);
    obj.layout7:setWidth(290);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout7);
    obj.rectangle6:setLeft(5);
    obj.rectangle6:setTop(31);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(80);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout7);
    obj.label4:setLeft(5);
    obj.label4:setTop(3);
    obj.label4:setWidth(100);
    obj.label4:setHeight(20);
    obj.label4:setText("Natureza:");
    obj.label4:setHorzTextAlign("leading");
    obj.label4:setFontSize(12);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout7);
    obj.edit4:setLeft(90);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("natureza");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout3);
    obj.layout8:setLeft(300);
    obj.layout8:setTop(35);
    obj.layout8:setWidth(290);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout8);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(31);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(80);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout8);
    obj.label5:setLeft(5);
    obj.label5:setTop(3);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setText("Comportamento:");
    obj.label5:setHorzTextAlign("leading");
    obj.label5:setFontSize(10);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout8);
    obj.edit5:setLeft(90);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("comportamento");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout3);
    obj.layout9:setLeft(300);
    obj.layout9:setTop(65);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout9);
    obj.rectangle8:setLeft(5);
    obj.rectangle8:setTop(31);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout9);
    obj.label6:setLeft(5);
    obj.label6:setTop(3);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    obj.label6:setText("Clã:");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setFontSize(12);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout9);
    obj.edit6:setLeft(90);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("cla");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout3);
    obj.layout10:setLeft(590);
    obj.layout10:setTop(5);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout10);
    obj.rectangle9:setLeft(5);
    obj.rectangle9:setTop(31);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout10);
    obj.label7:setLeft(5);
    obj.label7:setTop(3);
    obj.label7:setWidth(100);
    obj.label7:setHeight(20);
    obj.label7:setText("Geração:");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setFontSize(12);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout10);
    obj.edit7:setLeft(90);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("geracao");
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout3);
    obj.layout11:setLeft(590);
    obj.layout11:setTop(35);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout11);
    obj.rectangle10:setLeft(5);
    obj.rectangle10:setTop(31);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout11);
    obj.label8:setLeft(5);
    obj.label8:setTop(3);
    obj.label8:setWidth(100);
    obj.label8:setHeight(20);
    obj.label8:setText("Refúgio:");
    obj.label8:setHorzTextAlign("leading");
    obj.label8:setFontSize(12);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout11);
    obj.edit8:setLeft(90);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("refugio");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout3);
    obj.layout12:setLeft(590);
    obj.layout12:setTop(65);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout12);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(31);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout12);
    obj.label9:setLeft(5);
    obj.label9:setTop(3);
    obj.label9:setWidth(100);
    obj.label9:setHeight(20);
    obj.label9:setText("Conceito:");
    obj.label9:setHorzTextAlign("leading");
    obj.label9:setFontSize(12);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout12);
    obj.edit9:setLeft(90);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(200);
    obj.edit9:setHeight(25);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setField("conceito");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setTop(300);
    obj.layout13:setWidth(880);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout13);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setName("rectangle12");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout13);
    obj.label10:setLeft(425);
    obj.label10:setTop(2);
    obj.label10:setWidth(80);
    obj.label10:setHeight(20);
    obj.label10:setText("Atributos");
    obj.label10:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("White");
    obj.label10:setName("label10");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setTop(300);
    obj.layout14:setWidth(880);
    obj.layout14:setHeight(200);
    obj.layout14:setName("layout14");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout14);
    obj.label11:setLeft(150);
    obj.label11:setTop(30);
    obj.label11:setWidth(80);
    obj.label11:setHeight(20);
    obj.label11:setText("Físicos");
    obj.label11:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("Black");
    obj.label11:setName("label11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout14);
    obj.label12:setLeft(430);
    obj.label12:setTop(30);
    obj.label12:setWidth(80);
    obj.label12:setHeight(20);
    obj.label12:setText("Sociais");
    obj.label12:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("Black");
    obj.label12:setName("label12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout14);
    obj.label13:setLeft(750);
    obj.label13:setTop(30);
    obj.label13:setWidth(80);
    obj.label13:setHeight(20);
    obj.label13:setText("Mentais");
    obj.label13:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("Black");
    obj.label13:setName("label13");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout14);
    obj.layout15:setLeft(30);
    obj.layout15:setTop(36);
    obj.layout15:setWidth(260);
    obj.layout15:setHeight(250);
    obj.layout15:setName("layout15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout15);
    obj.layout16:setLeft(10);
    obj.layout16:setTop(11);
    obj.layout16:setWidth(245);
    obj.layout16:setHeight(20);
    obj.layout16:setName("layout16");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout16);
    obj.imageCheckBox1:setField("fatributos1_1");
    obj.imageCheckBox1:setLeft(137);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout16);
    obj.imageCheckBox2:setField("fatributos1_2");
    obj.imageCheckBox2:setLeft(155);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout16);
    obj.imageCheckBox3:setField("fatributos1_3");
    obj.imageCheckBox3:setLeft(173);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout16);
    obj.imageCheckBox4:setField("fatributos1_4");
    obj.imageCheckBox4:setLeft(191);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout16);
    obj.imageCheckBox5:setField("fatributos1_5");
    obj.imageCheckBox5:setLeft(209);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(15);
    obj.imageCheckBox5:setHeight(15);
    obj.imageCheckBox5:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox5:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout15);
    obj.layout17:setLeft(10);
    obj.layout17:setTop(41);
    obj.layout17:setWidth(245);
    obj.layout17:setHeight(20);
    obj.layout17:setName("layout17");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout17);
    obj.imageCheckBox6:setField("fatributos2_1");
    obj.imageCheckBox6:setLeft(137);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout17);
    obj.imageCheckBox7:setField("fatributos2_2");
    obj.imageCheckBox7:setLeft(155);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout17);
    obj.imageCheckBox8:setField("fatributos2_3");
    obj.imageCheckBox8:setLeft(173);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout17);
    obj.imageCheckBox9:setField("fatributos2_4");
    obj.imageCheckBox9:setLeft(191);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout17);
    obj.imageCheckBox10:setField("fatributos2_5");
    obj.imageCheckBox10:setLeft(209);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(15);
    obj.imageCheckBox10:setHeight(15);
    obj.imageCheckBox10:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox10:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout15);
    obj.layout18:setLeft(10);
    obj.layout18:setTop(71);
    obj.layout18:setWidth(245);
    obj.layout18:setHeight(20);
    obj.layout18:setName("layout18");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout18);
    obj.imageCheckBox11:setField("fatributos3_1");
    obj.imageCheckBox11:setLeft(137);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout18);
    obj.imageCheckBox12:setField("fatributos3_2");
    obj.imageCheckBox12:setLeft(155);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout18);
    obj.imageCheckBox13:setField("fatributos3_3");
    obj.imageCheckBox13:setLeft(173);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout18);
    obj.imageCheckBox14:setField("fatributos3_4");
    obj.imageCheckBox14:setLeft(191);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout18);
    obj.imageCheckBox15:setField("fatributos3_5");
    obj.imageCheckBox15:setLeft(209);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(15);
    obj.imageCheckBox15:setHeight(15);
    obj.imageCheckBox15:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox15:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.frmCodigo1 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo1:setParent(obj);
    obj.frmCodigo1:setName("frmCodigo1");
    obj.frmCodigo1:setHeight(0);
    obj.frmCodigo1:setTheme("light");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmCodigo1);
    obj.dataLink1:setFields({'musc_10', 'musc_9', 'musc_8', 'musc_7','musc_6', 'musc_5', 'musc_4', 'musc_3', 'musc_2', 'musc_1'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo1);
    obj.dataLink2:setFields({'cereb_10', 'cereb_9', 'cereb_8', 'cereb_7','cereb_6', 'cereb_5', 'cereb_4', 'cereb_3', 'cereb_2', 'cereb_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo1);
    obj.dataLink3:setFields({'corac_10', 'corac_9', 'corac_8', 'corac_7','corac_6', 'corac_5', 'corac_4', 'corac_3', 'corac_2', 'corac_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo1);
    obj.dataLink4:setFields({'mhabilidades1_6', 'mhabilidades1_5', 'mhabilidades1_4', 'mhabilidades1_3', 'mhabilidades1_2', 'mhabilidades1_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo1);
    obj.dataLink5:setFields({'mhabilidades2_6', 'mhabilidades2_5', 'mhabilidades2_4', 'mhabilidades2_3', 'mhabilidades2_2', 'mhabilidades2_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo1);
    obj.dataLink6:setFields({'mhabilidades3_6', 'mhabilidades3_5', 'mhabilidades3_4', 'mhabilidades3_3', 'mhabilidades3_2', 'mhabilidades3_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo1);
    obj.dataLink7:setFields({'mhabilidades4_6', 'mhabilidades4_5', 'mhabilidades4_4', 'mhabilidades4_3', 'mhabilidades4_2', 'mhabilidades4_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo1);
    obj.dataLink8:setFields({'mhabilidades5_6', 'mhabilidades5_5', 'mhabilidades5_4', 'mhabilidades5_3', 'mhabilidades5_2', 'mhabilidades5_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo1);
    obj.dataLink9:setFields({'mhabilidades6_6', 'mhabilidades6_5', 'mhabilidades6_4', 'mhabilidades6_3', 'mhabilidades6_2', 'mhabilidades6_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo1);
    obj.dataLink10:setFields({'mhabilidades7_6', 'mhabilidades7_5', 'mhabilidades7_4', 'mhabilidades7_3', 'mhabilidades7_2', 'mhabilidades7_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo1);
    obj.dataLink11:setFields({'mhabilidades8_6', 'mhabilidades8_5', 'mhabilidades8_4', 'mhabilidades8_3', 'mhabilidades8_2', 'mhabilidades8_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo1);
    obj.dataLink12:setFields({'mhabilidades1_h6', 'mhabilidades1_h5', 'mhabilidades1_h4', 'mhabilidades1_h3', 'mhabilidades1_h2', 'mhabilidades1_h1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo1);
    obj.dataLink13:setFields({'mhabilidades2_h6', 'mhabilidades2_h5', 'mhabilidades2_h4', 'mhabilidades2_h3', 'mhabilidades2_h2', 'mhabilidades2_h1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo1);
    obj.dataLink14:setFields({'mhabilidades3_h6', 'mhabilidades3_h5', 'mhabilidades3_h4', 'mhabilidades3_h3', 'mhabilidades3_h2', 'mhabilidades3_h1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo1);
    obj.dataLink15:setFields({'mhabilidades4_h6', 'mhabilidades4_h5', 'mhabilidades4_h4', 'mhabilidades4_h3', 'mhabilidades4_h2', 'mhabilidades4_h1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo1);
    obj.dataLink16:setFields({'mhabilidades5_h6', 'mhabilidades5_h5', 'mhabilidades5_h4', 'mhabilidades5_h3', 'mhabilidades5_h2', 'mhabilidades5_h1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo1);
    obj.dataLink17:setFields({'mhabilidades6_h6', 'mhabilidades6_h5', 'mhabilidades6_h4', 'mhabilidades6_h3', 'mhabilidades6_h2', 'mhabilidades6_h1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo1);
    obj.dataLink18:setFields({'mhabilidades7_h6', 'mhabilidades7_h5', 'mhabilidades7_h4', 'mhabilidades7_h3', 'mhabilidades7_h2', 'mhabilidades7_h1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo1);
    obj.dataLink19:setFields({'mhabilidades8_h6', 'mhabilidades8_h5', 'mhabilidades8_h4', 'mhabilidades8_h3', 'mhabilidades8_h2', 'mhabilidades8_h1'});
    obj.dataLink19:setName("dataLink19");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.musc_10 == true then
            		sheet.musc_9 = true;
            		sheet.musc_8 = true;
            		sheet.musc_7 = true;
            		sheet.musc_6 = true;        
            		sheet.musc_5 = true;
            		sheet.musc_4 = true;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_9 == true then
            		sheet.musc_10 = false;
            		sheet.musc_8 = true;
            		sheet.musc_7 = true;
            		sheet.musc_6 = true;        
            		sheet.musc_5 = true;
            		sheet.musc_4 = true;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_8 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_7 = true;
            		sheet.musc_6 = true;        
            		sheet.musc_5 = true;
            		sheet.musc_4 = true;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_7 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_6 = true;        
            		sheet.musc_5 = true;
            		sheet.musc_4 = true;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_6 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_7 = false;        
            		sheet.musc_5 = true;
            		sheet.musc_4 = true;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_5 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_7 = false;        
            		sheet.musc_6 = false;
            		sheet.musc_4 = true;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_4 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_7 = false;        
            		sheet.musc_6 = false;
            		sheet.musc_5 = false;
            		sheet.musc_3 = true;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_3 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_7 = false;        
            		sheet.musc_6 = false;
            		sheet.musc_5 = false;
            		sheet.musc_4 = false;
            		sheet.musc_2 = true;
            		sheet.musc_1 = true;
            	elseif sheet.musc_2 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_7 = false;        
            		sheet.musc_6 = false;
            		sheet.musc_5 = false;
            		sheet.musc_4 = false;
            		sheet.musc_3 = false;
            		sheet.musc_1 = true;
            	elseif sheet.musc_1 == true then
            		sheet.musc_10 = false;
            		sheet.musc_9 = false;
            		sheet.musc_8 = false;
            		sheet.musc_7 = false;        
            		sheet.musc_6 = false;
            		sheet.musc_5 = false;
            		sheet.musc_4 = false;
            		sheet.musc_3 = false;
            		sheet.musc_2 = false;
            	end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.cereb_10 == true then
            		sheet.cereb_9 = true;
            		sheet.cereb_8 = true;
            		sheet.cereb_7 = true;
            		sheet.cereb_6 = true;        
            		sheet.cereb_5 = true;
            		sheet.cereb_4 = true;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_9 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_8 = true;
            		sheet.cereb_7 = true;
            		sheet.cereb_6 = true;        
            		sheet.cereb_5 = true;
            		sheet.cereb_4 = true;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_8 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_7 = true;
            		sheet.cereb_6 = true;        
            		sheet.cereb_5 = true;
            		sheet.cereb_4 = true;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_7 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_6 = true;        
            		sheet.cereb_5 = true;
            		sheet.cereb_4 = true;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_6 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_7 = false;        
            		sheet.cereb_5 = true;
            		sheet.cereb_4 = true;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_5 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_7 = false;        
            		sheet.cereb_6 = false;
            		sheet.cereb_4 = true;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_4 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_7 = false;        
            		sheet.cereb_6 = false;
            		sheet.cereb_5 = false;
            		sheet.cereb_3 = true;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_3 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_7 = false;        
            		sheet.cereb_6 = false;
            		sheet.cereb_5 = false;
            		sheet.cereb_4 = false;
            		sheet.cereb_2 = true;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_2 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_7 = false;        
            		sheet.cereb_6 = false;
            		sheet.cereb_5 = false;
            		sheet.cereb_4 = false;
            		sheet.cereb_3 = false;
            		sheet.cereb_1 = true;
            	elseif sheet.cereb_1 == true then
            		sheet.cereb_10 = false;
            		sheet.cereb_9 = false;
            		sheet.cereb_8 = false;
            		sheet.cereb_7 = false;        
            		sheet.cereb_6 = false;
            		sheet.cereb_5 = false;
            		sheet.cereb_4 = false;
            		sheet.cereb_3 = false;
            		sheet.cereb_2 = false;
            	end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.corac_10 == true then
            		sheet.corac_9 = true;
            		sheet.corac_8 = true;
            		sheet.corac_7 = true;
            		sheet.corac_6 = true;        
            		sheet.corac_5 = true;
            		sheet.corac_4 = true;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_9 == true then
            		sheet.corac_10 = false;
            		sheet.corac_8 = true;
            		sheet.corac_7 = true;
            		sheet.corac_6 = true;        
            		sheet.corac_5 = true;
            		sheet.corac_4 = true;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_8 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_7 = true;
            		sheet.corac_6 = true;        
            		sheet.corac_5 = true;
            		sheet.corac_4 = true;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_7 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_6 = true;        
            		sheet.corac_5 = true;
            		sheet.corac_4 = true;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_6 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_7 = false;        
            		sheet.corac_5 = true;
            		sheet.corac_4 = true;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_5 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_7 = false;        
            		sheet.corac_6 = false;
            		sheet.corac_4 = true;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_4 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_7 = false;        
            		sheet.corac_6 = false;
            		sheet.corac_5 = false;
            		sheet.corac_3 = true;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_3 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_7 = false;        
            		sheet.corac_6 = false;
            		sheet.corac_5 = false;
            		sheet.corac_4 = false;
            		sheet.corac_2 = true;
            		sheet.corac_1 = true;
            	elseif sheet.corac_2 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_7 = false;        
            		sheet.corac_6 = false;
            		sheet.corac_5 = false;
            		sheet.corac_4 = false;
            		sheet.corac_3 = false;
            		sheet.corac_1 = true;
            	elseif sheet.corac_1 == true then
            		sheet.corac_10 = false;
            		sheet.corac_9 = false;
            		sheet.corac_8 = false;
            		sheet.corac_7 = false;        
            		sheet.corac_6 = false;
            		sheet.corac_5 = false;
            		sheet.corac_4 = false;
            		sheet.corac_3 = false;
            		sheet.corac_2 = false;
            	end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades1_6 == true then
            		sheet.mhabilidades1_5 = true;
            		sheet.mhabilidades1_4 = true;
            		sheet.mhabilidades1_3 = true;
            		sheet.mhabilidades1_2 = true;
            		sheet.mhabilidades1_1 = true;
            	elseif sheet.mhabilidades1_5 == true then
            		sheet.mhabilidades1_6 = false;
            		sheet.mhabilidades1_4 = true;
            		sheet.mhabilidades1_3 = true;
            		sheet.mhabilidades1_2 = true;
            		sheet.mhabilidades1_1 = true;
            	elseif sheet.mhabilidades1_4 == true then
            		sheet.mhabilidades1_6 = false;
            		sheet.mhabilidades1_5 = false;
            		sheet.mhabilidades1_3 = true;
            		sheet.mhabilidades1_2 = true;
            		sheet.mhabilidades1_1 = true;
            	elseif sheet.mhabilidades1_3 == true then
            		sheet.mhabilidades1_6 = false;
            		sheet.mhabilidades1_5 = false;
            		sheet.mhabilidades1_4 = false;
            		sheet.mhabilidades1_2 = true;
            		sheet.mhabilidades1_1 = true;
            	elseif sheet.mhabilidades1_2 == true then
            		sheet.mhabilidades1_6 = false;
            		sheet.mhabilidades1_5 = false;
            		sheet.mhabilidades1_4 = false;
            		sheet.mhabilidades1_3 = false;
            		sheet.mhabilidades1_1 = true;	
            	elseif sheet.mhabilidades1_1 == true then
            		sheet.mhabilidades1_6 = false;
            		sheet.mhabilidades1_5 = false;
            		sheet.mhabilidades1_4 = false;
            		sheet.mhabilidades1_3 = false;
            		sheet.mhabilidades1_2 = false;
            	elseif sheet.mhabilidades1_1 == false then
            		sheet.mhabilidades1_6 = false;
            		sheet.mhabilidades1_5 = false;
            		sheet.mhabilidades1_4 = false;
            		sheet.mhabilidades1_3 = false;
            		sheet.mhabilidades1_2 = false;
            	end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades2_6 == true then
            		sheet.mhabilidades2_5 = true;
            		sheet.mhabilidades2_4 = true;
            		sheet.mhabilidades2_3 = true;
            		sheet.mhabilidades2_2 = true;
            		sheet.mhabilidades2_1 = true;
            	elseif sheet.mhabilidades2_5 == true then
            		sheet.mhabilidades2_6 = false;
            		sheet.mhabilidades2_4 = true;
            		sheet.mhabilidades2_3 = true;
            		sheet.mhabilidades2_2 = true;
            		sheet.mhabilidades2_1 = true;
            	elseif sheet.mhabilidades2_4 == true then
            		sheet.mhabilidades2_6 = false;
            		sheet.mhabilidades2_5 = false;
            		sheet.mhabilidades2_3 = true;
            		sheet.mhabilidades2_2 = true;
            		sheet.mhabilidades2_1 = true;
            	elseif sheet.mhabilidades2_3 == true then
            		sheet.mhabilidades2_6 = false;
            		sheet.mhabilidades2_5 = false;
            		sheet.mhabilidades2_4 = false;
            		sheet.mhabilidades2_2 = true;
            		sheet.mhabilidades2_1 = true;
            	elseif sheet.mhabilidades2_2 == true then
            		sheet.mhabilidades2_6 = false;
            		sheet.mhabilidades2_5 = false;
            		sheet.mhabilidades2_4 = false;
            		sheet.mhabilidades2_3 = false;
            		sheet.mhabilidades2_1 = true;	
            	elseif sheet.mhabilidades2_1 == true then
            		sheet.mhabilidades2_6 = false;
            		sheet.mhabilidades2_5 = false;
            		sheet.mhabilidades2_4 = false;
            		sheet.mhabilidades2_3 = false;
            		sheet.mhabilidades2_2 = false;
            	elseif sheet.mhabilidades2_1 == false then
            		sheet.mhabilidades2_6 = false;
            		sheet.mhabilidades2_5 = false;
            		sheet.mhabilidades2_4 = false;
            		sheet.mhabilidades2_3 = false;
            		sheet.mhabilidades2_2 = false;
            	end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades3_6 == true then
            		sheet.mhabilidades3_5 = true;
            		sheet.mhabilidades3_4 = true;
            		sheet.mhabilidades3_3 = true;
            		sheet.mhabilidades3_2 = true;
            		sheet.mhabilidades3_1 = true;
            	elseif sheet.mhabilidades3_5 == true then
            		sheet.mhabilidades3_6 = false;
            		sheet.mhabilidades3_4 = true;
            		sheet.mhabilidades3_3 = true;
            		sheet.mhabilidades3_2 = true;
            		sheet.mhabilidades3_1 = true;
            	elseif sheet.mhabilidades3_4 == true then
            		sheet.mhabilidades3_6 = false;
            		sheet.mhabilidades3_5 = false;
            		sheet.mhabilidades3_3 = true;
            		sheet.mhabilidades3_2 = true;
            		sheet.mhabilidades3_1 = true;
            	elseif sheet.mhabilidades3_3 == true then
            		sheet.mhabilidades3_6 = false;
            		sheet.mhabilidades3_5 = false;
            		sheet.mhabilidades3_4 = false;
            		sheet.mhabilidades3_2 = true;
            		sheet.mhabilidades3_1 = true;
            	elseif sheet.mhabilidades3_2 == true then
            		sheet.mhabilidades3_6 = false;
            		sheet.mhabilidades3_5 = false;
            		sheet.mhabilidades3_4 = false;
            		sheet.mhabilidades3_3 = false;
            		sheet.mhabilidades3_1 = true;	
            	elseif sheet.mhabilidades3_1 == true then
            		sheet.mhabilidades3_6 = false;
            		sheet.mhabilidades3_5 = false;
            		sheet.mhabilidades3_4 = false;
            		sheet.mhabilidades3_3 = false;
            		sheet.mhabilidades3_2 = false;
            	elseif sheet.mhabilidades3_1 == false then
            		sheet.mhabilidades3_6 = false;
            		sheet.mhabilidades3_5 = false;
            		sheet.mhabilidades3_4 = false;
            		sheet.mhabilidades3_3 = false;
            		sheet.mhabilidades3_2 = false;
            	end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades4_6 == true then
            		sheet.mhabilidades4_5 = true;
            		sheet.mhabilidades4_4 = true;
            		sheet.mhabilidades4_3 = true;
            		sheet.mhabilidades4_2 = true;
            		sheet.mhabilidades4_1 = true;
            	elseif sheet.mhabilidades4_5 == true then
            		sheet.mhabilidades4_6 = false;
            		sheet.mhabilidades4_4 = true;
            		sheet.mhabilidades4_3 = true;
            		sheet.mhabilidades4_2 = true;
            		sheet.mhabilidades4_1 = true;
            	elseif sheet.mhabilidades4_4 == true then
            		sheet.mhabilidades4_6 = false;
            		sheet.mhabilidades4_5 = false;
            		sheet.mhabilidades4_3 = true;
            		sheet.mhabilidades4_2 = true;
            		sheet.mhabilidades4_1 = true;
            	elseif sheet.mhabilidades4_3 == true then
            		sheet.mhabilidades4_6 = false;
            		sheet.mhabilidades4_5 = false;
            		sheet.mhabilidades4_4 = false;
            		sheet.mhabilidades4_2 = true;
            		sheet.mhabilidades4_1 = true;
            	elseif sheet.mhabilidades4_2 == true then
            		sheet.mhabilidades4_6 = false;
            		sheet.mhabilidades4_5 = false;
            		sheet.mhabilidades4_4 = false;
            		sheet.mhabilidades4_3 = false;
            		sheet.mhabilidades4_1 = true;	
            	elseif sheet.mhabilidades4_1 == true then
            		sheet.mhabilidades4_6 = false;
            		sheet.mhabilidades4_5 = false;
            		sheet.mhabilidades4_4 = false;
            		sheet.mhabilidades4_3 = false;
            		sheet.mhabilidades4_2 = false;
            	elseif sheet.mhabilidades4_1 == false then
            		sheet.mhabilidades4_6 = false;
            		sheet.mhabilidades4_5 = false;
            		sheet.mhabilidades4_4 = false;
            		sheet.mhabilidades4_3 = false;
            		sheet.mhabilidades4_2 = false;
            	end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades5_6 == true then
            		sheet.mhabilidades5_5 = true;
            		sheet.mhabilidades5_4 = true;
            		sheet.mhabilidades5_3 = true;
            		sheet.mhabilidades5_2 = true;
            		sheet.mhabilidades5_1 = true;
            	elseif sheet.mhabilidades5_5 == true then
            		sheet.mhabilidades5_6 = false;
            		sheet.mhabilidades5_4 = true;
            		sheet.mhabilidades5_3 = true;
            		sheet.mhabilidades5_2 = true;
            		sheet.mhabilidades5_1 = true;
            	elseif sheet.mhabilidades5_4 == true then
            		sheet.mhabilidades5_6 = false;
            		sheet.mhabilidades5_5 = false;
            		sheet.mhabilidades5_3 = true;
            		sheet.mhabilidades5_2 = true;
            		sheet.mhabilidades5_1 = true;
            	elseif sheet.mhabilidades5_3 == true then
            		sheet.mhabilidades5_6 = false;
            		sheet.mhabilidades5_5 = false;
            		sheet.mhabilidades5_4 = false;
            		sheet.mhabilidades5_2 = true;
            		sheet.mhabilidades5_1 = true;
            	elseif sheet.mhabilidades5_2 == true then
            		sheet.mhabilidades5_6 = false;
            		sheet.mhabilidades5_5 = false;
            		sheet.mhabilidades5_4 = false;
            		sheet.mhabilidades5_3 = false;
            		sheet.mhabilidades5_1 = true;	
            	elseif sheet.mhabilidades5_1 == true then
            		sheet.mhabilidades5_6 = false;
            		sheet.mhabilidades5_5 = false;
            		sheet.mhabilidades5_4 = false;
            		sheet.mhabilidades5_3 = false;
            		sheet.mhabilidades5_2 = false;
            	elseif sheet.mhabilidades5_1 == false then
            		sheet.mhabilidades5_6 = false;
            		sheet.mhabilidades5_5 = false;
            		sheet.mhabilidades5_4 = false;
            		sheet.mhabilidades5_3 = false;
            		sheet.mhabilidades5_2 = false;
            	end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades6_6 == true then
            		sheet.mhabilidades6_5 = true;
            		sheet.mhabilidades6_4 = true;
            		sheet.mhabilidades6_3 = true;
            		sheet.mhabilidades6_2 = true;
            		sheet.mhabilidades6_1 = true;
            	elseif sheet.mhabilidades6_5 == true then
            		sheet.mhabilidades6_6 = false;
            		sheet.mhabilidades6_4 = true;
            		sheet.mhabilidades6_3 = true;
            		sheet.mhabilidades6_2 = true;
            		sheet.mhabilidades6_1 = true;
            	elseif sheet.mhabilidades6_4 == true then
            		sheet.mhabilidades6_6 = false;
            		sheet.mhabilidades6_5 = false;
            		sheet.mhabilidades6_3 = true;
            		sheet.mhabilidades6_2 = true;
            		sheet.mhabilidades6_1 = true;
            	elseif sheet.mhabilidades6_3 == true then
            		sheet.mhabilidades6_6 = false;
            		sheet.mhabilidades6_5 = false;
            		sheet.mhabilidades6_4 = false;
            		sheet.mhabilidades6_2 = true;
            		sheet.mhabilidades6_1 = true;
            	elseif sheet.mhabilidades6_2 == true then
            		sheet.mhabilidades6_6 = false;
            		sheet.mhabilidades6_5 = false;
            		sheet.mhabilidades6_4 = false;
            		sheet.mhabilidades6_3 = false;
            		sheet.mhabilidades6_1 = true;	
            	elseif sheet.mhabilidades6_1 == true then
            		sheet.mhabilidades6_6 = false;
            		sheet.mhabilidades6_5 = false;
            		sheet.mhabilidades6_4 = false;
            		sheet.mhabilidades6_3 = false;
            		sheet.mhabilidades6_2 = false;
            	elseif sheet.mhabilidades6_1 == false then
            		sheet.mhabilidades6_6 = false;
            		sheet.mhabilidades6_5 = false;
            		sheet.mhabilidades6_4 = false;
            		sheet.mhabilidades6_3 = false;
            		sheet.mhabilidades6_2 = false;
            	end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades7_6 == true then
            		sheet.mhabilidades7_5 = true;
            		sheet.mhabilidades7_4 = true;
            		sheet.mhabilidades7_3 = true;
            		sheet.mhabilidades7_2 = true;
            		sheet.mhabilidades7_1 = true;
            	elseif sheet.mhabilidades7_5 == true then
            		sheet.mhabilidades7_6 = false;
            		sheet.mhabilidades7_4 = true;
            		sheet.mhabilidades7_3 = true;
            		sheet.mhabilidades7_2 = true;
            		sheet.mhabilidades7_1 = true;
            	elseif sheet.mhabilidades7_4 == true then
            		sheet.mhabilidades7_6 = false;
            		sheet.mhabilidades7_5 = false;
            		sheet.mhabilidades7_3 = true;
            		sheet.mhabilidades7_2 = true;
            		sheet.mhabilidades7_1 = true;
            	elseif sheet.mhabilidades7_3 == true then
            		sheet.mhabilidades7_6 = false;
            		sheet.mhabilidades7_5 = false;
            		sheet.mhabilidades7_4 = false;
            		sheet.mhabilidades7_2 = true;
            		sheet.mhabilidades7_1 = true;
            	elseif sheet.mhabilidades7_2 == true then
            		sheet.mhabilidades7_6 = false;
            		sheet.mhabilidades7_5 = false;
            		sheet.mhabilidades7_4 = false;
            		sheet.mhabilidades7_3 = false;
            		sheet.mhabilidades7_1 = true;	
            	elseif sheet.mhabilidades7_1 == true then
            		sheet.mhabilidades7_6 = false;
            		sheet.mhabilidades7_5 = false;
            		sheet.mhabilidades7_4 = false;
            		sheet.mhabilidades7_3 = false;
            		sheet.mhabilidades7_2 = false;
            	elseif sheet.mhabilidades7_1 == false then
            		sheet.mhabilidades7_6 = false;
            		sheet.mhabilidades7_5 = false;
            		sheet.mhabilidades7_4 = false;
            		sheet.mhabilidades7_3 = false;
            		sheet.mhabilidades7_2 = false;
            	end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades8_6 == true then
            		sheet.mhabilidades8_5 = true;
            		sheet.mhabilidades8_4 = true;
            		sheet.mhabilidades8_3 = true;
            		sheet.mhabilidades8_2 = true;
            		sheet.mhabilidades8_1 = true;
            	elseif sheet.mhabilidades8_5 == true then
            		sheet.mhabilidades8_6 = false;
            		sheet.mhabilidades8_4 = true;
            		sheet.mhabilidades8_3 = true;
            		sheet.mhabilidades8_2 = true;
            		sheet.mhabilidades8_1 = true;
            	elseif sheet.mhabilidades8_4 == true then
            		sheet.mhabilidades8_6 = false;
            		sheet.mhabilidades8_5 = false;
            		sheet.mhabilidades8_3 = true;
            		sheet.mhabilidades8_2 = true;
            		sheet.mhabilidades8_1 = true;
            	elseif sheet.mhabilidades8_3 == true then
            		sheet.mhabilidades8_6 = false;
            		sheet.mhabilidades8_5 = false;
            		sheet.mhabilidades8_4 = false;
            		sheet.mhabilidades8_2 = true;
            		sheet.mhabilidades8_1 = true;
            	elseif sheet.mhabilidades8_2 == true then
            		sheet.mhabilidades8_6 = false;
            		sheet.mhabilidades8_5 = false;
            		sheet.mhabilidades8_4 = false;
            		sheet.mhabilidades8_3 = false;
            		sheet.mhabilidades8_1 = true;	
            	elseif sheet.mhabilidades8_1 == true then
            		sheet.mhabilidades8_6 = false;
            		sheet.mhabilidades8_5 = false;
            		sheet.mhabilidades8_4 = false;
            		sheet.mhabilidades8_3 = false;
            		sheet.mhabilidades8_2 = false;
            	elseif sheet.mhabilidades8_1 == false then
            		sheet.mhabilidades8_6 = false;
            		sheet.mhabilidades8_5 = false;
            		sheet.mhabilidades8_4 = false;
            		sheet.mhabilidades8_3 = false;
            		sheet.mhabilidades8_2 = false;
            	end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades1_h6 == true then
            		sheet.mhabilidades1_h5 = true;
            		sheet.mhabilidades1_h4 = true;
            		sheet.mhabilidades1_h3 = true;
            		sheet.mhabilidades1_h2 = true;
            		sheet.mhabilidades1_h1 = true;
            	elseif sheet.mhabilidades1_h5 == true then
            		sheet.mhabilidades1_h6 = false;
            		sheet.mhabilidades1_h4 = true;
            		sheet.mhabilidades1_h3 = true;
            		sheet.mhabilidades1_h2 = true;
            		sheet.mhabilidades1_h1 = true;
            	elseif sheet.mhabilidades1_h4 == true then
            		sheet.mhabilidades1_h6 = false;
            		sheet.mhabilidades1_h5 = false;
            		sheet.mhabilidades1_h3 = true;
            		sheet.mhabilidades1_h2 = true;
            		sheet.mhabilidades1_h1 = true;
            	elseif sheet.mhabilidades1_h3 == true then
            		sheet.mhabilidades1_h6 = false;
            		sheet.mhabilidades1_h5 = false;
            		sheet.mhabilidades1_h4 = false;
            		sheet.mhabilidades1_h2 = true;
            		sheet.mhabilidades1_h1 = true;
            	elseif sheet.mhabilidades1_h2 == true then
            		sheet.mhabilidades1_h6 = false;
            		sheet.mhabilidades1_h5 = false;
            		sheet.mhabilidades1_h4 = false;
            		sheet.mhabilidades1_h3 = false;
            		sheet.mhabilidades1_h1 = true;	
            	elseif sheet.mhabilidades1_h1 == true then
            		sheet.mhabilidades1_h6 = false;
            		sheet.mhabilidades1_h5 = false;
            		sheet.mhabilidades1_h4 = false;
            		sheet.mhabilidades1_h3 = false;
            		sheet.mhabilidades1_h2 = false;
            	elseif sheet.mhabilidades1_h1 == false then
            		sheet.mhabilidades1_h6 = false;
            		sheet.mhabilidades1_h5 = false;
            		sheet.mhabilidades1_h4 = false;
            		sheet.mhabilidades1_h3 = false;
            		sheet.mhabilidades1_h2 = false;
            	end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades2_h6 == true then
            		sheet.mhabilidades2_h5 = true;
            		sheet.mhabilidades2_h4 = true;
            		sheet.mhabilidades2_h3 = true;
            		sheet.mhabilidades2_h2 = true;
            		sheet.mhabilidades2_h1 = true;
            	elseif sheet.mhabilidades2_h5 == true then
            		sheet.mhabilidades2_h6 = false;
            		sheet.mhabilidades2_h4 = true;
            		sheet.mhabilidades2_h3 = true;
            		sheet.mhabilidades2_h2 = true;
            		sheet.mhabilidades2_h1 = true;
            	elseif sheet.mhabilidades2_h4 == true then
            		sheet.mhabilidades2_h6 = false;
            		sheet.mhabilidades2_h5 = false;
            		sheet.mhabilidades2_h3 = true;
            		sheet.mhabilidades2_h2 = true;
            		sheet.mhabilidades2_h1 = true;
            	elseif sheet.mhabilidades2_h3 == true then
            		sheet.mhabilidades2_h6 = false;
            		sheet.mhabilidades2_h5 = false;
            		sheet.mhabilidades2_h4 = false;
            		sheet.mhabilidades2_h2 = true;
            		sheet.mhabilidades2_h1 = true;
            	elseif sheet.mhabilidades2_h2 == true then
            		sheet.mhabilidades2_h6 = false;
            		sheet.mhabilidades2_h5 = false;
            		sheet.mhabilidades2_h4 = false;
            		sheet.mhabilidades2_h3 = false;
            		sheet.mhabilidades2_h1 = true;	
            	elseif sheet.mhabilidades2_h1 == true then
            		sheet.mhabilidades2_h6 = false;
            		sheet.mhabilidades2_h5 = false;
            		sheet.mhabilidades2_h4 = false;
            		sheet.mhabilidades2_h3 = false;
            		sheet.mhabilidades2_h2 = false;
            	elseif sheet.mhabilidades2_h1 == false then
            		sheet.mhabilidades2_h6 = false;
            		sheet.mhabilidades2_h5 = false;
            		sheet.mhabilidades2_h4 = false;
            		sheet.mhabilidades2_h3 = false;
            		sheet.mhabilidades2_h2 = false;
            	end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades3_h6 == true then
            		sheet.mhabilidades3_h5 = true;
            		sheet.mhabilidades3_h4 = true;
            		sheet.mhabilidades3_h3 = true;
            		sheet.mhabilidades3_h2 = true;
            		sheet.mhabilidades3_h1 = true;
            	elseif sheet.mhabilidades3_h5 == true then
            		sheet.mhabilidades3_h6 = false;
            		sheet.mhabilidades3_h4 = true;
            		sheet.mhabilidades3_h3 = true;
            		sheet.mhabilidades3_h2 = true;
            		sheet.mhabilidades3_h1 = true;
            	elseif sheet.mhabilidades3_h4 == true then
            		sheet.mhabilidades3_h6 = false;
            		sheet.mhabilidades3_h5 = false;
            		sheet.mhabilidades3_h3 = true;
            		sheet.mhabilidades3_h2 = true;
            		sheet.mhabilidades3_h1 = true;
            	elseif sheet.mhabilidades3_h3 == true then
            		sheet.mhabilidades3_h6 = false;
            		sheet.mhabilidades3_h5 = false;
            		sheet.mhabilidades3_h4 = false;
            		sheet.mhabilidades3_h2 = true;
            		sheet.mhabilidades3_h1 = true;
            	elseif sheet.mhabilidades3_h2 == true then
            		sheet.mhabilidades3_h6 = false;
            		sheet.mhabilidades3_h5 = false;
            		sheet.mhabilidades3_h4 = false;
            		sheet.mhabilidades3_h3 = false;
            		sheet.mhabilidades3_h1 = true;	
            	elseif sheet.mhabilidades3_h1 == true then
            		sheet.mhabilidades3_h6 = false;
            		sheet.mhabilidades3_h5 = false;
            		sheet.mhabilidades3_h4 = false;
            		sheet.mhabilidades3_h3 = false;
            		sheet.mhabilidades3_h2 = false;
            	elseif sheet.mhabilidades3_h1 == false then
            		sheet.mhabilidades3_h6 = false;
            		sheet.mhabilidades3_h5 = false;
            		sheet.mhabilidades3_h4 = false;
            		sheet.mhabilidades3_h3 = false;
            		sheet.mhabilidades3_h2 = false;
            	end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades4_h6 == true then
            		sheet.mhabilidades4_h5 = true;
            		sheet.mhabilidades4_h4 = true;
            		sheet.mhabilidades4_h3 = true;
            		sheet.mhabilidades4_h2 = true;
            		sheet.mhabilidades4_h1 = true;
            	elseif sheet.mhabilidades4_h5 == true then
            		sheet.mhabilidades4_h6 = false;
            		sheet.mhabilidades4_h4 = true;
            		sheet.mhabilidades4_h3 = true;
            		sheet.mhabilidades4_h2 = true;
            		sheet.mhabilidades4_h1 = true;
            	elseif sheet.mhabilidades4_h4 == true then
            		sheet.mhabilidades4_h6 = false;
            		sheet.mhabilidades4_h5 = false;
            		sheet.mhabilidades4_h3 = true;
            		sheet.mhabilidades4_h2 = true;
            		sheet.mhabilidades4_h1 = true;
            	elseif sheet.mhabilidades4_h3 == true then
            		sheet.mhabilidades4_h6 = false;
            		sheet.mhabilidades4_h5 = false;
            		sheet.mhabilidades4_h4 = false;
            		sheet.mhabilidades4_h2 = true;
            		sheet.mhabilidades4_h1 = true;
            	elseif sheet.mhabilidades4_h2 == true then
            		sheet.mhabilidades4_h6 = false;
            		sheet.mhabilidades4_h5 = false;
            		sheet.mhabilidades4_h4 = false;
            		sheet.mhabilidades4_h3 = false;
            		sheet.mhabilidades4_h1 = true;	
            	elseif sheet.mhabilidades4_h1 == true then
            		sheet.mhabilidades4_h6 = false;
            		sheet.mhabilidades4_h5 = false;
            		sheet.mhabilidades4_h4 = false;
            		sheet.mhabilidades4_h3 = false;
            		sheet.mhabilidades4_h2 = false;
            	elseif sheet.mhabilidades4_h1 == false then
            		sheet.mhabilidades4_h6 = false;
            		sheet.mhabilidades4_h5 = false;
            		sheet.mhabilidades4_h4 = false;
            		sheet.mhabilidades4_h3 = false;
            		sheet.mhabilidades4_h2 = false;
            	end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades5_h6 == true then
            		sheet.mhabilidades5_h5 = true;
            		sheet.mhabilidades5_h4 = true;
            		sheet.mhabilidades5_h3 = true;
            		sheet.mhabilidades5_h2 = true;
            		sheet.mhabilidades5_h1 = true;
            	elseif sheet.mhabilidades5_h5 == true then
            		sheet.mhabilidades5_h6 = false;
            		sheet.mhabilidades5_h4 = true;
            		sheet.mhabilidades5_h3 = true;
            		sheet.mhabilidades5_h2 = true;
            		sheet.mhabilidades5_h1 = true;
            	elseif sheet.mhabilidades5_h4 == true then
            		sheet.mhabilidades5_h6 = false;
            		sheet.mhabilidades5_h5 = false;
            		sheet.mhabilidades5_h3 = true;
            		sheet.mhabilidades5_h2 = true;
            		sheet.mhabilidades5_h1 = true;
            	elseif sheet.mhabilidades5_h3 == true then
            		sheet.mhabilidades5_h6 = false;
            		sheet.mhabilidades5_h5 = false;
            		sheet.mhabilidades5_h4 = false;
            		sheet.mhabilidades5_h2 = true;
            		sheet.mhabilidades5_h1 = true;
            	elseif sheet.mhabilidades5_h2 == true then
            		sheet.mhabilidades5_h6 = false;
            		sheet.mhabilidades5_h5 = false;
            		sheet.mhabilidades5_h4 = false;
            		sheet.mhabilidades5_h3 = false;
            		sheet.mhabilidades5_h1 = true;	
            	elseif sheet.mhabilidades5_h1 == true then
            		sheet.mhabilidades5_h6 = false;
            		sheet.mhabilidades5_h5 = false;
            		sheet.mhabilidades5_h4 = false;
            		sheet.mhabilidades5_h3 = false;
            		sheet.mhabilidades5_h2 = false;
            	elseif sheet.mhabilidades5_h1 == false then
            		sheet.mhabilidades5_h6 = false;
            		sheet.mhabilidades5_h5 = false;
            		sheet.mhabilidades5_h4 = false;
            		sheet.mhabilidades5_h3 = false;
            		sheet.mhabilidades5_h2 = false;
            	end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades6_h6 == true then
            		sheet.mhabilidades6_h5 = true;
            		sheet.mhabilidades6_h4 = true;
            		sheet.mhabilidades6_h3 = true;
            		sheet.mhabilidades6_h2 = true;
            		sheet.mhabilidades6_h1 = true;
            	elseif sheet.mhabilidades6_h5 == true then
            		sheet.mhabilidades6_h6 = false;
            		sheet.mhabilidades6_h4 = true;
            		sheet.mhabilidades6_h3 = true;
            		sheet.mhabilidades6_h2 = true;
            		sheet.mhabilidades6_h1 = true;
            	elseif sheet.mhabilidades6_h4 == true then
            		sheet.mhabilidades6_h6 = false;
            		sheet.mhabilidades6_h5 = false;
            		sheet.mhabilidades6_h3 = true;
            		sheet.mhabilidades6_h2 = true;
            		sheet.mhabilidades6_h1 = true;
            	elseif sheet.mhabilidades6_h3 == true then
            		sheet.mhabilidades6_h6 = false;
            		sheet.mhabilidades6_h5 = false;
            		sheet.mhabilidades6_h4 = false;
            		sheet.mhabilidades6_h2 = true;
            		sheet.mhabilidades6_h1 = true;
            	elseif sheet.mhabilidades6_h2 == true then
            		sheet.mhabilidades6_h6 = false;
            		sheet.mhabilidades6_h5 = false;
            		sheet.mhabilidades6_h4 = false;
            		sheet.mhabilidades6_h3 = false;
            		sheet.mhabilidades6_h1 = true;	
            	elseif sheet.mhabilidades6_h1 == true then
            		sheet.mhabilidades6_h6 = false;
            		sheet.mhabilidades6_h5 = false;
            		sheet.mhabilidades6_h4 = false;
            		sheet.mhabilidades6_h3 = false;
            		sheet.mhabilidades6_h2 = false;
            	elseif sheet.mhabilidades6_h1 == false then
            		sheet.mhabilidades6_h6 = false;
            		sheet.mhabilidades6_h5 = false;
            		sheet.mhabilidades6_h4 = false;
            		sheet.mhabilidades6_h3 = false;
            		sheet.mhabilidades6_h2 = false;
            	end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades7_h6 == true then
            		sheet.mhabilidades7_h5 = true;
            		sheet.mhabilidades7_h4 = true;
            		sheet.mhabilidades7_h3 = true;
            		sheet.mhabilidades7_h2 = true;
            		sheet.mhabilidades7_h1 = true;
            	elseif sheet.mhabilidades7_h5 == true then
            		sheet.mhabilidades7_h6 = false;
            		sheet.mhabilidades7_h4 = true;
            		sheet.mhabilidades7_h3 = true;
            		sheet.mhabilidades7_h2 = true;
            		sheet.mhabilidades7_h1 = true;
            	elseif sheet.mhabilidades7_h4 == true then
            		sheet.mhabilidades7_h6 = false;
            		sheet.mhabilidades7_h5 = false;
            		sheet.mhabilidades7_h3 = true;
            		sheet.mhabilidades7_h2 = true;
            		sheet.mhabilidades7_h1 = true;
            	elseif sheet.mhabilidades7_h3 == true then
            		sheet.mhabilidades7_h6 = false;
            		sheet.mhabilidades7_h5 = false;
            		sheet.mhabilidades7_h4 = false;
            		sheet.mhabilidades7_h2 = true;
            		sheet.mhabilidades7_h1 = true;
            	elseif sheet.mhabilidades7_h2 == true then
            		sheet.mhabilidades7_h6 = false;
            		sheet.mhabilidades7_h5 = false;
            		sheet.mhabilidades7_h4 = false;
            		sheet.mhabilidades7_h3 = false;
            		sheet.mhabilidades7_h1 = true;	
            	elseif sheet.mhabilidades7_h1 == true then
            		sheet.mhabilidades7_h6 = false;
            		sheet.mhabilidades7_h5 = false;
            		sheet.mhabilidades7_h4 = false;
            		sheet.mhabilidades7_h3 = false;
            		sheet.mhabilidades7_h2 = false;
            	elseif sheet.mhabilidades7_h1 == false then
            		sheet.mhabilidades7_h6 = false;
            		sheet.mhabilidades7_h5 = false;
            		sheet.mhabilidades7_h4 = false;
            		sheet.mhabilidades7_h3 = false;
            		sheet.mhabilidades7_h2 = false;
            	end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            	if sheet.mhabilidades8_h6 == true then
            		sheet.mhabilidades8_h5 = true;
            		sheet.mhabilidades8_h4 = true;
            		sheet.mhabilidades8_h3 = true;
            		sheet.mhabilidades8_h2 = true;
            		sheet.mhabilidades8_h1 = true;
            	elseif sheet.mhabilidades8_h5 == true then
            		sheet.mhabilidades8_h6 = false;
            		sheet.mhabilidades8_h4 = true;
            		sheet.mhabilidades8_h3 = true;
            		sheet.mhabilidades8_h2 = true;
            		sheet.mhabilidades8_h1 = true;
            	elseif sheet.mhabilidades8_h4 == true then
            		sheet.mhabilidades8_h6 = false;
            		sheet.mhabilidades8_h5 = false;
            		sheet.mhabilidades8_h3 = true;
            		sheet.mhabilidades8_h2 = true;
            		sheet.mhabilidades8_h1 = true;
            	elseif sheet.mhabilidades8_h3 == true then
            		sheet.mhabilidades8_h6 = false;
            		sheet.mhabilidades8_h5 = false;
            		sheet.mhabilidades8_h4 = false;
            		sheet.mhabilidades8_h2 = true;
            		sheet.mhabilidades8_h1 = true;
            	elseif sheet.mhabilidades8_h2 == true then
            		sheet.mhabilidades8_h6 = false;
            		sheet.mhabilidades8_h5 = false;
            		sheet.mhabilidades8_h4 = false;
            		sheet.mhabilidades8_h3 = false;
            		sheet.mhabilidades8_h1 = true;	
            	elseif sheet.mhabilidades8_h1 == true then
            		sheet.mhabilidades8_h6 = false;
            		sheet.mhabilidades8_h5 = false;
            		sheet.mhabilidades8_h4 = false;
            		sheet.mhabilidades8_h3 = false;
            		sheet.mhabilidades8_h2 = false;
            	elseif sheet.mhabilidades8_h1 == false then
            		sheet.mhabilidades8_h6 = false;
            		sheet.mhabilidades8_h5 = false;
            		sheet.mhabilidades8_h4 = false;
            		sheet.mhabilidades8_h3 = false;
            		sheet.mhabilidades8_h2 = false;
            	end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.frmCodigo1 ~= nil then self.frmCodigo1:destroy(); self.frmCodigo1 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newVampiroAMascara1()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_VampiroAMascara1();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _VampiroAMascara1 = {
    newEditor = newVampiroAMascara1, 
    new = newVampiroAMascara1, 
    name = "VampiroAMascara1", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

VampiroAMascara1 = _VampiroAMascara1;
Firecast.registrarForm(_VampiroAMascara1);

return _VampiroAMascara1;
