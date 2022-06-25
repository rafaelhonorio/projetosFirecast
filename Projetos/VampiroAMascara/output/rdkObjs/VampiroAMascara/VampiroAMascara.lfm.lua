require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_VampiroAMascarafrm()
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
    obj:setName("VampiroAMascarafrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Cast.VampiroAMascara");
    obj:setTitle("Ficha Vampiro A Mascara");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.tabControl1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(20);
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
    obj.label1:setWidth(138);
    obj.label1:setHeight(20);
    obj.label1:setText("Pontos de Vida:");
    obj.label1:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setName("label1");

    obj.pvtotais = GUI.fromHandle(_obj_newObject("edit"));
    obj.pvtotais:setParent(obj.layout1);
    obj.pvtotais:setName("pvtotais");
    obj.pvtotais:setLeft(105);
    obj.pvtotais:setTop(3);
    obj.pvtotais:setWidth(40);
    obj.pvtotais:setHeight(25);
    obj.pvtotais:setType("number");
    obj.pvtotais:setField("pvtotal");
    obj.pvtotais:setHorzTextAlign("center");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(143);
    obj.label2:setTop(5);
    obj.label2:setWidth(138);
    obj.label2:setHeight(20);
    obj.label2:setText(" / ");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.pvatuais = GUI.fromHandle(_obj_newObject("edit"));
    obj.pvatuais:setParent(obj.layout1);
    obj.pvatuais:setName("pvatuais");
    obj.pvatuais:setLeft(155);
    obj.pvatuais:setTop(3);
    obj.pvatuais:setWidth(40);
    obj.pvatuais:setHeight(25);
    obj.pvatuais:setType("number");
    obj.pvatuais:setField("pvatual");
    obj.pvatuais:setHorzTextAlign("center");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setLeft(298);
    obj.label3:setTop(5);
    obj.label3:setWidth(438);
    obj.label3:setHeight(20);
    obj.label3:setText("Força de Vontade:");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.fdvtotais = GUI.fromHandle(_obj_newObject("edit"));
    obj.fdvtotais:setParent(obj.layout1);
    obj.fdvtotais:setName("fdvtotais");
    obj.fdvtotais:setLeft(410);
    obj.fdvtotais:setTop(3);
    obj.fdvtotais:setWidth(40);
    obj.fdvtotais:setHeight(25);
    obj.fdvtotais:setType("number");
    obj.fdvtotais:setField("fdvtotal");
    obj.fdvtotais:setHorzTextAlign("center");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setLeft(448);
    obj.label4:setTop(5);
    obj.label4:setWidth(138);
    obj.label4:setHeight(20);
    obj.label4:setText(" / ");
    obj.label4:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.fdvatuais = GUI.fromHandle(_obj_newObject("edit"));
    obj.fdvatuais:setParent(obj.layout1);
    obj.fdvatuais:setName("fdvatuais");
    obj.fdvatuais:setLeft(460);
    obj.fdvatuais:setTop(3);
    obj.fdvatuais:setWidth(40);
    obj.fdvatuais:setHeight(25);
    obj.fdvatuais:setType("number");
    obj.fdvatuais:setField("fdvatual");
    obj.fdvatuais:setHorzTextAlign("center");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Ficha");
    obj.tab1:setName("tab1");

    obj.VampiroAMascara1 = GUI.fromHandle(_obj_newObject("form"));
    obj.VampiroAMascara1:setParent(obj.tab1);
    obj.VampiroAMascara1:setName("VampiroAMascara1");
    obj.VampiroAMascara1:setAlign("client");
    obj.VampiroAMascara1:setTheme("dark");
    obj.VampiroAMascara1:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.VampiroAMascara1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(29);
    obj.layout2:setWidth(880);
    obj.layout2:setHeight(3);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setName("rectangle2");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setTop(0);
    obj.image1:setLeft(285);
    obj.image1:setWidth(300);
    obj.image1:setHeight(250);
    obj.image1:setSRC("/VampiroAMascara/img/vampiro.png");
    obj.image1:setName("image1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(200);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(3);
    obj.layout3:setName("layout3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setName("rectangle3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(200);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(125);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(5);
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

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setLeft(5);
    obj.label5:setTop(3);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setText("Nome:");
    obj.label5:setHorzTextAlign("leading");
    obj.label5:setFontSize(12);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout5);
    obj.edit1:setLeft(90);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(200);
    obj.edit1:setHeight(25);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setField("nome");
    obj.edit1:setType("text");
    obj.edit1:setName("edit1");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout4);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(35);
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

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setLeft(5);
    obj.label6:setTop(3);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    obj.label6:setText("Jogador:");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setFontSize(12);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setLeft(90);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(200);
    obj.edit2:setHeight(25);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setField("jogador");
    obj.edit2:setType("text");
    obj.edit2:setName("edit2");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout4);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(65);
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

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout7);
    obj.label7:setLeft(5);
    obj.label7:setTop(3);
    obj.label7:setWidth(100);
    obj.label7:setHeight(20);
    obj.label7:setText("Crônica:");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setFontSize(12);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout7);
    obj.edit3:setLeft(90);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("cronica");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout4);
    obj.layout8:setLeft(300);
    obj.layout8:setTop(5);
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

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setLeft(5);
    obj.label8:setTop(3);
    obj.label8:setWidth(100);
    obj.label8:setHeight(20);
    obj.label8:setText("Natureza:");
    obj.label8:setHorzTextAlign("leading");
    obj.label8:setFontSize(12);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setLeft(90);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("natureza");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout4);
    obj.layout9:setLeft(300);
    obj.layout9:setTop(35);
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

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout9);
    obj.label9:setLeft(5);
    obj.label9:setTop(3);
    obj.label9:setWidth(100);
    obj.label9:setHeight(20);
    obj.label9:setText("Comportamento:");
    obj.label9:setHorzTextAlign("leading");
    obj.label9:setFontSize(10);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout9);
    obj.edit5:setLeft(90);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("comportamento");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout4);
    obj.layout10:setLeft(300);
    obj.layout10:setTop(65);
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

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout10);
    obj.label10:setLeft(5);
    obj.label10:setTop(3);
    obj.label10:setWidth(100);
    obj.label10:setHeight(20);
    obj.label10:setText("Clã:");
    obj.label10:setHorzTextAlign("leading");
    obj.label10:setFontSize(12);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout10);
    obj.edit6:setLeft(90);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("cla");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout4);
    obj.layout11:setLeft(590);
    obj.layout11:setTop(5);
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

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout11);
    obj.label11:setLeft(5);
    obj.label11:setTop(3);
    obj.label11:setWidth(100);
    obj.label11:setHeight(20);
    obj.label11:setText("Geração:");
    obj.label11:setHorzTextAlign("leading");
    obj.label11:setFontSize(12);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout11);
    obj.edit7:setLeft(90);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("geracao");
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout4);
    obj.layout12:setLeft(590);
    obj.layout12:setTop(35);
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

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout12);
    obj.label12:setLeft(5);
    obj.label12:setTop(3);
    obj.label12:setWidth(100);
    obj.label12:setHeight(20);
    obj.label12:setText("Refúgio:");
    obj.label12:setHorzTextAlign("leading");
    obj.label12:setFontSize(12);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout12);
    obj.edit8:setLeft(90);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("refugio");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout4);
    obj.layout13:setLeft(590);
    obj.layout13:setTop(65);
    obj.layout13:setWidth(290);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout13);
    obj.rectangle12:setLeft(5);
    obj.rectangle12:setTop(31);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(80);
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout13);
    obj.label13:setLeft(5);
    obj.label13:setTop(3);
    obj.label13:setWidth(100);
    obj.label13:setHeight(20);
    obj.label13:setText("Conceito:");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(12);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout13);
    obj.edit9:setLeft(90);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(200);
    obj.edit9:setHeight(25);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setField("conceito");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setTop(300);
    obj.layout14:setWidth(880);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout14);
    obj.rectangle13:setAlign("client");
    obj.rectangle13:setColor("black");
    obj.rectangle13:setName("rectangle13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout14);
    obj.label14:setLeft(425);
    obj.label14:setTop(2);
    obj.label14:setWidth(80);
    obj.label14:setHeight(20);
    obj.label14:setText("Atributos");
    obj.label14:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("White");
    obj.label14:setName("label14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox1);
    obj.layout15:setTop(300);
    obj.layout15:setWidth(880);
    obj.layout15:setHeight(200);
    obj.layout15:setName("layout15");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout15);
    obj.label15:setLeft(130);
    obj.label15:setTop(30);
    obj.label15:setWidth(80);
    obj.label15:setHeight(20);
    obj.label15:setText("Físicos");
    obj.label15:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("Black");
    obj.label15:setName("label15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout15);
    obj.label16:setLeft(430);
    obj.label16:setTop(30);
    obj.label16:setWidth(80);
    obj.label16:setHeight(20);
    obj.label16:setText("Sociais");
    obj.label16:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("Black");
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout15);
    obj.label17:setLeft(715);
    obj.label17:setTop(30);
    obj.label17:setWidth(80);
    obj.label17:setHeight(20);
    obj.label17:setText("Mentais");
    obj.label17:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("Black");
    obj.label17:setName("label17");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout15);
    obj.layout16:setLeft(30);
    obj.layout16:setTop(36);
    obj.layout16:setWidth(260);
    obj.layout16:setHeight(250);
    obj.layout16:setName("layout16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout16);
    obj.layout17:setLeft(10);
    obj.layout17:setTop(11);
    obj.layout17:setWidth(245);
    obj.layout17:setHeight(20);
    obj.layout17:setName("layout17");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout17);
    obj.label18:setAutoSize(true);
    obj.label18:setText("Força");
    obj.label18:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("Black");
    obj.label18:setName("label18");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout17);
    obj.imageCheckBox1:setField("fatributos1_1");
    obj.imageCheckBox1:setLeft(137);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout17);
    obj.imageCheckBox2:setField("fatributos1_2");
    obj.imageCheckBox2:setLeft(155);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout17);
    obj.imageCheckBox3:setField("fatributos1_3");
    obj.imageCheckBox3:setLeft(173);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout17);
    obj.imageCheckBox4:setField("fatributos1_4");
    obj.imageCheckBox4:setLeft(191);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout17);
    obj.imageCheckBox5:setField("fatributos1_5");
    obj.imageCheckBox5:setLeft(209);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(15);
    obj.imageCheckBox5:setHeight(15);
    obj.imageCheckBox5:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox5:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout16);
    obj.layout18:setLeft(10);
    obj.layout18:setTop(31);
    obj.layout18:setWidth(245);
    obj.layout18:setHeight(20);
    obj.layout18:setName("layout18");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout18);
    obj.label19:setAutoSize(true);
    obj.label19:setText("Destreza");
    obj.label19:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("Black");
    obj.label19:setName("label19");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout18);
    obj.imageCheckBox6:setField("fatributos2_1");
    obj.imageCheckBox6:setLeft(137);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout18);
    obj.imageCheckBox7:setField("fatributos2_2");
    obj.imageCheckBox7:setLeft(155);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout18);
    obj.imageCheckBox8:setField("fatributos2_3");
    obj.imageCheckBox8:setLeft(173);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout18);
    obj.imageCheckBox9:setField("fatributos2_4");
    obj.imageCheckBox9:setLeft(191);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout18);
    obj.imageCheckBox10:setField("fatributos2_5");
    obj.imageCheckBox10:setLeft(209);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(15);
    obj.imageCheckBox10:setHeight(15);
    obj.imageCheckBox10:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox10:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout16);
    obj.layout19:setLeft(10);
    obj.layout19:setTop(51);
    obj.layout19:setWidth(245);
    obj.layout19:setHeight(20);
    obj.layout19:setName("layout19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout19);
    obj.label20:setAutoSize(true);
    obj.label20:setText("Vigor");
    obj.label20:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontColor("Black");
    obj.label20:setName("label20");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout19);
    obj.imageCheckBox11:setField("fatributos3_1");
    obj.imageCheckBox11:setLeft(137);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout19);
    obj.imageCheckBox12:setField("fatributos3_2");
    obj.imageCheckBox12:setLeft(155);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout19);
    obj.imageCheckBox13:setField("fatributos3_3");
    obj.imageCheckBox13:setLeft(173);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout19);
    obj.imageCheckBox14:setField("fatributos3_4");
    obj.imageCheckBox14:setLeft(191);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout19);
    obj.imageCheckBox15:setField("fatributos3_5");
    obj.imageCheckBox15:setLeft(209);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(15);
    obj.imageCheckBox15:setHeight(15);
    obj.imageCheckBox15:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox15:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout15);
    obj.layout20:setLeft(330);
    obj.layout20:setTop(36);
    obj.layout20:setWidth(260);
    obj.layout20:setHeight(250);
    obj.layout20:setName("layout20");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout20);
    obj.layout21:setLeft(10);
    obj.layout21:setTop(11);
    obj.layout21:setWidth(245);
    obj.layout21:setHeight(20);
    obj.layout21:setName("layout21");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout21);
    obj.label21:setAutoSize(true);
    obj.label21:setText("Carisma");
    obj.label21:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontColor("Black");
    obj.label21:setName("label21");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout21);
    obj.imageCheckBox16:setField("satributos1_1");
    obj.imageCheckBox16:setLeft(137);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(15);
    obj.imageCheckBox16:setHeight(15);
    obj.imageCheckBox16:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox16:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout21);
    obj.imageCheckBox17:setField("satributos1_2");
    obj.imageCheckBox17:setLeft(155);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(15);
    obj.imageCheckBox17:setHeight(15);
    obj.imageCheckBox17:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox17:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout21);
    obj.imageCheckBox18:setField("satributos1_3");
    obj.imageCheckBox18:setLeft(173);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(15);
    obj.imageCheckBox18:setHeight(15);
    obj.imageCheckBox18:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox18:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout21);
    obj.imageCheckBox19:setField("satributos1_4");
    obj.imageCheckBox19:setLeft(191);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(15);
    obj.imageCheckBox19:setHeight(15);
    obj.imageCheckBox19:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox19:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout21);
    obj.imageCheckBox20:setField("satributos1_5");
    obj.imageCheckBox20:setLeft(209);
    obj.imageCheckBox20:setTop(4);
    obj.imageCheckBox20:setWidth(15);
    obj.imageCheckBox20:setHeight(15);
    obj.imageCheckBox20:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox20:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout20);
    obj.layout22:setLeft(10);
    obj.layout22:setTop(31);
    obj.layout22:setWidth(245);
    obj.layout22:setHeight(20);
    obj.layout22:setName("layout22");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout22);
    obj.label22:setAutoSize(true);
    obj.label22:setText("Manipulação");
    obj.label22:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontColor("Black");
    obj.label22:setName("label22");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout22);
    obj.imageCheckBox21:setField("satributos2_1");
    obj.imageCheckBox21:setLeft(137);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(15);
    obj.imageCheckBox21:setHeight(15);
    obj.imageCheckBox21:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox21:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout22);
    obj.imageCheckBox22:setField("satributos2_2");
    obj.imageCheckBox22:setLeft(155);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(15);
    obj.imageCheckBox22:setHeight(15);
    obj.imageCheckBox22:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox22:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout22);
    obj.imageCheckBox23:setField("satributos2_3");
    obj.imageCheckBox23:setLeft(173);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(15);
    obj.imageCheckBox23:setHeight(15);
    obj.imageCheckBox23:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox23:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout22);
    obj.imageCheckBox24:setField("satributos2_4");
    obj.imageCheckBox24:setLeft(191);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(15);
    obj.imageCheckBox24:setHeight(15);
    obj.imageCheckBox24:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox24:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout22);
    obj.imageCheckBox25:setField("satributos2_5");
    obj.imageCheckBox25:setLeft(209);
    obj.imageCheckBox25:setTop(4);
    obj.imageCheckBox25:setWidth(15);
    obj.imageCheckBox25:setHeight(15);
    obj.imageCheckBox25:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox25:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout20);
    obj.layout23:setLeft(10);
    obj.layout23:setTop(51);
    obj.layout23:setWidth(245);
    obj.layout23:setHeight(20);
    obj.layout23:setName("layout23");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout23);
    obj.label23:setAutoSize(true);
    obj.label23:setText("Aparência");
    obj.label23:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontColor("Black");
    obj.label23:setName("label23");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout23);
    obj.imageCheckBox26:setField("satributos3_1");
    obj.imageCheckBox26:setLeft(137);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(15);
    obj.imageCheckBox26:setHeight(15);
    obj.imageCheckBox26:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox26:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout23);
    obj.imageCheckBox27:setField("satributos3_2");
    obj.imageCheckBox27:setLeft(155);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(15);
    obj.imageCheckBox27:setHeight(15);
    obj.imageCheckBox27:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox27:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout23);
    obj.imageCheckBox28:setField("satributos3_3");
    obj.imageCheckBox28:setLeft(173);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(15);
    obj.imageCheckBox28:setHeight(15);
    obj.imageCheckBox28:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox28:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout23);
    obj.imageCheckBox29:setField("satributos3_4");
    obj.imageCheckBox29:setLeft(191);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(15);
    obj.imageCheckBox29:setHeight(15);
    obj.imageCheckBox29:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox29:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout23);
    obj.imageCheckBox30:setField("satributos3_5");
    obj.imageCheckBox30:setLeft(209);
    obj.imageCheckBox30:setTop(4);
    obj.imageCheckBox30:setWidth(15);
    obj.imageCheckBox30:setHeight(15);
    obj.imageCheckBox30:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox30:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout15);
    obj.layout24:setLeft(620);
    obj.layout24:setTop(36);
    obj.layout24:setWidth(260);
    obj.layout24:setHeight(250);
    obj.layout24:setName("layout24");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout24);
    obj.layout25:setLeft(10);
    obj.layout25:setTop(11);
    obj.layout25:setWidth(245);
    obj.layout25:setHeight(20);
    obj.layout25:setName("layout25");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout25);
    obj.label24:setAutoSize(true);
    obj.label24:setText("Percepção");
    obj.label24:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontColor("Black");
    obj.label24:setName("label24");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout25);
    obj.imageCheckBox31:setField("matributos1_1");
    obj.imageCheckBox31:setLeft(137);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(15);
    obj.imageCheckBox31:setHeight(15);
    obj.imageCheckBox31:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox31:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout25);
    obj.imageCheckBox32:setField("matributos1_2");
    obj.imageCheckBox32:setLeft(155);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(15);
    obj.imageCheckBox32:setHeight(15);
    obj.imageCheckBox32:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox32:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout25);
    obj.imageCheckBox33:setField("matributos1_3");
    obj.imageCheckBox33:setLeft(173);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(15);
    obj.imageCheckBox33:setHeight(15);
    obj.imageCheckBox33:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox33:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout25);
    obj.imageCheckBox34:setField("matributos1_4");
    obj.imageCheckBox34:setLeft(191);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(15);
    obj.imageCheckBox34:setHeight(15);
    obj.imageCheckBox34:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox34:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout25);
    obj.imageCheckBox35:setField("matributos1_5");
    obj.imageCheckBox35:setLeft(209);
    obj.imageCheckBox35:setTop(4);
    obj.imageCheckBox35:setWidth(15);
    obj.imageCheckBox35:setHeight(15);
    obj.imageCheckBox35:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox35:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout24);
    obj.layout26:setLeft(10);
    obj.layout26:setTop(31);
    obj.layout26:setWidth(245);
    obj.layout26:setHeight(20);
    obj.layout26:setName("layout26");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout26);
    obj.label25:setAutoSize(true);
    obj.label25:setText("Inteligência");
    obj.label25:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontColor("Black");
    obj.label25:setName("label25");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout26);
    obj.imageCheckBox36:setField("matributos2_1");
    obj.imageCheckBox36:setLeft(137);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(15);
    obj.imageCheckBox36:setHeight(15);
    obj.imageCheckBox36:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox36:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout26);
    obj.imageCheckBox37:setField("matributos2_2");
    obj.imageCheckBox37:setLeft(155);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(15);
    obj.imageCheckBox37:setHeight(15);
    obj.imageCheckBox37:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox37:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout26);
    obj.imageCheckBox38:setField("matributos2_3");
    obj.imageCheckBox38:setLeft(173);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(15);
    obj.imageCheckBox38:setHeight(15);
    obj.imageCheckBox38:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox38:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout26);
    obj.imageCheckBox39:setField("matributos2_4");
    obj.imageCheckBox39:setLeft(191);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(15);
    obj.imageCheckBox39:setHeight(15);
    obj.imageCheckBox39:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox39:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout26);
    obj.imageCheckBox40:setField("matributos2_5");
    obj.imageCheckBox40:setLeft(209);
    obj.imageCheckBox40:setTop(4);
    obj.imageCheckBox40:setWidth(15);
    obj.imageCheckBox40:setHeight(15);
    obj.imageCheckBox40:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox40:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout24);
    obj.layout27:setLeft(10);
    obj.layout27:setTop(51);
    obj.layout27:setWidth(245);
    obj.layout27:setHeight(20);
    obj.layout27:setName("layout27");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout27);
    obj.label26:setAutoSize(true);
    obj.label26:setText("Raciocínio");
    obj.label26:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontColor("Black");
    obj.label26:setName("label26");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout27);
    obj.imageCheckBox41:setField("matributos3_1");
    obj.imageCheckBox41:setLeft(137);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(15);
    obj.imageCheckBox41:setHeight(15);
    obj.imageCheckBox41:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox41:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout27);
    obj.imageCheckBox42:setField("matributos3_2");
    obj.imageCheckBox42:setLeft(155);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(15);
    obj.imageCheckBox42:setHeight(15);
    obj.imageCheckBox42:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox42:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout27);
    obj.imageCheckBox43:setField("matributos3_3");
    obj.imageCheckBox43:setLeft(173);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(15);
    obj.imageCheckBox43:setHeight(15);
    obj.imageCheckBox43:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox43:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout27);
    obj.imageCheckBox44:setField("matributos3_4");
    obj.imageCheckBox44:setLeft(191);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(15);
    obj.imageCheckBox44:setHeight(15);
    obj.imageCheckBox44:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox44:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout27);
    obj.imageCheckBox45:setField("matributos3_5");
    obj.imageCheckBox45:setLeft(209);
    obj.imageCheckBox45:setTop(4);
    obj.imageCheckBox45:setWidth(15);
    obj.imageCheckBox45:setHeight(15);
    obj.imageCheckBox45:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox45:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox1);
    obj.layout28:setTop(420);
    obj.layout28:setWidth(880);
    obj.layout28:setHeight(25);
    obj.layout28:setName("layout28");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout28);
    obj.rectangle14:setAlign("client");
    obj.rectangle14:setColor("black");
    obj.rectangle14:setName("rectangle14");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout28);
    obj.label27:setLeft(425);
    obj.label27:setTop(2);
    obj.label27:setWidth(80);
    obj.label27:setHeight(20);
    obj.label27:setText("Habilidades");
    obj.label27:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontColor("White");
    obj.label27:setName("label27");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox1);
    obj.layout29:setTop(420);
    obj.layout29:setWidth(880);
    obj.layout29:setHeight(400);
    obj.layout29:setName("layout29");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout29);
    obj.label28:setLeft(130);
    obj.label28:setTop(30);
    obj.label28:setWidth(80);
    obj.label28:setHeight(20);
    obj.label28:setText("Talentos");
    obj.label28:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontColor("Black");
    obj.label28:setName("label28");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout29);
    obj.label29:setLeft(430);
    obj.label29:setTop(30);
    obj.label29:setWidth(80);
    obj.label29:setHeight(20);
    obj.label29:setText("Perícias");
    obj.label29:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontColor("Black");
    obj.label29:setName("label29");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout29);
    obj.label30:setLeft(695);
    obj.label30:setTop(30);
    obj.label30:setWidth(100);
    obj.label30:setHeight(20);
    obj.label30:setText("Conhecimentos");
    obj.label30:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontColor("Black");
    obj.label30:setName("label30");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout29);
    obj.layout30:setLeft(30);
    obj.layout30:setTop(36);
    obj.layout30:setWidth(260);
    obj.layout30:setHeight(250);
    obj.layout30:setName("layout30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout30);
    obj.layout31:setLeft(10);
    obj.layout31:setTop(11);
    obj.layout31:setWidth(245);
    obj.layout31:setHeight(20);
    obj.layout31:setName("layout31");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout31);
    obj.label31:setAutoSize(true);
    obj.label31:setText("Prontidão");
    obj.label31:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontColor("Black");
    obj.label31:setName("label31");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout31);
    obj.imageCheckBox46:setField("thabilidades1_1");
    obj.imageCheckBox46:setLeft(137);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(15);
    obj.imageCheckBox46:setHeight(15);
    obj.imageCheckBox46:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox46:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout31);
    obj.imageCheckBox47:setField("thabilidades1_2");
    obj.imageCheckBox47:setLeft(155);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(15);
    obj.imageCheckBox47:setHeight(15);
    obj.imageCheckBox47:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox47:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout31);
    obj.imageCheckBox48:setField("thabilidades1_3");
    obj.imageCheckBox48:setLeft(173);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(15);
    obj.imageCheckBox48:setHeight(15);
    obj.imageCheckBox48:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox48:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout31);
    obj.imageCheckBox49:setField("thabilidades1_4");
    obj.imageCheckBox49:setLeft(191);
    obj.imageCheckBox49:setTop(4);
    obj.imageCheckBox49:setWidth(15);
    obj.imageCheckBox49:setHeight(15);
    obj.imageCheckBox49:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox49:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout31);
    obj.imageCheckBox50:setField("thabilidades1_5");
    obj.imageCheckBox50:setLeft(209);
    obj.imageCheckBox50:setTop(4);
    obj.imageCheckBox50:setWidth(15);
    obj.imageCheckBox50:setHeight(15);
    obj.imageCheckBox50:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox50:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout30);
    obj.layout32:setLeft(10);
    obj.layout32:setTop(31);
    obj.layout32:setWidth(245);
    obj.layout32:setHeight(20);
    obj.layout32:setName("layout32");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout32);
    obj.label32:setAutoSize(true);
    obj.label32:setText("Esportes");
    obj.label32:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontColor("Black");
    obj.label32:setName("label32");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout32);
    obj.imageCheckBox51:setField("thabilidades2_1");
    obj.imageCheckBox51:setLeft(137);
    obj.imageCheckBox51:setTop(4);
    obj.imageCheckBox51:setWidth(15);
    obj.imageCheckBox51:setHeight(15);
    obj.imageCheckBox51:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox51:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout32);
    obj.imageCheckBox52:setField("thabilidades2_2");
    obj.imageCheckBox52:setLeft(155);
    obj.imageCheckBox52:setTop(4);
    obj.imageCheckBox52:setWidth(15);
    obj.imageCheckBox52:setHeight(15);
    obj.imageCheckBox52:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox52:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout32);
    obj.imageCheckBox53:setField("thabilidades2_3");
    obj.imageCheckBox53:setLeft(173);
    obj.imageCheckBox53:setTop(4);
    obj.imageCheckBox53:setWidth(15);
    obj.imageCheckBox53:setHeight(15);
    obj.imageCheckBox53:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox53:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout32);
    obj.imageCheckBox54:setField("thabilidades2_4");
    obj.imageCheckBox54:setLeft(191);
    obj.imageCheckBox54:setTop(4);
    obj.imageCheckBox54:setWidth(15);
    obj.imageCheckBox54:setHeight(15);
    obj.imageCheckBox54:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox54:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout32);
    obj.imageCheckBox55:setField("thabilidades2_5");
    obj.imageCheckBox55:setLeft(209);
    obj.imageCheckBox55:setTop(4);
    obj.imageCheckBox55:setWidth(15);
    obj.imageCheckBox55:setHeight(15);
    obj.imageCheckBox55:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox55:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout30);
    obj.layout33:setLeft(10);
    obj.layout33:setTop(51);
    obj.layout33:setWidth(245);
    obj.layout33:setHeight(20);
    obj.layout33:setName("layout33");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout33);
    obj.label33:setAutoSize(true);
    obj.label33:setText("Briga");
    obj.label33:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");
    obj.label33:setFontColor("Black");
    obj.label33:setName("label33");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout33);
    obj.imageCheckBox56:setField("thabilidades3_1");
    obj.imageCheckBox56:setLeft(137);
    obj.imageCheckBox56:setTop(4);
    obj.imageCheckBox56:setWidth(15);
    obj.imageCheckBox56:setHeight(15);
    obj.imageCheckBox56:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox56:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout33);
    obj.imageCheckBox57:setField("thabilidades3_2");
    obj.imageCheckBox57:setLeft(155);
    obj.imageCheckBox57:setTop(4);
    obj.imageCheckBox57:setWidth(15);
    obj.imageCheckBox57:setHeight(15);
    obj.imageCheckBox57:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox57:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout33);
    obj.imageCheckBox58:setField("thabilidades3_3");
    obj.imageCheckBox58:setLeft(173);
    obj.imageCheckBox58:setTop(4);
    obj.imageCheckBox58:setWidth(15);
    obj.imageCheckBox58:setHeight(15);
    obj.imageCheckBox58:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox58:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout33);
    obj.imageCheckBox59:setField("thabilidades3_4");
    obj.imageCheckBox59:setLeft(191);
    obj.imageCheckBox59:setTop(4);
    obj.imageCheckBox59:setWidth(15);
    obj.imageCheckBox59:setHeight(15);
    obj.imageCheckBox59:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox59:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout33);
    obj.imageCheckBox60:setField("thabilidades3_5");
    obj.imageCheckBox60:setLeft(209);
    obj.imageCheckBox60:setTop(4);
    obj.imageCheckBox60:setWidth(15);
    obj.imageCheckBox60:setHeight(15);
    obj.imageCheckBox60:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox60:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout30);
    obj.layout34:setLeft(10);
    obj.layout34:setTop(71);
    obj.layout34:setWidth(245);
    obj.layout34:setHeight(20);
    obj.layout34:setName("layout34");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout34);
    obj.label34:setAutoSize(true);
    obj.label34:setText("Esquiva");
    obj.label34:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontColor("Black");
    obj.label34:setName("label34");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout34);
    obj.imageCheckBox61:setField("thabilidades4_1");
    obj.imageCheckBox61:setLeft(137);
    obj.imageCheckBox61:setTop(4);
    obj.imageCheckBox61:setWidth(15);
    obj.imageCheckBox61:setHeight(15);
    obj.imageCheckBox61:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox61:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout34);
    obj.imageCheckBox62:setField("thabilidades4_2");
    obj.imageCheckBox62:setLeft(155);
    obj.imageCheckBox62:setTop(4);
    obj.imageCheckBox62:setWidth(15);
    obj.imageCheckBox62:setHeight(15);
    obj.imageCheckBox62:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox62:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout34);
    obj.imageCheckBox63:setField("thabilidades4_3");
    obj.imageCheckBox63:setLeft(173);
    obj.imageCheckBox63:setTop(4);
    obj.imageCheckBox63:setWidth(15);
    obj.imageCheckBox63:setHeight(15);
    obj.imageCheckBox63:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox63:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout34);
    obj.imageCheckBox64:setField("thabilidades4_4");
    obj.imageCheckBox64:setLeft(191);
    obj.imageCheckBox64:setTop(4);
    obj.imageCheckBox64:setWidth(15);
    obj.imageCheckBox64:setHeight(15);
    obj.imageCheckBox64:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox64:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout34);
    obj.imageCheckBox65:setField("thabilidades4_5");
    obj.imageCheckBox65:setLeft(209);
    obj.imageCheckBox65:setTop(4);
    obj.imageCheckBox65:setWidth(15);
    obj.imageCheckBox65:setHeight(15);
    obj.imageCheckBox65:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox65:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout30);
    obj.layout35:setLeft(10);
    obj.layout35:setTop(91);
    obj.layout35:setWidth(245);
    obj.layout35:setHeight(20);
    obj.layout35:setName("layout35");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout35);
    obj.label35:setAutoSize(true);
    obj.label35:setText("Empatia");
    obj.label35:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontColor("Black");
    obj.label35:setName("label35");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout35);
    obj.imageCheckBox66:setField("thabilidades5_1");
    obj.imageCheckBox66:setLeft(137);
    obj.imageCheckBox66:setTop(4);
    obj.imageCheckBox66:setWidth(15);
    obj.imageCheckBox66:setHeight(15);
    obj.imageCheckBox66:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox66:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout35);
    obj.imageCheckBox67:setField("thabilidades5_2");
    obj.imageCheckBox67:setLeft(155);
    obj.imageCheckBox67:setTop(4);
    obj.imageCheckBox67:setWidth(15);
    obj.imageCheckBox67:setHeight(15);
    obj.imageCheckBox67:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox67:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout35);
    obj.imageCheckBox68:setField("thabilidades5_3");
    obj.imageCheckBox68:setLeft(173);
    obj.imageCheckBox68:setTop(4);
    obj.imageCheckBox68:setWidth(15);
    obj.imageCheckBox68:setHeight(15);
    obj.imageCheckBox68:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox68:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout35);
    obj.imageCheckBox69:setField("thabilidades5_4");
    obj.imageCheckBox69:setLeft(191);
    obj.imageCheckBox69:setTop(4);
    obj.imageCheckBox69:setWidth(15);
    obj.imageCheckBox69:setHeight(15);
    obj.imageCheckBox69:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox69:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout35);
    obj.imageCheckBox70:setField("thabilidades5_5");
    obj.imageCheckBox70:setLeft(209);
    obj.imageCheckBox70:setTop(4);
    obj.imageCheckBox70:setWidth(15);
    obj.imageCheckBox70:setHeight(15);
    obj.imageCheckBox70:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox70:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout30);
    obj.layout36:setLeft(10);
    obj.layout36:setTop(111);
    obj.layout36:setWidth(245);
    obj.layout36:setHeight(20);
    obj.layout36:setName("layout36");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout36);
    obj.label36:setAutoSize(true);
    obj.label36:setText("Expressão");
    obj.label36:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setFontColor("Black");
    obj.label36:setName("label36");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout36);
    obj.imageCheckBox71:setField("thabilidades6_1");
    obj.imageCheckBox71:setLeft(137);
    obj.imageCheckBox71:setTop(4);
    obj.imageCheckBox71:setWidth(15);
    obj.imageCheckBox71:setHeight(15);
    obj.imageCheckBox71:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox71:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout36);
    obj.imageCheckBox72:setField("thabilidades6_2");
    obj.imageCheckBox72:setLeft(155);
    obj.imageCheckBox72:setTop(4);
    obj.imageCheckBox72:setWidth(15);
    obj.imageCheckBox72:setHeight(15);
    obj.imageCheckBox72:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox72:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout36);
    obj.imageCheckBox73:setField("thabilidades6_3");
    obj.imageCheckBox73:setLeft(173);
    obj.imageCheckBox73:setTop(4);
    obj.imageCheckBox73:setWidth(15);
    obj.imageCheckBox73:setHeight(15);
    obj.imageCheckBox73:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox73:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout36);
    obj.imageCheckBox74:setField("thabilidades6_4");
    obj.imageCheckBox74:setLeft(191);
    obj.imageCheckBox74:setTop(4);
    obj.imageCheckBox74:setWidth(15);
    obj.imageCheckBox74:setHeight(15);
    obj.imageCheckBox74:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox74:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout36);
    obj.imageCheckBox75:setField("thabilidades6_5");
    obj.imageCheckBox75:setLeft(209);
    obj.imageCheckBox75:setTop(4);
    obj.imageCheckBox75:setWidth(15);
    obj.imageCheckBox75:setHeight(15);
    obj.imageCheckBox75:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox75:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout30);
    obj.layout37:setLeft(10);
    obj.layout37:setTop(131);
    obj.layout37:setWidth(245);
    obj.layout37:setHeight(20);
    obj.layout37:setName("layout37");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout37);
    obj.label37:setAutoSize(true);
    obj.label37:setText("Intimidação");
    obj.label37:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontColor("Black");
    obj.label37:setName("label37");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout37);
    obj.imageCheckBox76:setField("thabilidades7_1");
    obj.imageCheckBox76:setLeft(137);
    obj.imageCheckBox76:setTop(4);
    obj.imageCheckBox76:setWidth(15);
    obj.imageCheckBox76:setHeight(15);
    obj.imageCheckBox76:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox76:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout37);
    obj.imageCheckBox77:setField("thabilidades7_2");
    obj.imageCheckBox77:setLeft(155);
    obj.imageCheckBox77:setTop(4);
    obj.imageCheckBox77:setWidth(15);
    obj.imageCheckBox77:setHeight(15);
    obj.imageCheckBox77:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox77:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout37);
    obj.imageCheckBox78:setField("thabilidades7_3");
    obj.imageCheckBox78:setLeft(173);
    obj.imageCheckBox78:setTop(4);
    obj.imageCheckBox78:setWidth(15);
    obj.imageCheckBox78:setHeight(15);
    obj.imageCheckBox78:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox78:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout37);
    obj.imageCheckBox79:setField("thabilidades7_4");
    obj.imageCheckBox79:setLeft(191);
    obj.imageCheckBox79:setTop(4);
    obj.imageCheckBox79:setWidth(15);
    obj.imageCheckBox79:setHeight(15);
    obj.imageCheckBox79:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox79:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout37);
    obj.imageCheckBox80:setField("thabilidades7_5");
    obj.imageCheckBox80:setLeft(209);
    obj.imageCheckBox80:setTop(4);
    obj.imageCheckBox80:setWidth(15);
    obj.imageCheckBox80:setHeight(15);
    obj.imageCheckBox80:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox80:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout30);
    obj.layout38:setLeft(10);
    obj.layout38:setTop(151);
    obj.layout38:setWidth(245);
    obj.layout38:setHeight(20);
    obj.layout38:setName("layout38");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout38);
    obj.label38:setAutoSize(true);
    obj.label38:setText("Liderança");
    obj.label38:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setFontColor("Black");
    obj.label38:setName("label38");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout38);
    obj.imageCheckBox81:setField("thabilidades8_1");
    obj.imageCheckBox81:setLeft(137);
    obj.imageCheckBox81:setTop(4);
    obj.imageCheckBox81:setWidth(15);
    obj.imageCheckBox81:setHeight(15);
    obj.imageCheckBox81:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox81:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout38);
    obj.imageCheckBox82:setField("thabilidades8_2");
    obj.imageCheckBox82:setLeft(155);
    obj.imageCheckBox82:setTop(4);
    obj.imageCheckBox82:setWidth(15);
    obj.imageCheckBox82:setHeight(15);
    obj.imageCheckBox82:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox82:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout38);
    obj.imageCheckBox83:setField("thabilidades8_3");
    obj.imageCheckBox83:setLeft(173);
    obj.imageCheckBox83:setTop(4);
    obj.imageCheckBox83:setWidth(15);
    obj.imageCheckBox83:setHeight(15);
    obj.imageCheckBox83:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox83:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout38);
    obj.imageCheckBox84:setField("thabilidades8_4");
    obj.imageCheckBox84:setLeft(191);
    obj.imageCheckBox84:setTop(4);
    obj.imageCheckBox84:setWidth(15);
    obj.imageCheckBox84:setHeight(15);
    obj.imageCheckBox84:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox84:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout38);
    obj.imageCheckBox85:setField("thabilidades8_5");
    obj.imageCheckBox85:setLeft(209);
    obj.imageCheckBox85:setTop(4);
    obj.imageCheckBox85:setWidth(15);
    obj.imageCheckBox85:setHeight(15);
    obj.imageCheckBox85:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox85:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout30);
    obj.layout39:setLeft(10);
    obj.layout39:setTop(171);
    obj.layout39:setWidth(245);
    obj.layout39:setHeight(20);
    obj.layout39:setName("layout39");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout39);
    obj.label39:setAutoSize(true);
    obj.label39:setText("Manha");
    obj.label39:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setFontColor("Black");
    obj.label39:setName("label39");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout39);
    obj.imageCheckBox86:setField("thabilidades9_1");
    obj.imageCheckBox86:setLeft(137);
    obj.imageCheckBox86:setTop(4);
    obj.imageCheckBox86:setWidth(15);
    obj.imageCheckBox86:setHeight(15);
    obj.imageCheckBox86:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox86:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout39);
    obj.imageCheckBox87:setField("thabilidades9_2");
    obj.imageCheckBox87:setLeft(155);
    obj.imageCheckBox87:setTop(4);
    obj.imageCheckBox87:setWidth(15);
    obj.imageCheckBox87:setHeight(15);
    obj.imageCheckBox87:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox87:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout39);
    obj.imageCheckBox88:setField("thabilidades9_3");
    obj.imageCheckBox88:setLeft(173);
    obj.imageCheckBox88:setTop(4);
    obj.imageCheckBox88:setWidth(15);
    obj.imageCheckBox88:setHeight(15);
    obj.imageCheckBox88:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox88:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout39);
    obj.imageCheckBox89:setField("thabilidades9_4");
    obj.imageCheckBox89:setLeft(191);
    obj.imageCheckBox89:setTop(4);
    obj.imageCheckBox89:setWidth(15);
    obj.imageCheckBox89:setHeight(15);
    obj.imageCheckBox89:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox89:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout39);
    obj.imageCheckBox90:setField("thabilidades9_5");
    obj.imageCheckBox90:setLeft(209);
    obj.imageCheckBox90:setTop(4);
    obj.imageCheckBox90:setWidth(15);
    obj.imageCheckBox90:setHeight(15);
    obj.imageCheckBox90:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox90:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout30);
    obj.layout40:setLeft(10);
    obj.layout40:setTop(191);
    obj.layout40:setWidth(245);
    obj.layout40:setHeight(20);
    obj.layout40:setName("layout40");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout40);
    obj.label40:setAutoSize(true);
    obj.label40:setText("Lábia");
    obj.label40:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setFontColor("Black");
    obj.label40:setName("label40");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout40);
    obj.imageCheckBox91:setField("thabilidades10_1");
    obj.imageCheckBox91:setLeft(137);
    obj.imageCheckBox91:setTop(4);
    obj.imageCheckBox91:setWidth(15);
    obj.imageCheckBox91:setHeight(15);
    obj.imageCheckBox91:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox91:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout40);
    obj.imageCheckBox92:setField("thabilidades10_2");
    obj.imageCheckBox92:setLeft(155);
    obj.imageCheckBox92:setTop(4);
    obj.imageCheckBox92:setWidth(15);
    obj.imageCheckBox92:setHeight(15);
    obj.imageCheckBox92:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox92:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout40);
    obj.imageCheckBox93:setField("thabilidades10_3");
    obj.imageCheckBox93:setLeft(173);
    obj.imageCheckBox93:setTop(4);
    obj.imageCheckBox93:setWidth(15);
    obj.imageCheckBox93:setHeight(15);
    obj.imageCheckBox93:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox93:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout40);
    obj.imageCheckBox94:setField("thabilidades10_4");
    obj.imageCheckBox94:setLeft(191);
    obj.imageCheckBox94:setTop(4);
    obj.imageCheckBox94:setWidth(15);
    obj.imageCheckBox94:setHeight(15);
    obj.imageCheckBox94:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox94:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout40);
    obj.imageCheckBox95:setField("thabilidades10_5");
    obj.imageCheckBox95:setLeft(209);
    obj.imageCheckBox95:setTop(4);
    obj.imageCheckBox95:setWidth(15);
    obj.imageCheckBox95:setHeight(15);
    obj.imageCheckBox95:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox95:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout29);
    obj.layout41:setLeft(330);
    obj.layout41:setTop(36);
    obj.layout41:setWidth(260);
    obj.layout41:setHeight(250);
    obj.layout41:setName("layout41");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout41);
    obj.layout42:setLeft(10);
    obj.layout42:setTop(11);
    obj.layout42:setWidth(245);
    obj.layout42:setHeight(20);
    obj.layout42:setName("layout42");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout42);
    obj.label41:setAutoSize(true);
    obj.label41:setText("Empatia c/ Animais");
    obj.label41:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setFontColor("Black");
    obj.label41:setName("label41");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout42);
    obj.imageCheckBox96:setField("phabilidades1_1");
    obj.imageCheckBox96:setLeft(137);
    obj.imageCheckBox96:setTop(4);
    obj.imageCheckBox96:setWidth(15);
    obj.imageCheckBox96:setHeight(15);
    obj.imageCheckBox96:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox96:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout42);
    obj.imageCheckBox97:setField("phabilidades1_2");
    obj.imageCheckBox97:setLeft(155);
    obj.imageCheckBox97:setTop(4);
    obj.imageCheckBox97:setWidth(15);
    obj.imageCheckBox97:setHeight(15);
    obj.imageCheckBox97:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox97:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout42);
    obj.imageCheckBox98:setField("phabilidades1_3");
    obj.imageCheckBox98:setLeft(173);
    obj.imageCheckBox98:setTop(4);
    obj.imageCheckBox98:setWidth(15);
    obj.imageCheckBox98:setHeight(15);
    obj.imageCheckBox98:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox98:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout42);
    obj.imageCheckBox99:setField("phabilidades1_4");
    obj.imageCheckBox99:setLeft(191);
    obj.imageCheckBox99:setTop(4);
    obj.imageCheckBox99:setWidth(15);
    obj.imageCheckBox99:setHeight(15);
    obj.imageCheckBox99:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox99:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout42);
    obj.imageCheckBox100:setField("phabilidades1_5");
    obj.imageCheckBox100:setLeft(209);
    obj.imageCheckBox100:setTop(4);
    obj.imageCheckBox100:setWidth(15);
    obj.imageCheckBox100:setHeight(15);
    obj.imageCheckBox100:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox100:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout41);
    obj.layout43:setLeft(10);
    obj.layout43:setTop(31);
    obj.layout43:setWidth(245);
    obj.layout43:setHeight(20);
    obj.layout43:setName("layout43");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout43);
    obj.label42:setAutoSize(true);
    obj.label42:setText("Ofícios");
    obj.label42:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setFontColor("Black");
    obj.label42:setName("label42");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout43);
    obj.imageCheckBox101:setField("phabilidades2_1");
    obj.imageCheckBox101:setLeft(137);
    obj.imageCheckBox101:setTop(4);
    obj.imageCheckBox101:setWidth(15);
    obj.imageCheckBox101:setHeight(15);
    obj.imageCheckBox101:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox101:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout43);
    obj.imageCheckBox102:setField("phabilidades2_2");
    obj.imageCheckBox102:setLeft(155);
    obj.imageCheckBox102:setTop(4);
    obj.imageCheckBox102:setWidth(15);
    obj.imageCheckBox102:setHeight(15);
    obj.imageCheckBox102:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox102:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout43);
    obj.imageCheckBox103:setField("phabilidades2_3");
    obj.imageCheckBox103:setLeft(173);
    obj.imageCheckBox103:setTop(4);
    obj.imageCheckBox103:setWidth(15);
    obj.imageCheckBox103:setHeight(15);
    obj.imageCheckBox103:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox103:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout43);
    obj.imageCheckBox104:setField("phabilidades2_4");
    obj.imageCheckBox104:setLeft(191);
    obj.imageCheckBox104:setTop(4);
    obj.imageCheckBox104:setWidth(15);
    obj.imageCheckBox104:setHeight(15);
    obj.imageCheckBox104:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox104:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout43);
    obj.imageCheckBox105:setField("phabilidades2_5");
    obj.imageCheckBox105:setLeft(209);
    obj.imageCheckBox105:setTop(4);
    obj.imageCheckBox105:setWidth(15);
    obj.imageCheckBox105:setHeight(15);
    obj.imageCheckBox105:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox105:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout41);
    obj.layout44:setLeft(10);
    obj.layout44:setTop(51);
    obj.layout44:setWidth(245);
    obj.layout44:setHeight(20);
    obj.layout44:setName("layout44");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout44);
    obj.label43:setAutoSize(true);
    obj.label43:setText("Condução");
    obj.label43:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setFontColor("Black");
    obj.label43:setName("label43");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout44);
    obj.imageCheckBox106:setField("phabilidades3_1");
    obj.imageCheckBox106:setLeft(137);
    obj.imageCheckBox106:setTop(4);
    obj.imageCheckBox106:setWidth(15);
    obj.imageCheckBox106:setHeight(15);
    obj.imageCheckBox106:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox106:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout44);
    obj.imageCheckBox107:setField("phabilidades3_2");
    obj.imageCheckBox107:setLeft(155);
    obj.imageCheckBox107:setTop(4);
    obj.imageCheckBox107:setWidth(15);
    obj.imageCheckBox107:setHeight(15);
    obj.imageCheckBox107:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox107:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout44);
    obj.imageCheckBox108:setField("phabilidades3_3");
    obj.imageCheckBox108:setLeft(173);
    obj.imageCheckBox108:setTop(4);
    obj.imageCheckBox108:setWidth(15);
    obj.imageCheckBox108:setHeight(15);
    obj.imageCheckBox108:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox108:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout44);
    obj.imageCheckBox109:setField("phabilidades3_4");
    obj.imageCheckBox109:setLeft(191);
    obj.imageCheckBox109:setTop(4);
    obj.imageCheckBox109:setWidth(15);
    obj.imageCheckBox109:setHeight(15);
    obj.imageCheckBox109:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox109:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout44);
    obj.imageCheckBox110:setField("phabilidades3_5");
    obj.imageCheckBox110:setLeft(209);
    obj.imageCheckBox110:setTop(4);
    obj.imageCheckBox110:setWidth(15);
    obj.imageCheckBox110:setHeight(15);
    obj.imageCheckBox110:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox110:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout41);
    obj.layout45:setLeft(10);
    obj.layout45:setTop(71);
    obj.layout45:setWidth(245);
    obj.layout45:setHeight(20);
    obj.layout45:setName("layout45");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout45);
    obj.label44:setAutoSize(true);
    obj.label44:setText("Etiqueta");
    obj.label44:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setFontColor("Black");
    obj.label44:setName("label44");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout45);
    obj.imageCheckBox111:setField("phabilidades4_1");
    obj.imageCheckBox111:setLeft(137);
    obj.imageCheckBox111:setTop(4);
    obj.imageCheckBox111:setWidth(15);
    obj.imageCheckBox111:setHeight(15);
    obj.imageCheckBox111:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox111:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout45);
    obj.imageCheckBox112:setField("phabilidades4_2");
    obj.imageCheckBox112:setLeft(155);
    obj.imageCheckBox112:setTop(4);
    obj.imageCheckBox112:setWidth(15);
    obj.imageCheckBox112:setHeight(15);
    obj.imageCheckBox112:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox112:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout45);
    obj.imageCheckBox113:setField("phabilidades4_3");
    obj.imageCheckBox113:setLeft(173);
    obj.imageCheckBox113:setTop(4);
    obj.imageCheckBox113:setWidth(15);
    obj.imageCheckBox113:setHeight(15);
    obj.imageCheckBox113:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox113:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout45);
    obj.imageCheckBox114:setField("phabilidades4_4");
    obj.imageCheckBox114:setLeft(191);
    obj.imageCheckBox114:setTop(4);
    obj.imageCheckBox114:setWidth(15);
    obj.imageCheckBox114:setHeight(15);
    obj.imageCheckBox114:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox114:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout45);
    obj.imageCheckBox115:setField("phabilidades4_5");
    obj.imageCheckBox115:setLeft(209);
    obj.imageCheckBox115:setTop(4);
    obj.imageCheckBox115:setWidth(15);
    obj.imageCheckBox115:setHeight(15);
    obj.imageCheckBox115:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox115:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout41);
    obj.layout46:setLeft(10);
    obj.layout46:setTop(91);
    obj.layout46:setWidth(245);
    obj.layout46:setHeight(20);
    obj.layout46:setName("layout46");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout46);
    obj.label45:setAutoSize(true);
    obj.label45:setText("Armas de Fogo");
    obj.label45:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label45, "fontStyle",  "bold");
    obj.label45:setFontColor("Black");
    obj.label45:setName("label45");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout46);
    obj.imageCheckBox116:setField("phabilidades5_1");
    obj.imageCheckBox116:setLeft(137);
    obj.imageCheckBox116:setTop(4);
    obj.imageCheckBox116:setWidth(15);
    obj.imageCheckBox116:setHeight(15);
    obj.imageCheckBox116:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox116:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout46);
    obj.imageCheckBox117:setField("phabilidades5_2");
    obj.imageCheckBox117:setLeft(155);
    obj.imageCheckBox117:setTop(4);
    obj.imageCheckBox117:setWidth(15);
    obj.imageCheckBox117:setHeight(15);
    obj.imageCheckBox117:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox117:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout46);
    obj.imageCheckBox118:setField("phabilidades5_3");
    obj.imageCheckBox118:setLeft(173);
    obj.imageCheckBox118:setTop(4);
    obj.imageCheckBox118:setWidth(15);
    obj.imageCheckBox118:setHeight(15);
    obj.imageCheckBox118:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox118:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout46);
    obj.imageCheckBox119:setField("phabilidades5_4");
    obj.imageCheckBox119:setLeft(191);
    obj.imageCheckBox119:setTop(4);
    obj.imageCheckBox119:setWidth(15);
    obj.imageCheckBox119:setHeight(15);
    obj.imageCheckBox119:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox119:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout46);
    obj.imageCheckBox120:setField("phabilidades5_5");
    obj.imageCheckBox120:setLeft(209);
    obj.imageCheckBox120:setTop(4);
    obj.imageCheckBox120:setWidth(15);
    obj.imageCheckBox120:setHeight(15);
    obj.imageCheckBox120:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox120:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout41);
    obj.layout47:setLeft(10);
    obj.layout47:setTop(111);
    obj.layout47:setWidth(245);
    obj.layout47:setHeight(20);
    obj.layout47:setName("layout47");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout47);
    obj.label46:setAutoSize(true);
    obj.label46:setText("Armas Brancas");
    obj.label46:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setFontColor("Black");
    obj.label46:setName("label46");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout47);
    obj.imageCheckBox121:setField("phabilidades6_1");
    obj.imageCheckBox121:setLeft(137);
    obj.imageCheckBox121:setTop(4);
    obj.imageCheckBox121:setWidth(15);
    obj.imageCheckBox121:setHeight(15);
    obj.imageCheckBox121:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox121:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout47);
    obj.imageCheckBox122:setField("phabilidades6_2");
    obj.imageCheckBox122:setLeft(155);
    obj.imageCheckBox122:setTop(4);
    obj.imageCheckBox122:setWidth(15);
    obj.imageCheckBox122:setHeight(15);
    obj.imageCheckBox122:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox122:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout47);
    obj.imageCheckBox123:setField("phabilidades6_3");
    obj.imageCheckBox123:setLeft(173);
    obj.imageCheckBox123:setTop(4);
    obj.imageCheckBox123:setWidth(15);
    obj.imageCheckBox123:setHeight(15);
    obj.imageCheckBox123:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox123:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout47);
    obj.imageCheckBox124:setField("phabilidades6_4");
    obj.imageCheckBox124:setLeft(191);
    obj.imageCheckBox124:setTop(4);
    obj.imageCheckBox124:setWidth(15);
    obj.imageCheckBox124:setHeight(15);
    obj.imageCheckBox124:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox124:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout47);
    obj.imageCheckBox125:setField("phabilidades6_5");
    obj.imageCheckBox125:setLeft(209);
    obj.imageCheckBox125:setTop(4);
    obj.imageCheckBox125:setWidth(15);
    obj.imageCheckBox125:setHeight(15);
    obj.imageCheckBox125:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox125:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout41);
    obj.layout48:setLeft(10);
    obj.layout48:setTop(131);
    obj.layout48:setWidth(245);
    obj.layout48:setHeight(20);
    obj.layout48:setName("layout48");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout48);
    obj.label47:setAutoSize(true);
    obj.label47:setText("Performance");
    obj.label47:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontColor("Black");
    obj.label47:setName("label47");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout48);
    obj.imageCheckBox126:setField("phabilidades7_1");
    obj.imageCheckBox126:setLeft(137);
    obj.imageCheckBox126:setTop(4);
    obj.imageCheckBox126:setWidth(15);
    obj.imageCheckBox126:setHeight(15);
    obj.imageCheckBox126:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox126:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout48);
    obj.imageCheckBox127:setField("phabilidades7_2");
    obj.imageCheckBox127:setLeft(155);
    obj.imageCheckBox127:setTop(4);
    obj.imageCheckBox127:setWidth(15);
    obj.imageCheckBox127:setHeight(15);
    obj.imageCheckBox127:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox127:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout48);
    obj.imageCheckBox128:setField("phabilidades7_3");
    obj.imageCheckBox128:setLeft(173);
    obj.imageCheckBox128:setTop(4);
    obj.imageCheckBox128:setWidth(15);
    obj.imageCheckBox128:setHeight(15);
    obj.imageCheckBox128:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox128:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout48);
    obj.imageCheckBox129:setField("phabilidades7_4");
    obj.imageCheckBox129:setLeft(191);
    obj.imageCheckBox129:setTop(4);
    obj.imageCheckBox129:setWidth(15);
    obj.imageCheckBox129:setHeight(15);
    obj.imageCheckBox129:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox129:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout48);
    obj.imageCheckBox130:setField("phabilidades7_5");
    obj.imageCheckBox130:setLeft(209);
    obj.imageCheckBox130:setTop(4);
    obj.imageCheckBox130:setWidth(15);
    obj.imageCheckBox130:setHeight(15);
    obj.imageCheckBox130:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox130:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout41);
    obj.layout49:setLeft(10);
    obj.layout49:setTop(151);
    obj.layout49:setWidth(245);
    obj.layout49:setHeight(20);
    obj.layout49:setName("layout49");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout49);
    obj.label48:setAutoSize(true);
    obj.label48:setText("Segurança");
    obj.label48:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontColor("Black");
    obj.label48:setName("label48");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout49);
    obj.imageCheckBox131:setField("phabilidades8_1");
    obj.imageCheckBox131:setLeft(137);
    obj.imageCheckBox131:setTop(4);
    obj.imageCheckBox131:setWidth(15);
    obj.imageCheckBox131:setHeight(15);
    obj.imageCheckBox131:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox131:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout49);
    obj.imageCheckBox132:setField("phabilidades8_2");
    obj.imageCheckBox132:setLeft(155);
    obj.imageCheckBox132:setTop(4);
    obj.imageCheckBox132:setWidth(15);
    obj.imageCheckBox132:setHeight(15);
    obj.imageCheckBox132:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox132:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout49);
    obj.imageCheckBox133:setField("phabilidades8_3");
    obj.imageCheckBox133:setLeft(173);
    obj.imageCheckBox133:setTop(4);
    obj.imageCheckBox133:setWidth(15);
    obj.imageCheckBox133:setHeight(15);
    obj.imageCheckBox133:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox133:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout49);
    obj.imageCheckBox134:setField("phabilidades8_4");
    obj.imageCheckBox134:setLeft(191);
    obj.imageCheckBox134:setTop(4);
    obj.imageCheckBox134:setWidth(15);
    obj.imageCheckBox134:setHeight(15);
    obj.imageCheckBox134:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox134:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout49);
    obj.imageCheckBox135:setField("phabilidades8_5");
    obj.imageCheckBox135:setLeft(209);
    obj.imageCheckBox135:setTop(4);
    obj.imageCheckBox135:setWidth(15);
    obj.imageCheckBox135:setHeight(15);
    obj.imageCheckBox135:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox135:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout41);
    obj.layout50:setLeft(10);
    obj.layout50:setTop(171);
    obj.layout50:setWidth(245);
    obj.layout50:setHeight(20);
    obj.layout50:setName("layout50");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout50);
    obj.label49:setAutoSize(true);
    obj.label49:setText("Furtividade");
    obj.label49:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontColor("Black");
    obj.label49:setName("label49");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout50);
    obj.imageCheckBox136:setField("phabilidades9_1");
    obj.imageCheckBox136:setLeft(137);
    obj.imageCheckBox136:setTop(4);
    obj.imageCheckBox136:setWidth(15);
    obj.imageCheckBox136:setHeight(15);
    obj.imageCheckBox136:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox136:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout50);
    obj.imageCheckBox137:setField("phabilidades9_2");
    obj.imageCheckBox137:setLeft(155);
    obj.imageCheckBox137:setTop(4);
    obj.imageCheckBox137:setWidth(15);
    obj.imageCheckBox137:setHeight(15);
    obj.imageCheckBox137:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox137:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout50);
    obj.imageCheckBox138:setField("phabilidades9_3");
    obj.imageCheckBox138:setLeft(173);
    obj.imageCheckBox138:setTop(4);
    obj.imageCheckBox138:setWidth(15);
    obj.imageCheckBox138:setHeight(15);
    obj.imageCheckBox138:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox138:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout50);
    obj.imageCheckBox139:setField("phabilidades9_4");
    obj.imageCheckBox139:setLeft(191);
    obj.imageCheckBox139:setTop(4);
    obj.imageCheckBox139:setWidth(15);
    obj.imageCheckBox139:setHeight(15);
    obj.imageCheckBox139:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox139:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout50);
    obj.imageCheckBox140:setField("phabilidades9_5");
    obj.imageCheckBox140:setLeft(209);
    obj.imageCheckBox140:setTop(4);
    obj.imageCheckBox140:setWidth(15);
    obj.imageCheckBox140:setHeight(15);
    obj.imageCheckBox140:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox140:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layout41);
    obj.layout51:setLeft(10);
    obj.layout51:setTop(191);
    obj.layout51:setWidth(245);
    obj.layout51:setHeight(20);
    obj.layout51:setName("layout51");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout51);
    obj.label50:setAutoSize(true);
    obj.label50:setText("Sobrevivência");
    obj.label50:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setFontColor("Black");
    obj.label50:setName("label50");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout51);
    obj.imageCheckBox141:setField("phabilidades10_1");
    obj.imageCheckBox141:setLeft(137);
    obj.imageCheckBox141:setTop(4);
    obj.imageCheckBox141:setWidth(15);
    obj.imageCheckBox141:setHeight(15);
    obj.imageCheckBox141:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox141:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout51);
    obj.imageCheckBox142:setField("phabilidades10_2");
    obj.imageCheckBox142:setLeft(155);
    obj.imageCheckBox142:setTop(4);
    obj.imageCheckBox142:setWidth(15);
    obj.imageCheckBox142:setHeight(15);
    obj.imageCheckBox142:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox142:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout51);
    obj.imageCheckBox143:setField("phabilidades10_3");
    obj.imageCheckBox143:setLeft(173);
    obj.imageCheckBox143:setTop(4);
    obj.imageCheckBox143:setWidth(15);
    obj.imageCheckBox143:setHeight(15);
    obj.imageCheckBox143:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox143:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout51);
    obj.imageCheckBox144:setField("phabilidades10_4");
    obj.imageCheckBox144:setLeft(191);
    obj.imageCheckBox144:setTop(4);
    obj.imageCheckBox144:setWidth(15);
    obj.imageCheckBox144:setHeight(15);
    obj.imageCheckBox144:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox144:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout51);
    obj.imageCheckBox145:setField("phabilidades10_5");
    obj.imageCheckBox145:setLeft(209);
    obj.imageCheckBox145:setTop(4);
    obj.imageCheckBox145:setWidth(15);
    obj.imageCheckBox145:setHeight(15);
    obj.imageCheckBox145:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox145:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout29);
    obj.layout52:setLeft(620);
    obj.layout52:setTop(36);
    obj.layout52:setWidth(260);
    obj.layout52:setHeight(250);
    obj.layout52:setName("layout52");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.layout52);
    obj.layout53:setLeft(10);
    obj.layout53:setTop(11);
    obj.layout53:setWidth(245);
    obj.layout53:setHeight(20);
    obj.layout53:setName("layout53");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout53);
    obj.label51:setAutoSize(true);
    obj.label51:setText("Acadêmicos");
    obj.label51:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setFontColor("Black");
    obj.label51:setName("label51");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout53);
    obj.imageCheckBox146:setField("chabilidades1_1");
    obj.imageCheckBox146:setLeft(137);
    obj.imageCheckBox146:setTop(4);
    obj.imageCheckBox146:setWidth(15);
    obj.imageCheckBox146:setHeight(15);
    obj.imageCheckBox146:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox146:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout53);
    obj.imageCheckBox147:setField("chabilidades1_2");
    obj.imageCheckBox147:setLeft(155);
    obj.imageCheckBox147:setTop(4);
    obj.imageCheckBox147:setWidth(15);
    obj.imageCheckBox147:setHeight(15);
    obj.imageCheckBox147:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox147:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout53);
    obj.imageCheckBox148:setField("chabilidades1_3");
    obj.imageCheckBox148:setLeft(173);
    obj.imageCheckBox148:setTop(4);
    obj.imageCheckBox148:setWidth(15);
    obj.imageCheckBox148:setHeight(15);
    obj.imageCheckBox148:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox148:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout53);
    obj.imageCheckBox149:setField("chabilidades1_4");
    obj.imageCheckBox149:setLeft(191);
    obj.imageCheckBox149:setTop(4);
    obj.imageCheckBox149:setWidth(15);
    obj.imageCheckBox149:setHeight(15);
    obj.imageCheckBox149:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox149:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout53);
    obj.imageCheckBox150:setField("chabilidades1_5");
    obj.imageCheckBox150:setLeft(209);
    obj.imageCheckBox150:setTop(4);
    obj.imageCheckBox150:setWidth(15);
    obj.imageCheckBox150:setHeight(15);
    obj.imageCheckBox150:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox150:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout52);
    obj.layout54:setLeft(10);
    obj.layout54:setTop(31);
    obj.layout54:setWidth(245);
    obj.layout54:setHeight(20);
    obj.layout54:setName("layout54");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout54);
    obj.label52:setAutoSize(true);
    obj.label52:setText("Computador");
    obj.label52:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setFontColor("Black");
    obj.label52:setName("label52");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout54);
    obj.imageCheckBox151:setField("chabilidades2_1");
    obj.imageCheckBox151:setLeft(137);
    obj.imageCheckBox151:setTop(4);
    obj.imageCheckBox151:setWidth(15);
    obj.imageCheckBox151:setHeight(15);
    obj.imageCheckBox151:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox151:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout54);
    obj.imageCheckBox152:setField("chabilidades2_2");
    obj.imageCheckBox152:setLeft(155);
    obj.imageCheckBox152:setTop(4);
    obj.imageCheckBox152:setWidth(15);
    obj.imageCheckBox152:setHeight(15);
    obj.imageCheckBox152:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox152:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout54);
    obj.imageCheckBox153:setField("chabilidades2_3");
    obj.imageCheckBox153:setLeft(173);
    obj.imageCheckBox153:setTop(4);
    obj.imageCheckBox153:setWidth(15);
    obj.imageCheckBox153:setHeight(15);
    obj.imageCheckBox153:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox153:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout54);
    obj.imageCheckBox154:setField("chabilidades2_4");
    obj.imageCheckBox154:setLeft(191);
    obj.imageCheckBox154:setTop(4);
    obj.imageCheckBox154:setWidth(15);
    obj.imageCheckBox154:setHeight(15);
    obj.imageCheckBox154:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox154:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout54);
    obj.imageCheckBox155:setField("chabilidades2_5");
    obj.imageCheckBox155:setLeft(209);
    obj.imageCheckBox155:setTop(4);
    obj.imageCheckBox155:setWidth(15);
    obj.imageCheckBox155:setHeight(15);
    obj.imageCheckBox155:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox155:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout52);
    obj.layout55:setLeft(10);
    obj.layout55:setTop(51);
    obj.layout55:setWidth(245);
    obj.layout55:setHeight(20);
    obj.layout55:setName("layout55");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout55);
    obj.label53:setAutoSize(true);
    obj.label53:setText("Finanças");
    obj.label53:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setFontColor("Black");
    obj.label53:setName("label53");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout55);
    obj.imageCheckBox156:setField("chabilidades3_1");
    obj.imageCheckBox156:setLeft(137);
    obj.imageCheckBox156:setTop(4);
    obj.imageCheckBox156:setWidth(15);
    obj.imageCheckBox156:setHeight(15);
    obj.imageCheckBox156:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox156:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout55);
    obj.imageCheckBox157:setField("chabilidades3_2");
    obj.imageCheckBox157:setLeft(155);
    obj.imageCheckBox157:setTop(4);
    obj.imageCheckBox157:setWidth(15);
    obj.imageCheckBox157:setHeight(15);
    obj.imageCheckBox157:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox157:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout55);
    obj.imageCheckBox158:setField("chabilidades3_3");
    obj.imageCheckBox158:setLeft(173);
    obj.imageCheckBox158:setTop(4);
    obj.imageCheckBox158:setWidth(15);
    obj.imageCheckBox158:setHeight(15);
    obj.imageCheckBox158:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox158:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout55);
    obj.imageCheckBox159:setField("chabilidades3_4");
    obj.imageCheckBox159:setLeft(191);
    obj.imageCheckBox159:setTop(4);
    obj.imageCheckBox159:setWidth(15);
    obj.imageCheckBox159:setHeight(15);
    obj.imageCheckBox159:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox159:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout55);
    obj.imageCheckBox160:setField("chabilidades3_5");
    obj.imageCheckBox160:setLeft(209);
    obj.imageCheckBox160:setTop(4);
    obj.imageCheckBox160:setWidth(15);
    obj.imageCheckBox160:setHeight(15);
    obj.imageCheckBox160:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox160:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout52);
    obj.layout56:setLeft(10);
    obj.layout56:setTop(71);
    obj.layout56:setWidth(245);
    obj.layout56:setHeight(20);
    obj.layout56:setName("layout56");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout56);
    obj.label54:setAutoSize(true);
    obj.label54:setText("Investigação");
    obj.label54:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label54, "fontStyle",  "bold");
    obj.label54:setFontColor("Black");
    obj.label54:setName("label54");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout56);
    obj.imageCheckBox161:setField("chabilidades4_1");
    obj.imageCheckBox161:setLeft(137);
    obj.imageCheckBox161:setTop(4);
    obj.imageCheckBox161:setWidth(15);
    obj.imageCheckBox161:setHeight(15);
    obj.imageCheckBox161:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox161:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout56);
    obj.imageCheckBox162:setField("chabilidades4_2");
    obj.imageCheckBox162:setLeft(155);
    obj.imageCheckBox162:setTop(4);
    obj.imageCheckBox162:setWidth(15);
    obj.imageCheckBox162:setHeight(15);
    obj.imageCheckBox162:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox162:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout56);
    obj.imageCheckBox163:setField("chabilidades4_3");
    obj.imageCheckBox163:setLeft(173);
    obj.imageCheckBox163:setTop(4);
    obj.imageCheckBox163:setWidth(15);
    obj.imageCheckBox163:setHeight(15);
    obj.imageCheckBox163:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox163:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout56);
    obj.imageCheckBox164:setField("chabilidades4_4");
    obj.imageCheckBox164:setLeft(191);
    obj.imageCheckBox164:setTop(4);
    obj.imageCheckBox164:setWidth(15);
    obj.imageCheckBox164:setHeight(15);
    obj.imageCheckBox164:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox164:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout56);
    obj.imageCheckBox165:setField("chabilidades4_5");
    obj.imageCheckBox165:setLeft(209);
    obj.imageCheckBox165:setTop(4);
    obj.imageCheckBox165:setWidth(15);
    obj.imageCheckBox165:setHeight(15);
    obj.imageCheckBox165:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox165:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layout52);
    obj.layout57:setLeft(10);
    obj.layout57:setTop(91);
    obj.layout57:setWidth(245);
    obj.layout57:setHeight(20);
    obj.layout57:setName("layout57");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout57);
    obj.label55:setAutoSize(true);
    obj.label55:setText("Direito");
    obj.label55:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label55, "fontStyle",  "bold");
    obj.label55:setFontColor("Black");
    obj.label55:setName("label55");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout57);
    obj.imageCheckBox166:setField("chabilidades5_1");
    obj.imageCheckBox166:setLeft(137);
    obj.imageCheckBox166:setTop(4);
    obj.imageCheckBox166:setWidth(15);
    obj.imageCheckBox166:setHeight(15);
    obj.imageCheckBox166:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox166:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout57);
    obj.imageCheckBox167:setField("chabilidades5_2");
    obj.imageCheckBox167:setLeft(155);
    obj.imageCheckBox167:setTop(4);
    obj.imageCheckBox167:setWidth(15);
    obj.imageCheckBox167:setHeight(15);
    obj.imageCheckBox167:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox167:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout57);
    obj.imageCheckBox168:setField("chabilidades5_3");
    obj.imageCheckBox168:setLeft(173);
    obj.imageCheckBox168:setTop(4);
    obj.imageCheckBox168:setWidth(15);
    obj.imageCheckBox168:setHeight(15);
    obj.imageCheckBox168:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox168:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout57);
    obj.imageCheckBox169:setField("chabilidades5_4");
    obj.imageCheckBox169:setLeft(191);
    obj.imageCheckBox169:setTop(4);
    obj.imageCheckBox169:setWidth(15);
    obj.imageCheckBox169:setHeight(15);
    obj.imageCheckBox169:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox169:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout57);
    obj.imageCheckBox170:setField("chabilidades5_5");
    obj.imageCheckBox170:setLeft(209);
    obj.imageCheckBox170:setTop(4);
    obj.imageCheckBox170:setWidth(15);
    obj.imageCheckBox170:setHeight(15);
    obj.imageCheckBox170:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox170:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.layout52);
    obj.layout58:setLeft(10);
    obj.layout58:setTop(111);
    obj.layout58:setWidth(245);
    obj.layout58:setHeight(20);
    obj.layout58:setName("layout58");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout58);
    obj.label56:setAutoSize(true);
    obj.label56:setText("Linguística");
    obj.label56:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label56, "fontStyle",  "bold");
    obj.label56:setFontColor("Black");
    obj.label56:setName("label56");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout58);
    obj.imageCheckBox171:setField("chabilidades6_1");
    obj.imageCheckBox171:setLeft(137);
    obj.imageCheckBox171:setTop(4);
    obj.imageCheckBox171:setWidth(15);
    obj.imageCheckBox171:setHeight(15);
    obj.imageCheckBox171:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox171:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout58);
    obj.imageCheckBox172:setField("chabilidades6_2");
    obj.imageCheckBox172:setLeft(155);
    obj.imageCheckBox172:setTop(4);
    obj.imageCheckBox172:setWidth(15);
    obj.imageCheckBox172:setHeight(15);
    obj.imageCheckBox172:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox172:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout58);
    obj.imageCheckBox173:setField("chabilidades6_3");
    obj.imageCheckBox173:setLeft(173);
    obj.imageCheckBox173:setTop(4);
    obj.imageCheckBox173:setWidth(15);
    obj.imageCheckBox173:setHeight(15);
    obj.imageCheckBox173:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox173:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout58);
    obj.imageCheckBox174:setField("chabilidades6_4");
    obj.imageCheckBox174:setLeft(191);
    obj.imageCheckBox174:setTop(4);
    obj.imageCheckBox174:setWidth(15);
    obj.imageCheckBox174:setHeight(15);
    obj.imageCheckBox174:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox174:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout58);
    obj.imageCheckBox175:setField("chabilidades6_5");
    obj.imageCheckBox175:setLeft(209);
    obj.imageCheckBox175:setTop(4);
    obj.imageCheckBox175:setWidth(15);
    obj.imageCheckBox175:setHeight(15);
    obj.imageCheckBox175:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox175:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout52);
    obj.layout59:setLeft(10);
    obj.layout59:setTop(131);
    obj.layout59:setWidth(245);
    obj.layout59:setHeight(20);
    obj.layout59:setName("layout59");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout59);
    obj.label57:setAutoSize(true);
    obj.label57:setText("Medicina");
    obj.label57:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label57, "fontStyle",  "bold");
    obj.label57:setFontColor("Black");
    obj.label57:setName("label57");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout59);
    obj.imageCheckBox176:setField("chabilidades7_1");
    obj.imageCheckBox176:setLeft(137);
    obj.imageCheckBox176:setTop(4);
    obj.imageCheckBox176:setWidth(15);
    obj.imageCheckBox176:setHeight(15);
    obj.imageCheckBox176:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox176:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout59);
    obj.imageCheckBox177:setField("chabilidades7_2");
    obj.imageCheckBox177:setLeft(155);
    obj.imageCheckBox177:setTop(4);
    obj.imageCheckBox177:setWidth(15);
    obj.imageCheckBox177:setHeight(15);
    obj.imageCheckBox177:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox177:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout59);
    obj.imageCheckBox178:setField("chabilidades7_3");
    obj.imageCheckBox178:setLeft(173);
    obj.imageCheckBox178:setTop(4);
    obj.imageCheckBox178:setWidth(15);
    obj.imageCheckBox178:setHeight(15);
    obj.imageCheckBox178:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox178:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout59);
    obj.imageCheckBox179:setField("chabilidades7_4");
    obj.imageCheckBox179:setLeft(191);
    obj.imageCheckBox179:setTop(4);
    obj.imageCheckBox179:setWidth(15);
    obj.imageCheckBox179:setHeight(15);
    obj.imageCheckBox179:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox179:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout59);
    obj.imageCheckBox180:setField("chabilidades7_5");
    obj.imageCheckBox180:setLeft(209);
    obj.imageCheckBox180:setTop(4);
    obj.imageCheckBox180:setWidth(15);
    obj.imageCheckBox180:setHeight(15);
    obj.imageCheckBox180:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox180:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout52);
    obj.layout60:setLeft(10);
    obj.layout60:setTop(151);
    obj.layout60:setWidth(245);
    obj.layout60:setHeight(20);
    obj.layout60:setName("layout60");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout60);
    obj.label58:setAutoSize(true);
    obj.label58:setText("Ocultismo");
    obj.label58:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label58, "fontStyle",  "bold");
    obj.label58:setFontColor("Black");
    obj.label58:setName("label58");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout60);
    obj.imageCheckBox181:setField("chabilidades8_1");
    obj.imageCheckBox181:setLeft(137);
    obj.imageCheckBox181:setTop(4);
    obj.imageCheckBox181:setWidth(15);
    obj.imageCheckBox181:setHeight(15);
    obj.imageCheckBox181:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox181:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout60);
    obj.imageCheckBox182:setField("chabilidades8_2");
    obj.imageCheckBox182:setLeft(155);
    obj.imageCheckBox182:setTop(4);
    obj.imageCheckBox182:setWidth(15);
    obj.imageCheckBox182:setHeight(15);
    obj.imageCheckBox182:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox182:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout60);
    obj.imageCheckBox183:setField("chabilidades8_3");
    obj.imageCheckBox183:setLeft(173);
    obj.imageCheckBox183:setTop(4);
    obj.imageCheckBox183:setWidth(15);
    obj.imageCheckBox183:setHeight(15);
    obj.imageCheckBox183:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox183:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout60);
    obj.imageCheckBox184:setField("chabilidades8_4");
    obj.imageCheckBox184:setLeft(191);
    obj.imageCheckBox184:setTop(4);
    obj.imageCheckBox184:setWidth(15);
    obj.imageCheckBox184:setHeight(15);
    obj.imageCheckBox184:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox184:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout60);
    obj.imageCheckBox185:setField("chabilidades8_5");
    obj.imageCheckBox185:setLeft(209);
    obj.imageCheckBox185:setTop(4);
    obj.imageCheckBox185:setWidth(15);
    obj.imageCheckBox185:setHeight(15);
    obj.imageCheckBox185:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox185:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.layout52);
    obj.layout61:setLeft(10);
    obj.layout61:setTop(171);
    obj.layout61:setWidth(245);
    obj.layout61:setHeight(20);
    obj.layout61:setName("layout61");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout61);
    obj.label59:setAutoSize(true);
    obj.label59:setText("Política");
    obj.label59:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setFontColor("Black");
    obj.label59:setName("label59");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout61);
    obj.imageCheckBox186:setField("chabilidades9_1");
    obj.imageCheckBox186:setLeft(137);
    obj.imageCheckBox186:setTop(4);
    obj.imageCheckBox186:setWidth(15);
    obj.imageCheckBox186:setHeight(15);
    obj.imageCheckBox186:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox186:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout61);
    obj.imageCheckBox187:setField("chabilidades9_2");
    obj.imageCheckBox187:setLeft(155);
    obj.imageCheckBox187:setTop(4);
    obj.imageCheckBox187:setWidth(15);
    obj.imageCheckBox187:setHeight(15);
    obj.imageCheckBox187:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox187:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout61);
    obj.imageCheckBox188:setField("chabilidades9_3");
    obj.imageCheckBox188:setLeft(173);
    obj.imageCheckBox188:setTop(4);
    obj.imageCheckBox188:setWidth(15);
    obj.imageCheckBox188:setHeight(15);
    obj.imageCheckBox188:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox188:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout61);
    obj.imageCheckBox189:setField("chabilidades9_4");
    obj.imageCheckBox189:setLeft(191);
    obj.imageCheckBox189:setTop(4);
    obj.imageCheckBox189:setWidth(15);
    obj.imageCheckBox189:setHeight(15);
    obj.imageCheckBox189:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox189:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout61);
    obj.imageCheckBox190:setField("chabilidades9_5");
    obj.imageCheckBox190:setLeft(209);
    obj.imageCheckBox190:setTop(4);
    obj.imageCheckBox190:setWidth(15);
    obj.imageCheckBox190:setHeight(15);
    obj.imageCheckBox190:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox190:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout52);
    obj.layout62:setLeft(10);
    obj.layout62:setTop(191);
    obj.layout62:setWidth(245);
    obj.layout62:setHeight(20);
    obj.layout62:setName("layout62");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout62);
    obj.label60:setAutoSize(true);
    obj.label60:setText("Ciência");
    obj.label60:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setFontColor("Black");
    obj.label60:setName("label60");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout62);
    obj.imageCheckBox191:setField("chabilidades10_1");
    obj.imageCheckBox191:setLeft(137);
    obj.imageCheckBox191:setTop(4);
    obj.imageCheckBox191:setWidth(15);
    obj.imageCheckBox191:setHeight(15);
    obj.imageCheckBox191:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox191:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout62);
    obj.imageCheckBox192:setField("chabilidades10_2");
    obj.imageCheckBox192:setLeft(155);
    obj.imageCheckBox192:setTop(4);
    obj.imageCheckBox192:setWidth(15);
    obj.imageCheckBox192:setHeight(15);
    obj.imageCheckBox192:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox192:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.imageCheckBox193 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox193:setParent(obj.layout62);
    obj.imageCheckBox193:setField("chabilidades10_3");
    obj.imageCheckBox193:setLeft(173);
    obj.imageCheckBox193:setTop(4);
    obj.imageCheckBox193:setWidth(15);
    obj.imageCheckBox193:setHeight(15);
    obj.imageCheckBox193:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox193:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox193:setName("imageCheckBox193");

    obj.imageCheckBox194 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox194:setParent(obj.layout62);
    obj.imageCheckBox194:setField("chabilidades10_4");
    obj.imageCheckBox194:setLeft(191);
    obj.imageCheckBox194:setTop(4);
    obj.imageCheckBox194:setWidth(15);
    obj.imageCheckBox194:setHeight(15);
    obj.imageCheckBox194:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox194:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox194:setName("imageCheckBox194");

    obj.imageCheckBox195 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox195:setParent(obj.layout62);
    obj.imageCheckBox195:setField("chabilidades10_5");
    obj.imageCheckBox195:setLeft(209);
    obj.imageCheckBox195:setTop(4);
    obj.imageCheckBox195:setWidth(15);
    obj.imageCheckBox195:setHeight(15);
    obj.imageCheckBox195:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox195:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox195:setName("imageCheckBox195");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox1);
    obj.layout63:setTop(680);
    obj.layout63:setWidth(880);
    obj.layout63:setHeight(25);
    obj.layout63:setName("layout63");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout63);
    obj.rectangle15:setAlign("client");
    obj.rectangle15:setColor("black");
    obj.rectangle15:setName("rectangle15");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout63);
    obj.label61:setLeft(425);
    obj.label61:setTop(2);
    obj.label61:setWidth(80);
    obj.label61:setHeight(20);
    obj.label61:setText("Vantagens");
    obj.label61:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label61, "fontStyle",  "bold");
    obj.label61:setFontColor("White");
    obj.label61:setName("label61");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.scrollBox1);
    obj.layout64:setTop(680);
    obj.layout64:setWidth(880);
    obj.layout64:setHeight(300);
    obj.layout64:setName("layout64");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout64);
    obj.label62:setLeft(115);
    obj.label62:setTop(30);
    obj.label62:setWidth(95);
    obj.label62:setHeight(20);
    obj.label62:setText("Antecedentes");
    obj.label62:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label62, "fontStyle",  "bold");
    obj.label62:setFontColor("Black");
    obj.label62:setName("label62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout64);
    obj.label63:setLeft(425);
    obj.label63:setTop(30);
    obj.label63:setWidth(80);
    obj.label63:setHeight(20);
    obj.label63:setText("Disciplinas");
    obj.label63:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label63, "fontStyle",  "bold");
    obj.label63:setFontColor("Black");
    obj.label63:setName("label63");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout64);
    obj.label64:setLeft(715);
    obj.label64:setTop(30);
    obj.label64:setWidth(80);
    obj.label64:setHeight(20);
    obj.label64:setText("Virtudes");
    obj.label64:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setFontColor("Black");
    obj.label64:setName("label64");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.layout64);
    obj.layout65:setLeft(0);
    obj.layout65:setTop(20);
    obj.layout65:setWidth(880);
    obj.layout65:setHeight(200);
    obj.layout65:setName("layout65");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.layout65);
    obj.layout66:setLeft(0);
    obj.layout66:setTop(30);
    obj.layout66:setWidth(290);
    obj.layout66:setHeight(25);
    obj.layout66:setName("layout66");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout66);
    obj.edit10:setLeft(40);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(135);
    obj.edit10:setHeight(25);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setField("antecedentes1");
    obj.edit10:setType("text");
    obj.edit10:setName("edit10");

    obj.imageCheckBox196 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox196:setParent(obj.layout66);
    obj.imageCheckBox196:setField("antecedentes1_1");
    obj.imageCheckBox196:setLeft(177);
    obj.imageCheckBox196:setTop(4);
    obj.imageCheckBox196:setWidth(15);
    obj.imageCheckBox196:setHeight(15);
    obj.imageCheckBox196:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox196:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox196:setName("imageCheckBox196");

    obj.imageCheckBox197 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox197:setParent(obj.layout66);
    obj.imageCheckBox197:setField("antecedentes1_2");
    obj.imageCheckBox197:setLeft(195);
    obj.imageCheckBox197:setTop(4);
    obj.imageCheckBox197:setWidth(15);
    obj.imageCheckBox197:setHeight(15);
    obj.imageCheckBox197:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox197:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox197:setName("imageCheckBox197");

    obj.imageCheckBox198 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox198:setParent(obj.layout66);
    obj.imageCheckBox198:setField("antecedentes1_3");
    obj.imageCheckBox198:setLeft(213);
    obj.imageCheckBox198:setTop(4);
    obj.imageCheckBox198:setWidth(15);
    obj.imageCheckBox198:setHeight(15);
    obj.imageCheckBox198:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox198:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox198:setName("imageCheckBox198");

    obj.imageCheckBox199 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox199:setParent(obj.layout66);
    obj.imageCheckBox199:setField("antecedentes1_4");
    obj.imageCheckBox199:setLeft(231);
    obj.imageCheckBox199:setTop(4);
    obj.imageCheckBox199:setWidth(15);
    obj.imageCheckBox199:setHeight(15);
    obj.imageCheckBox199:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox199:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox199:setName("imageCheckBox199");

    obj.imageCheckBox200 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox200:setParent(obj.layout66);
    obj.imageCheckBox200:setField("antecedentes1_5");
    obj.imageCheckBox200:setLeft(249);
    obj.imageCheckBox200:setTop(4);
    obj.imageCheckBox200:setWidth(15);
    obj.imageCheckBox200:setHeight(15);
    obj.imageCheckBox200:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox200:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox200:setName("imageCheckBox200");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.layout65);
    obj.layout67:setLeft(0);
    obj.layout67:setTop(55);
    obj.layout67:setWidth(290);
    obj.layout67:setHeight(25);
    obj.layout67:setName("layout67");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout67);
    obj.edit11:setLeft(40);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(135);
    obj.edit11:setHeight(25);
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setField("antecedentes2");
    obj.edit11:setType("text");
    obj.edit11:setName("edit11");

    obj.imageCheckBox201 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox201:setParent(obj.layout67);
    obj.imageCheckBox201:setField("antecedentes2_1");
    obj.imageCheckBox201:setLeft(177);
    obj.imageCheckBox201:setTop(4);
    obj.imageCheckBox201:setWidth(15);
    obj.imageCheckBox201:setHeight(15);
    obj.imageCheckBox201:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox201:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox201:setName("imageCheckBox201");

    obj.imageCheckBox202 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox202:setParent(obj.layout67);
    obj.imageCheckBox202:setField("antecedentes2_2");
    obj.imageCheckBox202:setLeft(195);
    obj.imageCheckBox202:setTop(4);
    obj.imageCheckBox202:setWidth(15);
    obj.imageCheckBox202:setHeight(15);
    obj.imageCheckBox202:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox202:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox202:setName("imageCheckBox202");

    obj.imageCheckBox203 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox203:setParent(obj.layout67);
    obj.imageCheckBox203:setField("antecedentes2_3");
    obj.imageCheckBox203:setLeft(213);
    obj.imageCheckBox203:setTop(4);
    obj.imageCheckBox203:setWidth(15);
    obj.imageCheckBox203:setHeight(15);
    obj.imageCheckBox203:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox203:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox203:setName("imageCheckBox203");

    obj.imageCheckBox204 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox204:setParent(obj.layout67);
    obj.imageCheckBox204:setField("antecedentes2_4");
    obj.imageCheckBox204:setLeft(231);
    obj.imageCheckBox204:setTop(4);
    obj.imageCheckBox204:setWidth(15);
    obj.imageCheckBox204:setHeight(15);
    obj.imageCheckBox204:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox204:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox204:setName("imageCheckBox204");

    obj.imageCheckBox205 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox205:setParent(obj.layout67);
    obj.imageCheckBox205:setField("antecedentes2_5");
    obj.imageCheckBox205:setLeft(249);
    obj.imageCheckBox205:setTop(4);
    obj.imageCheckBox205:setWidth(15);
    obj.imageCheckBox205:setHeight(15);
    obj.imageCheckBox205:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox205:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox205:setName("imageCheckBox205");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.layout65);
    obj.layout68:setLeft(0);
    obj.layout68:setTop(80);
    obj.layout68:setWidth(290);
    obj.layout68:setHeight(25);
    obj.layout68:setName("layout68");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout68);
    obj.edit12:setLeft(40);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(135);
    obj.edit12:setHeight(25);
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setField("antecedentes3");
    obj.edit12:setType("text");
    obj.edit12:setName("edit12");

    obj.imageCheckBox206 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox206:setParent(obj.layout68);
    obj.imageCheckBox206:setField("antecedentes3_1");
    obj.imageCheckBox206:setLeft(177);
    obj.imageCheckBox206:setTop(4);
    obj.imageCheckBox206:setWidth(15);
    obj.imageCheckBox206:setHeight(15);
    obj.imageCheckBox206:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox206:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox206:setName("imageCheckBox206");

    obj.imageCheckBox207 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox207:setParent(obj.layout68);
    obj.imageCheckBox207:setField("antecedentes3_2");
    obj.imageCheckBox207:setLeft(195);
    obj.imageCheckBox207:setTop(4);
    obj.imageCheckBox207:setWidth(15);
    obj.imageCheckBox207:setHeight(15);
    obj.imageCheckBox207:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox207:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox207:setName("imageCheckBox207");

    obj.imageCheckBox208 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox208:setParent(obj.layout68);
    obj.imageCheckBox208:setField("antecedentes3_3");
    obj.imageCheckBox208:setLeft(213);
    obj.imageCheckBox208:setTop(4);
    obj.imageCheckBox208:setWidth(15);
    obj.imageCheckBox208:setHeight(15);
    obj.imageCheckBox208:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox208:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox208:setName("imageCheckBox208");

    obj.imageCheckBox209 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox209:setParent(obj.layout68);
    obj.imageCheckBox209:setField("antecedentes3_4");
    obj.imageCheckBox209:setLeft(231);
    obj.imageCheckBox209:setTop(4);
    obj.imageCheckBox209:setWidth(15);
    obj.imageCheckBox209:setHeight(15);
    obj.imageCheckBox209:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox209:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox209:setName("imageCheckBox209");

    obj.imageCheckBox210 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox210:setParent(obj.layout68);
    obj.imageCheckBox210:setField("antecedentes3_5");
    obj.imageCheckBox210:setLeft(249);
    obj.imageCheckBox210:setTop(4);
    obj.imageCheckBox210:setWidth(15);
    obj.imageCheckBox210:setHeight(15);
    obj.imageCheckBox210:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox210:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox210:setName("imageCheckBox210");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layout65);
    obj.layout69:setLeft(0);
    obj.layout69:setTop(105);
    obj.layout69:setWidth(290);
    obj.layout69:setHeight(25);
    obj.layout69:setName("layout69");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout69);
    obj.edit13:setLeft(40);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(135);
    obj.edit13:setHeight(25);
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setField("antecedentes4");
    obj.edit13:setType("text");
    obj.edit13:setName("edit13");

    obj.imageCheckBox211 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox211:setParent(obj.layout69);
    obj.imageCheckBox211:setField("antecedentes4_1");
    obj.imageCheckBox211:setLeft(177);
    obj.imageCheckBox211:setTop(4);
    obj.imageCheckBox211:setWidth(15);
    obj.imageCheckBox211:setHeight(15);
    obj.imageCheckBox211:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox211:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox211:setName("imageCheckBox211");

    obj.imageCheckBox212 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox212:setParent(obj.layout69);
    obj.imageCheckBox212:setField("antecedentes4_2");
    obj.imageCheckBox212:setLeft(195);
    obj.imageCheckBox212:setTop(4);
    obj.imageCheckBox212:setWidth(15);
    obj.imageCheckBox212:setHeight(15);
    obj.imageCheckBox212:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox212:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox212:setName("imageCheckBox212");

    obj.imageCheckBox213 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox213:setParent(obj.layout69);
    obj.imageCheckBox213:setField("antecedentes4_3");
    obj.imageCheckBox213:setLeft(213);
    obj.imageCheckBox213:setTop(4);
    obj.imageCheckBox213:setWidth(15);
    obj.imageCheckBox213:setHeight(15);
    obj.imageCheckBox213:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox213:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox213:setName("imageCheckBox213");

    obj.imageCheckBox214 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox214:setParent(obj.layout69);
    obj.imageCheckBox214:setField("antecedentes4_4");
    obj.imageCheckBox214:setLeft(231);
    obj.imageCheckBox214:setTop(4);
    obj.imageCheckBox214:setWidth(15);
    obj.imageCheckBox214:setHeight(15);
    obj.imageCheckBox214:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox214:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox214:setName("imageCheckBox214");

    obj.imageCheckBox215 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox215:setParent(obj.layout69);
    obj.imageCheckBox215:setField("antecedentes4_5");
    obj.imageCheckBox215:setLeft(249);
    obj.imageCheckBox215:setTop(4);
    obj.imageCheckBox215:setWidth(15);
    obj.imageCheckBox215:setHeight(15);
    obj.imageCheckBox215:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox215:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox215:setName("imageCheckBox215");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.layout65);
    obj.layout70:setLeft(0);
    obj.layout70:setTop(130);
    obj.layout70:setWidth(290);
    obj.layout70:setHeight(25);
    obj.layout70:setName("layout70");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout70);
    obj.edit14:setLeft(40);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(135);
    obj.edit14:setHeight(25);
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setField("antecedentes5");
    obj.edit14:setType("text");
    obj.edit14:setName("edit14");

    obj.imageCheckBox216 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox216:setParent(obj.layout70);
    obj.imageCheckBox216:setField("antecedentes5_1");
    obj.imageCheckBox216:setLeft(177);
    obj.imageCheckBox216:setTop(4);
    obj.imageCheckBox216:setWidth(15);
    obj.imageCheckBox216:setHeight(15);
    obj.imageCheckBox216:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox216:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox216:setName("imageCheckBox216");

    obj.imageCheckBox217 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox217:setParent(obj.layout70);
    obj.imageCheckBox217:setField("antecedentes5_2");
    obj.imageCheckBox217:setLeft(195);
    obj.imageCheckBox217:setTop(4);
    obj.imageCheckBox217:setWidth(15);
    obj.imageCheckBox217:setHeight(15);
    obj.imageCheckBox217:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox217:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox217:setName("imageCheckBox217");

    obj.imageCheckBox218 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox218:setParent(obj.layout70);
    obj.imageCheckBox218:setField("antecedentes5_3");
    obj.imageCheckBox218:setLeft(213);
    obj.imageCheckBox218:setTop(4);
    obj.imageCheckBox218:setWidth(15);
    obj.imageCheckBox218:setHeight(15);
    obj.imageCheckBox218:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox218:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox218:setName("imageCheckBox218");

    obj.imageCheckBox219 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox219:setParent(obj.layout70);
    obj.imageCheckBox219:setField("antecedentes5_4");
    obj.imageCheckBox219:setLeft(231);
    obj.imageCheckBox219:setTop(4);
    obj.imageCheckBox219:setWidth(15);
    obj.imageCheckBox219:setHeight(15);
    obj.imageCheckBox219:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox219:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox219:setName("imageCheckBox219");

    obj.imageCheckBox220 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox220:setParent(obj.layout70);
    obj.imageCheckBox220:setField("antecedentes5_5");
    obj.imageCheckBox220:setLeft(249);
    obj.imageCheckBox220:setTop(4);
    obj.imageCheckBox220:setWidth(15);
    obj.imageCheckBox220:setHeight(15);
    obj.imageCheckBox220:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox220:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox220:setName("imageCheckBox220");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layout64);
    obj.layout71:setLeft(300);
    obj.layout71:setTop(20);
    obj.layout71:setWidth(880);
    obj.layout71:setHeight(200);
    obj.layout71:setName("layout71");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layout71);
    obj.layout72:setLeft(0);
    obj.layout72:setTop(30);
    obj.layout72:setWidth(290);
    obj.layout72:setHeight(25);
    obj.layout72:setName("layout72");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout72);
    obj.edit15:setLeft(40);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(135);
    obj.edit15:setHeight(25);
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setField("disciplinas1");
    obj.edit15:setType("text");
    obj.edit15:setName("edit15");

    obj.imageCheckBox221 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox221:setParent(obj.layout72);
    obj.imageCheckBox221:setField("disciplinas1_1");
    obj.imageCheckBox221:setLeft(177);
    obj.imageCheckBox221:setTop(4);
    obj.imageCheckBox221:setWidth(15);
    obj.imageCheckBox221:setHeight(15);
    obj.imageCheckBox221:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox221:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox221:setName("imageCheckBox221");

    obj.imageCheckBox222 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox222:setParent(obj.layout72);
    obj.imageCheckBox222:setField("disciplinas1_2");
    obj.imageCheckBox222:setLeft(195);
    obj.imageCheckBox222:setTop(4);
    obj.imageCheckBox222:setWidth(15);
    obj.imageCheckBox222:setHeight(15);
    obj.imageCheckBox222:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox222:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox222:setName("imageCheckBox222");

    obj.imageCheckBox223 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox223:setParent(obj.layout72);
    obj.imageCheckBox223:setField("disciplinas1_3");
    obj.imageCheckBox223:setLeft(213);
    obj.imageCheckBox223:setTop(4);
    obj.imageCheckBox223:setWidth(15);
    obj.imageCheckBox223:setHeight(15);
    obj.imageCheckBox223:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox223:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox223:setName("imageCheckBox223");

    obj.imageCheckBox224 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox224:setParent(obj.layout72);
    obj.imageCheckBox224:setField("disciplinas1_4");
    obj.imageCheckBox224:setLeft(231);
    obj.imageCheckBox224:setTop(4);
    obj.imageCheckBox224:setWidth(15);
    obj.imageCheckBox224:setHeight(15);
    obj.imageCheckBox224:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox224:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox224:setName("imageCheckBox224");

    obj.imageCheckBox225 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox225:setParent(obj.layout72);
    obj.imageCheckBox225:setField("disciplinas1_5");
    obj.imageCheckBox225:setLeft(249);
    obj.imageCheckBox225:setTop(4);
    obj.imageCheckBox225:setWidth(15);
    obj.imageCheckBox225:setHeight(15);
    obj.imageCheckBox225:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox225:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox225:setName("imageCheckBox225");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layout71);
    obj.layout73:setLeft(0);
    obj.layout73:setTop(55);
    obj.layout73:setWidth(290);
    obj.layout73:setHeight(25);
    obj.layout73:setName("layout73");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout73);
    obj.edit16:setLeft(40);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(135);
    obj.edit16:setHeight(25);
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setField("disciplinas2");
    obj.edit16:setType("text");
    obj.edit16:setName("edit16");

    obj.imageCheckBox226 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox226:setParent(obj.layout73);
    obj.imageCheckBox226:setField("disciplinas2_1");
    obj.imageCheckBox226:setLeft(177);
    obj.imageCheckBox226:setTop(4);
    obj.imageCheckBox226:setWidth(15);
    obj.imageCheckBox226:setHeight(15);
    obj.imageCheckBox226:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox226:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox226:setName("imageCheckBox226");

    obj.imageCheckBox227 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox227:setParent(obj.layout73);
    obj.imageCheckBox227:setField("disciplinas2_2");
    obj.imageCheckBox227:setLeft(195);
    obj.imageCheckBox227:setTop(4);
    obj.imageCheckBox227:setWidth(15);
    obj.imageCheckBox227:setHeight(15);
    obj.imageCheckBox227:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox227:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox227:setName("imageCheckBox227");

    obj.imageCheckBox228 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox228:setParent(obj.layout73);
    obj.imageCheckBox228:setField("disciplinas2_3");
    obj.imageCheckBox228:setLeft(213);
    obj.imageCheckBox228:setTop(4);
    obj.imageCheckBox228:setWidth(15);
    obj.imageCheckBox228:setHeight(15);
    obj.imageCheckBox228:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox228:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox228:setName("imageCheckBox228");

    obj.imageCheckBox229 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox229:setParent(obj.layout73);
    obj.imageCheckBox229:setField("disciplinas2_4");
    obj.imageCheckBox229:setLeft(231);
    obj.imageCheckBox229:setTop(4);
    obj.imageCheckBox229:setWidth(15);
    obj.imageCheckBox229:setHeight(15);
    obj.imageCheckBox229:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox229:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox229:setName("imageCheckBox229");

    obj.imageCheckBox230 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox230:setParent(obj.layout73);
    obj.imageCheckBox230:setField("disciplinas2_5");
    obj.imageCheckBox230:setLeft(249);
    obj.imageCheckBox230:setTop(4);
    obj.imageCheckBox230:setWidth(15);
    obj.imageCheckBox230:setHeight(15);
    obj.imageCheckBox230:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox230:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox230:setName("imageCheckBox230");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.layout71);
    obj.layout74:setLeft(0);
    obj.layout74:setTop(80);
    obj.layout74:setWidth(290);
    obj.layout74:setHeight(25);
    obj.layout74:setName("layout74");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout74);
    obj.edit17:setLeft(40);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(135);
    obj.edit17:setHeight(25);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setField("disciplinas3");
    obj.edit17:setType("text");
    obj.edit17:setName("edit17");

    obj.imageCheckBox231 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox231:setParent(obj.layout74);
    obj.imageCheckBox231:setField("disciplinas3_1");
    obj.imageCheckBox231:setLeft(177);
    obj.imageCheckBox231:setTop(4);
    obj.imageCheckBox231:setWidth(15);
    obj.imageCheckBox231:setHeight(15);
    obj.imageCheckBox231:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox231:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox231:setName("imageCheckBox231");

    obj.imageCheckBox232 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox232:setParent(obj.layout74);
    obj.imageCheckBox232:setField("disciplinas3_2");
    obj.imageCheckBox232:setLeft(195);
    obj.imageCheckBox232:setTop(4);
    obj.imageCheckBox232:setWidth(15);
    obj.imageCheckBox232:setHeight(15);
    obj.imageCheckBox232:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox232:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox232:setName("imageCheckBox232");

    obj.imageCheckBox233 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox233:setParent(obj.layout74);
    obj.imageCheckBox233:setField("disciplinas3_3");
    obj.imageCheckBox233:setLeft(213);
    obj.imageCheckBox233:setTop(4);
    obj.imageCheckBox233:setWidth(15);
    obj.imageCheckBox233:setHeight(15);
    obj.imageCheckBox233:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox233:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox233:setName("imageCheckBox233");

    obj.imageCheckBox234 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox234:setParent(obj.layout74);
    obj.imageCheckBox234:setField("disciplinas3_4");
    obj.imageCheckBox234:setLeft(231);
    obj.imageCheckBox234:setTop(4);
    obj.imageCheckBox234:setWidth(15);
    obj.imageCheckBox234:setHeight(15);
    obj.imageCheckBox234:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox234:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox234:setName("imageCheckBox234");

    obj.imageCheckBox235 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox235:setParent(obj.layout74);
    obj.imageCheckBox235:setField("disciplinas3_5");
    obj.imageCheckBox235:setLeft(249);
    obj.imageCheckBox235:setTop(4);
    obj.imageCheckBox235:setWidth(15);
    obj.imageCheckBox235:setHeight(15);
    obj.imageCheckBox235:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox235:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox235:setName("imageCheckBox235");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layout71);
    obj.layout75:setLeft(0);
    obj.layout75:setTop(105);
    obj.layout75:setWidth(290);
    obj.layout75:setHeight(25);
    obj.layout75:setName("layout75");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout75);
    obj.edit18:setLeft(40);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(135);
    obj.edit18:setHeight(25);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setField("disciplinas4");
    obj.edit18:setType("text");
    obj.edit18:setName("edit18");

    obj.imageCheckBox236 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox236:setParent(obj.layout75);
    obj.imageCheckBox236:setField("disciplinas4_1");
    obj.imageCheckBox236:setLeft(177);
    obj.imageCheckBox236:setTop(4);
    obj.imageCheckBox236:setWidth(15);
    obj.imageCheckBox236:setHeight(15);
    obj.imageCheckBox236:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox236:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox236:setName("imageCheckBox236");

    obj.imageCheckBox237 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox237:setParent(obj.layout75);
    obj.imageCheckBox237:setField("disciplinas4_2");
    obj.imageCheckBox237:setLeft(195);
    obj.imageCheckBox237:setTop(4);
    obj.imageCheckBox237:setWidth(15);
    obj.imageCheckBox237:setHeight(15);
    obj.imageCheckBox237:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox237:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox237:setName("imageCheckBox237");

    obj.imageCheckBox238 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox238:setParent(obj.layout75);
    obj.imageCheckBox238:setField("disciplinas4_3");
    obj.imageCheckBox238:setLeft(213);
    obj.imageCheckBox238:setTop(4);
    obj.imageCheckBox238:setWidth(15);
    obj.imageCheckBox238:setHeight(15);
    obj.imageCheckBox238:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox238:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox238:setName("imageCheckBox238");

    obj.imageCheckBox239 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox239:setParent(obj.layout75);
    obj.imageCheckBox239:setField("disciplinas4_4");
    obj.imageCheckBox239:setLeft(231);
    obj.imageCheckBox239:setTop(4);
    obj.imageCheckBox239:setWidth(15);
    obj.imageCheckBox239:setHeight(15);
    obj.imageCheckBox239:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox239:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox239:setName("imageCheckBox239");

    obj.imageCheckBox240 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox240:setParent(obj.layout75);
    obj.imageCheckBox240:setField("disciplinas4_5");
    obj.imageCheckBox240:setLeft(249);
    obj.imageCheckBox240:setTop(4);
    obj.imageCheckBox240:setWidth(15);
    obj.imageCheckBox240:setHeight(15);
    obj.imageCheckBox240:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox240:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox240:setName("imageCheckBox240");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.layout71);
    obj.layout76:setLeft(0);
    obj.layout76:setTop(130);
    obj.layout76:setWidth(290);
    obj.layout76:setHeight(25);
    obj.layout76:setName("layout76");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout76);
    obj.edit19:setLeft(40);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(135);
    obj.edit19:setHeight(25);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setField("disciplinas5");
    obj.edit19:setType("text");
    obj.edit19:setName("edit19");

    obj.imageCheckBox241 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox241:setParent(obj.layout76);
    obj.imageCheckBox241:setField("disciplinas5_1");
    obj.imageCheckBox241:setLeft(177);
    obj.imageCheckBox241:setTop(4);
    obj.imageCheckBox241:setWidth(15);
    obj.imageCheckBox241:setHeight(15);
    obj.imageCheckBox241:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox241:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox241:setName("imageCheckBox241");

    obj.imageCheckBox242 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox242:setParent(obj.layout76);
    obj.imageCheckBox242:setField("disciplinas5_2");
    obj.imageCheckBox242:setLeft(195);
    obj.imageCheckBox242:setTop(4);
    obj.imageCheckBox242:setWidth(15);
    obj.imageCheckBox242:setHeight(15);
    obj.imageCheckBox242:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox242:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox242:setName("imageCheckBox242");

    obj.imageCheckBox243 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox243:setParent(obj.layout76);
    obj.imageCheckBox243:setField("disciplinas5_3");
    obj.imageCheckBox243:setLeft(213);
    obj.imageCheckBox243:setTop(4);
    obj.imageCheckBox243:setWidth(15);
    obj.imageCheckBox243:setHeight(15);
    obj.imageCheckBox243:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox243:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox243:setName("imageCheckBox243");

    obj.imageCheckBox244 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox244:setParent(obj.layout76);
    obj.imageCheckBox244:setField("disciplinas5_4");
    obj.imageCheckBox244:setLeft(231);
    obj.imageCheckBox244:setTop(4);
    obj.imageCheckBox244:setWidth(15);
    obj.imageCheckBox244:setHeight(15);
    obj.imageCheckBox244:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox244:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox244:setName("imageCheckBox244");

    obj.imageCheckBox245 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox245:setParent(obj.layout76);
    obj.imageCheckBox245:setField("disciplinas5_5");
    obj.imageCheckBox245:setLeft(249);
    obj.imageCheckBox245:setTop(4);
    obj.imageCheckBox245:setWidth(15);
    obj.imageCheckBox245:setHeight(15);
    obj.imageCheckBox245:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox245:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox245:setName("imageCheckBox245");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.layout64);
    obj.layout77:setLeft(620);
    obj.layout77:setTop(36);
    obj.layout77:setWidth(260);
    obj.layout77:setHeight(250);
    obj.layout77:setName("layout77");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.layout77);
    obj.layout78:setLeft(10);
    obj.layout78:setTop(11);
    obj.layout78:setWidth(245);
    obj.layout78:setHeight(40);
    obj.layout78:setName("layout78");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout78);
    obj.label65:setText("Consciencia/");
    obj.label65:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label65, "fontStyle",  "bold");
    obj.label65:setFontColor("Black");
    obj.label65:setName("label65");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout78);
    obj.label66:setTop(13);
    obj.label66:setText("Convicção");
    obj.label66:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label66, "fontStyle",  "bold");
    obj.label66:setFontColor("Black");
    obj.label66:setName("label66");

    obj.imageCheckBox246 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox246:setParent(obj.layout78);
    obj.imageCheckBox246:setField("1_1");
    obj.imageCheckBox246:setLeft(137);
    obj.imageCheckBox246:setTop(4);
    obj.imageCheckBox246:setWidth(15);
    obj.imageCheckBox246:setHeight(15);
    obj.imageCheckBox246:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox246:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox246:setName("imageCheckBox246");

    obj.imageCheckBox247 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox247:setParent(obj.layout78);
    obj.imageCheckBox247:setField("1_2");
    obj.imageCheckBox247:setLeft(155);
    obj.imageCheckBox247:setTop(4);
    obj.imageCheckBox247:setWidth(15);
    obj.imageCheckBox247:setHeight(15);
    obj.imageCheckBox247:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox247:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox247:setName("imageCheckBox247");

    obj.imageCheckBox248 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox248:setParent(obj.layout78);
    obj.imageCheckBox248:setField("1_3");
    obj.imageCheckBox248:setLeft(173);
    obj.imageCheckBox248:setTop(4);
    obj.imageCheckBox248:setWidth(15);
    obj.imageCheckBox248:setHeight(15);
    obj.imageCheckBox248:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox248:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox248:setName("imageCheckBox248");

    obj.imageCheckBox249 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox249:setParent(obj.layout78);
    obj.imageCheckBox249:setField("1_4");
    obj.imageCheckBox249:setLeft(191);
    obj.imageCheckBox249:setTop(4);
    obj.imageCheckBox249:setWidth(15);
    obj.imageCheckBox249:setHeight(15);
    obj.imageCheckBox249:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox249:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox249:setName("imageCheckBox249");

    obj.imageCheckBox250 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox250:setParent(obj.layout78);
    obj.imageCheckBox250:setField("1_5");
    obj.imageCheckBox250:setLeft(209);
    obj.imageCheckBox250:setTop(4);
    obj.imageCheckBox250:setWidth(15);
    obj.imageCheckBox250:setHeight(15);
    obj.imageCheckBox250:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox250:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox250:setName("imageCheckBox250");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.layout77);
    obj.layout79:setLeft(10);
    obj.layout79:setTop(61);
    obj.layout79:setWidth(245);
    obj.layout79:setHeight(40);
    obj.layout79:setName("layout79");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout79);
    obj.label67:setText("Autocontrole/");
    obj.label67:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label67, "fontStyle",  "bold");
    obj.label67:setFontColor("Black");
    obj.label67:setName("label67");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout79);
    obj.label68:setTop(13);
    obj.label68:setText("Instinto");
    obj.label68:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label68, "fontStyle",  "bold");
    obj.label68:setFontColor("Black");
    obj.label68:setName("label68");

    obj.imageCheckBox251 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox251:setParent(obj.layout79);
    obj.imageCheckBox251:setField("2_1");
    obj.imageCheckBox251:setLeft(137);
    obj.imageCheckBox251:setTop(4);
    obj.imageCheckBox251:setWidth(15);
    obj.imageCheckBox251:setHeight(15);
    obj.imageCheckBox251:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox251:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox251:setName("imageCheckBox251");

    obj.imageCheckBox252 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox252:setParent(obj.layout79);
    obj.imageCheckBox252:setField("2_2");
    obj.imageCheckBox252:setLeft(155);
    obj.imageCheckBox252:setTop(4);
    obj.imageCheckBox252:setWidth(15);
    obj.imageCheckBox252:setHeight(15);
    obj.imageCheckBox252:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox252:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox252:setName("imageCheckBox252");

    obj.imageCheckBox253 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox253:setParent(obj.layout79);
    obj.imageCheckBox253:setField("2_3");
    obj.imageCheckBox253:setLeft(173);
    obj.imageCheckBox253:setTop(4);
    obj.imageCheckBox253:setWidth(15);
    obj.imageCheckBox253:setHeight(15);
    obj.imageCheckBox253:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox253:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox253:setName("imageCheckBox253");

    obj.imageCheckBox254 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox254:setParent(obj.layout79);
    obj.imageCheckBox254:setField("2_4");
    obj.imageCheckBox254:setLeft(191);
    obj.imageCheckBox254:setTop(4);
    obj.imageCheckBox254:setWidth(15);
    obj.imageCheckBox254:setHeight(15);
    obj.imageCheckBox254:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox254:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox254:setName("imageCheckBox254");

    obj.imageCheckBox255 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox255:setParent(obj.layout79);
    obj.imageCheckBox255:setField("2_5");
    obj.imageCheckBox255:setLeft(209);
    obj.imageCheckBox255:setTop(4);
    obj.imageCheckBox255:setWidth(15);
    obj.imageCheckBox255:setHeight(15);
    obj.imageCheckBox255:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox255:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox255:setName("imageCheckBox255");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.layout77);
    obj.layout80:setLeft(10);
    obj.layout80:setTop(113);
    obj.layout80:setWidth(245);
    obj.layout80:setHeight(40);
    obj.layout80:setName("layout80");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout80);
    obj.label69:setAutoSize(true);
    obj.label69:setText("Coragem");
    obj.label69:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label69, "fontStyle",  "bold");
    obj.label69:setFontColor("Black");
    obj.label69:setName("label69");

    obj.imageCheckBox256 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox256:setParent(obj.layout80);
    obj.imageCheckBox256:setField("3_1");
    obj.imageCheckBox256:setLeft(137);
    obj.imageCheckBox256:setTop(4);
    obj.imageCheckBox256:setWidth(15);
    obj.imageCheckBox256:setHeight(15);
    obj.imageCheckBox256:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox256:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox256:setName("imageCheckBox256");

    obj.imageCheckBox257 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox257:setParent(obj.layout80);
    obj.imageCheckBox257:setField("3_2");
    obj.imageCheckBox257:setLeft(155);
    obj.imageCheckBox257:setTop(4);
    obj.imageCheckBox257:setWidth(15);
    obj.imageCheckBox257:setHeight(15);
    obj.imageCheckBox257:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox257:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox257:setName("imageCheckBox257");

    obj.imageCheckBox258 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox258:setParent(obj.layout80);
    obj.imageCheckBox258:setField("3_3");
    obj.imageCheckBox258:setLeft(173);
    obj.imageCheckBox258:setTop(4);
    obj.imageCheckBox258:setWidth(15);
    obj.imageCheckBox258:setHeight(15);
    obj.imageCheckBox258:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox258:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox258:setName("imageCheckBox258");

    obj.imageCheckBox259 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox259:setParent(obj.layout80);
    obj.imageCheckBox259:setField("3_4");
    obj.imageCheckBox259:setLeft(191);
    obj.imageCheckBox259:setTop(4);
    obj.imageCheckBox259:setWidth(15);
    obj.imageCheckBox259:setHeight(15);
    obj.imageCheckBox259:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox259:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox259:setName("imageCheckBox259");

    obj.imageCheckBox260 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox260:setParent(obj.layout80);
    obj.imageCheckBox260:setField("3_5");
    obj.imageCheckBox260:setLeft(209);
    obj.imageCheckBox260:setTop(4);
    obj.imageCheckBox260:setWidth(15);
    obj.imageCheckBox260:setHeight(15);
    obj.imageCheckBox260:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox260:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox260:setName("imageCheckBox260");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.scrollBox1);
    obj.layout81:setTop(840);
    obj.layout81:setWidth(880);
    obj.layout81:setHeight(300);
    obj.layout81:setName("layout81");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout81);
    obj.label70:setLeft(115);
    obj.label70:setTop(30);
    obj.label70:setWidth(95);
    obj.label70:setHeight(20);
    obj.label70:setText("Qualidades/");
    obj.label70:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setFontColor("Black");
    obj.label70:setName("label70");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout81);
    obj.label71:setLeft(125);
    obj.label71:setTop(45);
    obj.label71:setWidth(95);
    obj.label71:setHeight(20);
    obj.label71:setText("Defeitos");
    obj.label71:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontColor("Black");
    obj.label71:setName("label71");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout81);
    obj.label72:setLeft(415);
    obj.label72:setTop(30);
    obj.label72:setWidth(95);
    obj.label72:setHeight(20);
    obj.label72:setText("Humanidade/");
    obj.label72:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setFontColor("Black");
    obj.label72:setName("label72");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout81);
    obj.label73:setLeft(435);
    obj.label73:setTop(45);
    obj.label73:setWidth(80);
    obj.label73:setHeight(20);
    obj.label73:setText("Trilha");
    obj.label73:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setFontColor("Black");
    obj.label73:setName("label73");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout81);
    obj.label74:setLeft(405);
    obj.label74:setTop(100);
    obj.label74:setWidth(130);
    obj.label74:setHeight(20);
    obj.label74:setText("Força de Vontade");
    obj.label74:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setFontColor("Black");
    obj.label74:setName("label74");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout81);
    obj.label75:setLeft(405);
    obj.label75:setTop(155);
    obj.label75:setWidth(130);
    obj.label75:setHeight(20);
    obj.label75:setText("Pontos de Sangue");
    obj.label75:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setFontColor("Black");
    obj.label75:setName("label75");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout81);
    obj.label76:setLeft(710);
    obj.label76:setTop(30);
    obj.label76:setWidth(80);
    obj.label76:setHeight(20);
    obj.label76:setText("Vitalidade");
    obj.label76:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setFontColor("Black");
    obj.label76:setName("label76");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout81);
    obj.label77:setLeft(705);
    obj.label77:setTop(210);
    obj.label77:setWidth(80);
    obj.label77:setHeight(20);
    obj.label77:setText("Experiência");
    obj.label77:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setFontColor("Black");
    obj.label77:setName("label77");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.layout81);
    obj.layout82:setTop(60);
    obj.layout82:setWidth(300);
    obj.layout82:setHeight(250);
    obj.layout82:setName("layout82");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout82);
    obj.textEditor1:setLeft(40);
    obj.textEditor1:setTop(10);
    obj.textEditor1:setWidth(230);
    obj.textEditor1:setHeight(90);
    obj.textEditor1:setField("qualidades");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout82);
    obj.textEditor2:setLeft(40);
    obj.textEditor2:setTop(115);
    obj.textEditor2:setWidth(230);
    obj.textEditor2:setHeight(90);
    obj.textEditor2:setField("defeitos");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.layout81);
    obj.layout83:setLeft(200);
    obj.layout83:setTop(40);
    obj.layout83:setWidth(880);
    obj.layout83:setHeight(300);
    obj.layout83:setName("layout83");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.layout83);
    obj.layout84:setLeft(27);
    obj.layout84:setTop(30);
    obj.layout84:setWidth(330);
    obj.layout84:setHeight(25);
    obj.layout84:setName("layout84");

    obj.imageCheckBox261 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox261:setParent(obj.layout84);
    obj.imageCheckBox261:setField("humanidade1_1");
    obj.imageCheckBox261:setLeft(137);
    obj.imageCheckBox261:setTop(4);
    obj.imageCheckBox261:setWidth(15);
    obj.imageCheckBox261:setHeight(15);
    obj.imageCheckBox261:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox261:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox261:setName("imageCheckBox261");

    obj.imageCheckBox262 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox262:setParent(obj.layout84);
    obj.imageCheckBox262:setField("humanidade1_2");
    obj.imageCheckBox262:setLeft(155);
    obj.imageCheckBox262:setTop(4);
    obj.imageCheckBox262:setWidth(15);
    obj.imageCheckBox262:setHeight(15);
    obj.imageCheckBox262:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox262:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox262:setName("imageCheckBox262");

    obj.imageCheckBox263 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox263:setParent(obj.layout84);
    obj.imageCheckBox263:setField("humanidade1_3");
    obj.imageCheckBox263:setLeft(173);
    obj.imageCheckBox263:setTop(4);
    obj.imageCheckBox263:setWidth(15);
    obj.imageCheckBox263:setHeight(15);
    obj.imageCheckBox263:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox263:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox263:setName("imageCheckBox263");

    obj.imageCheckBox264 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox264:setParent(obj.layout84);
    obj.imageCheckBox264:setField("humanidade1_4");
    obj.imageCheckBox264:setLeft(191);
    obj.imageCheckBox264:setTop(4);
    obj.imageCheckBox264:setWidth(15);
    obj.imageCheckBox264:setHeight(15);
    obj.imageCheckBox264:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox264:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox264:setName("imageCheckBox264");

    obj.imageCheckBox265 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox265:setParent(obj.layout84);
    obj.imageCheckBox265:setField("humanidade1_5");
    obj.imageCheckBox265:setLeft(209);
    obj.imageCheckBox265:setTop(4);
    obj.imageCheckBox265:setWidth(15);
    obj.imageCheckBox265:setHeight(15);
    obj.imageCheckBox265:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox265:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox265:setName("imageCheckBox265");

    obj.imageCheckBox266 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox266:setParent(obj.layout84);
    obj.imageCheckBox266:setField("humanidade1_6");
    obj.imageCheckBox266:setLeft(227);
    obj.imageCheckBox266:setTop(4);
    obj.imageCheckBox266:setWidth(15);
    obj.imageCheckBox266:setHeight(15);
    obj.imageCheckBox266:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox266:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox266:setName("imageCheckBox266");

    obj.imageCheckBox267 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox267:setParent(obj.layout84);
    obj.imageCheckBox267:setField("humanidade1_7");
    obj.imageCheckBox267:setLeft(245);
    obj.imageCheckBox267:setTop(4);
    obj.imageCheckBox267:setWidth(15);
    obj.imageCheckBox267:setHeight(15);
    obj.imageCheckBox267:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox267:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox267:setName("imageCheckBox267");

    obj.imageCheckBox268 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox268:setParent(obj.layout84);
    obj.imageCheckBox268:setField("humanidade1_8");
    obj.imageCheckBox268:setLeft(263);
    obj.imageCheckBox268:setTop(4);
    obj.imageCheckBox268:setWidth(15);
    obj.imageCheckBox268:setHeight(15);
    obj.imageCheckBox268:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox268:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox268:setName("imageCheckBox268");

    obj.imageCheckBox269 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox269:setParent(obj.layout84);
    obj.imageCheckBox269:setField("humanidade1_9");
    obj.imageCheckBox269:setLeft(281);
    obj.imageCheckBox269:setTop(4);
    obj.imageCheckBox269:setWidth(15);
    obj.imageCheckBox269:setHeight(15);
    obj.imageCheckBox269:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox269:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox269:setName("imageCheckBox269");

    obj.imageCheckBox270 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox270:setParent(obj.layout84);
    obj.imageCheckBox270:setField("humanidade1_10");
    obj.imageCheckBox270:setLeft(299);
    obj.imageCheckBox270:setTop(4);
    obj.imageCheckBox270:setWidth(15);
    obj.imageCheckBox270:setHeight(15);
    obj.imageCheckBox270:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox270:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox270:setName("imageCheckBox270");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.layout83);
    obj.layout85:setLeft(27);
    obj.layout85:setTop(85);
    obj.layout85:setWidth(330);
    obj.layout85:setHeight(25);
    obj.layout85:setName("layout85");

    obj.imageCheckBox271 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox271:setParent(obj.layout85);
    obj.imageCheckBox271:setField("fdv1_1");
    obj.imageCheckBox271:setLeft(137);
    obj.imageCheckBox271:setTop(4);
    obj.imageCheckBox271:setWidth(15);
    obj.imageCheckBox271:setHeight(15);
    obj.imageCheckBox271:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox271:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox271:setName("imageCheckBox271");

    obj.imageCheckBox272 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox272:setParent(obj.layout85);
    obj.imageCheckBox272:setField("fdv1_2");
    obj.imageCheckBox272:setLeft(155);
    obj.imageCheckBox272:setTop(4);
    obj.imageCheckBox272:setWidth(15);
    obj.imageCheckBox272:setHeight(15);
    obj.imageCheckBox272:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox272:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox272:setName("imageCheckBox272");

    obj.imageCheckBox273 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox273:setParent(obj.layout85);
    obj.imageCheckBox273:setField("fdv1_3");
    obj.imageCheckBox273:setLeft(173);
    obj.imageCheckBox273:setTop(4);
    obj.imageCheckBox273:setWidth(15);
    obj.imageCheckBox273:setHeight(15);
    obj.imageCheckBox273:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox273:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox273:setName("imageCheckBox273");

    obj.imageCheckBox274 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox274:setParent(obj.layout85);
    obj.imageCheckBox274:setField("fdv1_4");
    obj.imageCheckBox274:setLeft(191);
    obj.imageCheckBox274:setTop(4);
    obj.imageCheckBox274:setWidth(15);
    obj.imageCheckBox274:setHeight(15);
    obj.imageCheckBox274:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox274:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox274:setName("imageCheckBox274");

    obj.imageCheckBox275 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox275:setParent(obj.layout85);
    obj.imageCheckBox275:setField("fdv1_5");
    obj.imageCheckBox275:setLeft(209);
    obj.imageCheckBox275:setTop(4);
    obj.imageCheckBox275:setWidth(15);
    obj.imageCheckBox275:setHeight(15);
    obj.imageCheckBox275:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox275:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox275:setName("imageCheckBox275");

    obj.imageCheckBox276 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox276:setParent(obj.layout85);
    obj.imageCheckBox276:setField("fdv1_6");
    obj.imageCheckBox276:setLeft(227);
    obj.imageCheckBox276:setTop(4);
    obj.imageCheckBox276:setWidth(15);
    obj.imageCheckBox276:setHeight(15);
    obj.imageCheckBox276:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox276:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox276:setName("imageCheckBox276");

    obj.imageCheckBox277 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox277:setParent(obj.layout85);
    obj.imageCheckBox277:setField("fdv1_7");
    obj.imageCheckBox277:setLeft(245);
    obj.imageCheckBox277:setTop(4);
    obj.imageCheckBox277:setWidth(15);
    obj.imageCheckBox277:setHeight(15);
    obj.imageCheckBox277:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox277:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox277:setName("imageCheckBox277");

    obj.imageCheckBox278 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox278:setParent(obj.layout85);
    obj.imageCheckBox278:setField("fdv1_8");
    obj.imageCheckBox278:setLeft(263);
    obj.imageCheckBox278:setTop(4);
    obj.imageCheckBox278:setWidth(15);
    obj.imageCheckBox278:setHeight(15);
    obj.imageCheckBox278:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox278:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox278:setName("imageCheckBox278");

    obj.imageCheckBox279 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox279:setParent(obj.layout85);
    obj.imageCheckBox279:setField("fdv1_9");
    obj.imageCheckBox279:setLeft(281);
    obj.imageCheckBox279:setTop(4);
    obj.imageCheckBox279:setWidth(15);
    obj.imageCheckBox279:setHeight(15);
    obj.imageCheckBox279:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox279:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox279:setName("imageCheckBox279");

    obj.imageCheckBox280 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox280:setParent(obj.layout85);
    obj.imageCheckBox280:setField("fdv1_10");
    obj.imageCheckBox280:setLeft(299);
    obj.imageCheckBox280:setTop(4);
    obj.imageCheckBox280:setWidth(15);
    obj.imageCheckBox280:setHeight(15);
    obj.imageCheckBox280:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox280:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox280:setName("imageCheckBox280");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.layout83);
    obj.layout86:setLeft(27);
    obj.layout86:setTop(135);
    obj.layout86:setWidth(330);
    obj.layout86:setHeight(260);
    obj.layout86:setName("layout86");

    obj.imageCheckBox281 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox281:setParent(obj.layout86);
    obj.imageCheckBox281:setField("1_1");
    obj.imageCheckBox281:setLeft(137);
    obj.imageCheckBox281:setTop(4);
    obj.imageCheckBox281:setWidth(15);
    obj.imageCheckBox281:setHeight(15);
    obj.imageCheckBox281:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox281:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox281:setName("imageCheckBox281");

    obj.imageCheckBox282 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox282:setParent(obj.layout86);
    obj.imageCheckBox282:setField("1_2");
    obj.imageCheckBox282:setLeft(155);
    obj.imageCheckBox282:setTop(4);
    obj.imageCheckBox282:setWidth(15);
    obj.imageCheckBox282:setHeight(15);
    obj.imageCheckBox282:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox282:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox282:setName("imageCheckBox282");

    obj.imageCheckBox283 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox283:setParent(obj.layout86);
    obj.imageCheckBox283:setField("1_3");
    obj.imageCheckBox283:setLeft(173);
    obj.imageCheckBox283:setTop(4);
    obj.imageCheckBox283:setWidth(15);
    obj.imageCheckBox283:setHeight(15);
    obj.imageCheckBox283:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox283:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox283:setName("imageCheckBox283");

    obj.imageCheckBox284 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox284:setParent(obj.layout86);
    obj.imageCheckBox284:setField("1_4");
    obj.imageCheckBox284:setLeft(191);
    obj.imageCheckBox284:setTop(4);
    obj.imageCheckBox284:setWidth(15);
    obj.imageCheckBox284:setHeight(15);
    obj.imageCheckBox284:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox284:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox284:setName("imageCheckBox284");

    obj.imageCheckBox285 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox285:setParent(obj.layout86);
    obj.imageCheckBox285:setField("1_5");
    obj.imageCheckBox285:setLeft(209);
    obj.imageCheckBox285:setTop(4);
    obj.imageCheckBox285:setWidth(15);
    obj.imageCheckBox285:setHeight(15);
    obj.imageCheckBox285:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox285:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox285:setName("imageCheckBox285");

    obj.imageCheckBox286 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox286:setParent(obj.layout86);
    obj.imageCheckBox286:setField("1_6");
    obj.imageCheckBox286:setLeft(227);
    obj.imageCheckBox286:setTop(4);
    obj.imageCheckBox286:setWidth(15);
    obj.imageCheckBox286:setHeight(15);
    obj.imageCheckBox286:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox286:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox286:setName("imageCheckBox286");

    obj.imageCheckBox287 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox287:setParent(obj.layout86);
    obj.imageCheckBox287:setField("1_7");
    obj.imageCheckBox287:setLeft(245);
    obj.imageCheckBox287:setTop(4);
    obj.imageCheckBox287:setWidth(15);
    obj.imageCheckBox287:setHeight(15);
    obj.imageCheckBox287:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox287:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox287:setName("imageCheckBox287");

    obj.imageCheckBox288 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox288:setParent(obj.layout86);
    obj.imageCheckBox288:setField("1_8");
    obj.imageCheckBox288:setLeft(263);
    obj.imageCheckBox288:setTop(4);
    obj.imageCheckBox288:setWidth(15);
    obj.imageCheckBox288:setHeight(15);
    obj.imageCheckBox288:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox288:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox288:setName("imageCheckBox288");

    obj.imageCheckBox289 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox289:setParent(obj.layout86);
    obj.imageCheckBox289:setField("1_9");
    obj.imageCheckBox289:setLeft(281);
    obj.imageCheckBox289:setTop(4);
    obj.imageCheckBox289:setWidth(15);
    obj.imageCheckBox289:setHeight(15);
    obj.imageCheckBox289:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox289:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox289:setName("imageCheckBox289");

    obj.imageCheckBox290 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox290:setParent(obj.layout86);
    obj.imageCheckBox290:setField("1_10");
    obj.imageCheckBox290:setLeft(299);
    obj.imageCheckBox290:setTop(4);
    obj.imageCheckBox290:setWidth(15);
    obj.imageCheckBox290:setHeight(15);
    obj.imageCheckBox290:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox290:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox290:setName("imageCheckBox290");

    obj.imageCheckBox291 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox291:setParent(obj.layout86);
    obj.imageCheckBox291:setField("1_11");
    obj.imageCheckBox291:setLeft(137);
    obj.imageCheckBox291:setTop(22);
    obj.imageCheckBox291:setWidth(15);
    obj.imageCheckBox291:setHeight(15);
    obj.imageCheckBox291:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox291:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox291:setName("imageCheckBox291");

    obj.imageCheckBox292 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox292:setParent(obj.layout86);
    obj.imageCheckBox292:setField("1_12");
    obj.imageCheckBox292:setLeft(155);
    obj.imageCheckBox292:setTop(22);
    obj.imageCheckBox292:setWidth(15);
    obj.imageCheckBox292:setHeight(15);
    obj.imageCheckBox292:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox292:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox292:setName("imageCheckBox292");

    obj.imageCheckBox293 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox293:setParent(obj.layout86);
    obj.imageCheckBox293:setField("1_13");
    obj.imageCheckBox293:setLeft(173);
    obj.imageCheckBox293:setTop(22);
    obj.imageCheckBox293:setWidth(15);
    obj.imageCheckBox293:setHeight(15);
    obj.imageCheckBox293:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox293:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox293:setName("imageCheckBox293");

    obj.imageCheckBox294 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox294:setParent(obj.layout86);
    obj.imageCheckBox294:setField("1_14");
    obj.imageCheckBox294:setLeft(191);
    obj.imageCheckBox294:setTop(22);
    obj.imageCheckBox294:setWidth(15);
    obj.imageCheckBox294:setHeight(15);
    obj.imageCheckBox294:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox294:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox294:setName("imageCheckBox294");

    obj.imageCheckBox295 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox295:setParent(obj.layout86);
    obj.imageCheckBox295:setField("1_15");
    obj.imageCheckBox295:setLeft(209);
    obj.imageCheckBox295:setTop(22);
    obj.imageCheckBox295:setWidth(15);
    obj.imageCheckBox295:setHeight(15);
    obj.imageCheckBox295:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox295:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox295:setName("imageCheckBox295");

    obj.imageCheckBox296 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox296:setParent(obj.layout86);
    obj.imageCheckBox296:setField("1_16");
    obj.imageCheckBox296:setLeft(227);
    obj.imageCheckBox296:setTop(22);
    obj.imageCheckBox296:setWidth(15);
    obj.imageCheckBox296:setHeight(15);
    obj.imageCheckBox296:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox296:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox296:setName("imageCheckBox296");

    obj.imageCheckBox297 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox297:setParent(obj.layout86);
    obj.imageCheckBox297:setField("1_17");
    obj.imageCheckBox297:setLeft(245);
    obj.imageCheckBox297:setTop(22);
    obj.imageCheckBox297:setWidth(15);
    obj.imageCheckBox297:setHeight(15);
    obj.imageCheckBox297:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox297:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox297:setName("imageCheckBox297");

    obj.imageCheckBox298 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox298:setParent(obj.layout86);
    obj.imageCheckBox298:setField("1_18");
    obj.imageCheckBox298:setLeft(263);
    obj.imageCheckBox298:setTop(22);
    obj.imageCheckBox298:setWidth(15);
    obj.imageCheckBox298:setHeight(15);
    obj.imageCheckBox298:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox298:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox298:setName("imageCheckBox298");

    obj.imageCheckBox299 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox299:setParent(obj.layout86);
    obj.imageCheckBox299:setField("1_19");
    obj.imageCheckBox299:setLeft(281);
    obj.imageCheckBox299:setTop(22);
    obj.imageCheckBox299:setWidth(15);
    obj.imageCheckBox299:setHeight(15);
    obj.imageCheckBox299:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox299:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox299:setName("imageCheckBox299");

    obj.imageCheckBox300 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox300:setParent(obj.layout86);
    obj.imageCheckBox300:setField("1_20");
    obj.imageCheckBox300:setLeft(299);
    obj.imageCheckBox300:setTop(22);
    obj.imageCheckBox300:setWidth(15);
    obj.imageCheckBox300:setHeight(15);
    obj.imageCheckBox300:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox300:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox300:setName("imageCheckBox300");

    obj.imageCheckBox301 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox301:setParent(obj.layout86);
    obj.imageCheckBox301:setField("1_21");
    obj.imageCheckBox301:setLeft(137);
    obj.imageCheckBox301:setTop(40);
    obj.imageCheckBox301:setWidth(15);
    obj.imageCheckBox301:setHeight(15);
    obj.imageCheckBox301:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox301:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox301:setName("imageCheckBox301");

    obj.imageCheckBox302 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox302:setParent(obj.layout86);
    obj.imageCheckBox302:setField("1_22");
    obj.imageCheckBox302:setLeft(155);
    obj.imageCheckBox302:setTop(40);
    obj.imageCheckBox302:setWidth(15);
    obj.imageCheckBox302:setHeight(15);
    obj.imageCheckBox302:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox302:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox302:setName("imageCheckBox302");

    obj.imageCheckBox303 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox303:setParent(obj.layout86);
    obj.imageCheckBox303:setField("1_23");
    obj.imageCheckBox303:setLeft(173);
    obj.imageCheckBox303:setTop(40);
    obj.imageCheckBox303:setWidth(15);
    obj.imageCheckBox303:setHeight(15);
    obj.imageCheckBox303:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox303:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox303:setName("imageCheckBox303");

    obj.imageCheckBox304 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox304:setParent(obj.layout86);
    obj.imageCheckBox304:setField("1_24");
    obj.imageCheckBox304:setLeft(191);
    obj.imageCheckBox304:setTop(40);
    obj.imageCheckBox304:setWidth(15);
    obj.imageCheckBox304:setHeight(15);
    obj.imageCheckBox304:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox304:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox304:setName("imageCheckBox304");

    obj.imageCheckBox305 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox305:setParent(obj.layout86);
    obj.imageCheckBox305:setField("1_25");
    obj.imageCheckBox305:setLeft(209);
    obj.imageCheckBox305:setTop(40);
    obj.imageCheckBox305:setWidth(15);
    obj.imageCheckBox305:setHeight(15);
    obj.imageCheckBox305:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox305:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox305:setName("imageCheckBox305");

    obj.imageCheckBox306 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox306:setParent(obj.layout86);
    obj.imageCheckBox306:setField("1_26");
    obj.imageCheckBox306:setLeft(227);
    obj.imageCheckBox306:setTop(40);
    obj.imageCheckBox306:setWidth(15);
    obj.imageCheckBox306:setHeight(15);
    obj.imageCheckBox306:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox306:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox306:setName("imageCheckBox306");

    obj.imageCheckBox307 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox307:setParent(obj.layout86);
    obj.imageCheckBox307:setField("1_27");
    obj.imageCheckBox307:setLeft(245);
    obj.imageCheckBox307:setTop(40);
    obj.imageCheckBox307:setWidth(15);
    obj.imageCheckBox307:setHeight(15);
    obj.imageCheckBox307:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox307:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox307:setName("imageCheckBox307");

    obj.imageCheckBox308 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox308:setParent(obj.layout86);
    obj.imageCheckBox308:setField("1_28");
    obj.imageCheckBox308:setLeft(263);
    obj.imageCheckBox308:setTop(40);
    obj.imageCheckBox308:setWidth(15);
    obj.imageCheckBox308:setHeight(15);
    obj.imageCheckBox308:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox308:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox308:setName("imageCheckBox308");

    obj.imageCheckBox309 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox309:setParent(obj.layout86);
    obj.imageCheckBox309:setField("1_29");
    obj.imageCheckBox309:setLeft(281);
    obj.imageCheckBox309:setTop(40);
    obj.imageCheckBox309:setWidth(15);
    obj.imageCheckBox309:setHeight(15);
    obj.imageCheckBox309:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox309:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox309:setName("imageCheckBox309");

    obj.imageCheckBox310 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox310:setParent(obj.layout86);
    obj.imageCheckBox310:setField("1_30");
    obj.imageCheckBox310:setLeft(299);
    obj.imageCheckBox310:setTop(40);
    obj.imageCheckBox310:setWidth(15);
    obj.imageCheckBox310:setHeight(15);
    obj.imageCheckBox310:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox310:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox310:setName("imageCheckBox310");

    obj.imageCheckBox311 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox311:setParent(obj.layout86);
    obj.imageCheckBox311:setField("1_31");
    obj.imageCheckBox311:setLeft(137);
    obj.imageCheckBox311:setTop(58);
    obj.imageCheckBox311:setWidth(15);
    obj.imageCheckBox311:setHeight(15);
    obj.imageCheckBox311:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox311:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox311:setName("imageCheckBox311");

    obj.imageCheckBox312 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox312:setParent(obj.layout86);
    obj.imageCheckBox312:setField("1_32");
    obj.imageCheckBox312:setLeft(155);
    obj.imageCheckBox312:setTop(58);
    obj.imageCheckBox312:setWidth(15);
    obj.imageCheckBox312:setHeight(15);
    obj.imageCheckBox312:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox312:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox312:setName("imageCheckBox312");

    obj.imageCheckBox313 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox313:setParent(obj.layout86);
    obj.imageCheckBox313:setField("1_33");
    obj.imageCheckBox313:setLeft(173);
    obj.imageCheckBox313:setTop(58);
    obj.imageCheckBox313:setWidth(15);
    obj.imageCheckBox313:setHeight(15);
    obj.imageCheckBox313:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox313:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox313:setName("imageCheckBox313");

    obj.imageCheckBox314 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox314:setParent(obj.layout86);
    obj.imageCheckBox314:setField("1_34");
    obj.imageCheckBox314:setLeft(191);
    obj.imageCheckBox314:setTop(58);
    obj.imageCheckBox314:setWidth(15);
    obj.imageCheckBox314:setHeight(15);
    obj.imageCheckBox314:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox314:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox314:setName("imageCheckBox314");

    obj.imageCheckBox315 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox315:setParent(obj.layout86);
    obj.imageCheckBox315:setField("1_35");
    obj.imageCheckBox315:setLeft(209);
    obj.imageCheckBox315:setTop(58);
    obj.imageCheckBox315:setWidth(15);
    obj.imageCheckBox315:setHeight(15);
    obj.imageCheckBox315:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox315:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox315:setName("imageCheckBox315");

    obj.imageCheckBox316 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox316:setParent(obj.layout86);
    obj.imageCheckBox316:setField("1_36");
    obj.imageCheckBox316:setLeft(227);
    obj.imageCheckBox316:setTop(58);
    obj.imageCheckBox316:setWidth(15);
    obj.imageCheckBox316:setHeight(15);
    obj.imageCheckBox316:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox316:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox316:setName("imageCheckBox316");

    obj.imageCheckBox317 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox317:setParent(obj.layout86);
    obj.imageCheckBox317:setField("1_37");
    obj.imageCheckBox317:setLeft(245);
    obj.imageCheckBox317:setTop(58);
    obj.imageCheckBox317:setWidth(15);
    obj.imageCheckBox317:setHeight(15);
    obj.imageCheckBox317:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox317:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox317:setName("imageCheckBox317");

    obj.imageCheckBox318 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox318:setParent(obj.layout86);
    obj.imageCheckBox318:setField("1_38");
    obj.imageCheckBox318:setLeft(263);
    obj.imageCheckBox318:setTop(58);
    obj.imageCheckBox318:setWidth(15);
    obj.imageCheckBox318:setHeight(15);
    obj.imageCheckBox318:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox318:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox318:setName("imageCheckBox318");

    obj.imageCheckBox319 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox319:setParent(obj.layout86);
    obj.imageCheckBox319:setField("1_39");
    obj.imageCheckBox319:setLeft(281);
    obj.imageCheckBox319:setTop(58);
    obj.imageCheckBox319:setWidth(15);
    obj.imageCheckBox319:setHeight(15);
    obj.imageCheckBox319:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox319:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox319:setName("imageCheckBox319");

    obj.imageCheckBox320 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox320:setParent(obj.layout86);
    obj.imageCheckBox320:setField("1_40");
    obj.imageCheckBox320:setLeft(299);
    obj.imageCheckBox320:setTop(58);
    obj.imageCheckBox320:setWidth(15);
    obj.imageCheckBox320:setHeight(15);
    obj.imageCheckBox320:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox320:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox320:setName("imageCheckBox320");

    obj.imageCheckBox321 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox321:setParent(obj.layout86);
    obj.imageCheckBox321:setField("1_41");
    obj.imageCheckBox321:setLeft(137);
    obj.imageCheckBox321:setTop(76);
    obj.imageCheckBox321:setWidth(15);
    obj.imageCheckBox321:setHeight(15);
    obj.imageCheckBox321:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox321:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox321:setName("imageCheckBox321");

    obj.imageCheckBox322 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox322:setParent(obj.layout86);
    obj.imageCheckBox322:setField("1_42");
    obj.imageCheckBox322:setLeft(155);
    obj.imageCheckBox322:setTop(76);
    obj.imageCheckBox322:setWidth(15);
    obj.imageCheckBox322:setHeight(15);
    obj.imageCheckBox322:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox322:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox322:setName("imageCheckBox322");

    obj.imageCheckBox323 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox323:setParent(obj.layout86);
    obj.imageCheckBox323:setField("1_43");
    obj.imageCheckBox323:setLeft(173);
    obj.imageCheckBox323:setTop(76);
    obj.imageCheckBox323:setWidth(15);
    obj.imageCheckBox323:setHeight(15);
    obj.imageCheckBox323:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox323:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox323:setName("imageCheckBox323");

    obj.imageCheckBox324 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox324:setParent(obj.layout86);
    obj.imageCheckBox324:setField("1_44");
    obj.imageCheckBox324:setLeft(191);
    obj.imageCheckBox324:setTop(76);
    obj.imageCheckBox324:setWidth(15);
    obj.imageCheckBox324:setHeight(15);
    obj.imageCheckBox324:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox324:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox324:setName("imageCheckBox324");

    obj.imageCheckBox325 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox325:setParent(obj.layout86);
    obj.imageCheckBox325:setField("1_45");
    obj.imageCheckBox325:setLeft(209);
    obj.imageCheckBox325:setTop(76);
    obj.imageCheckBox325:setWidth(15);
    obj.imageCheckBox325:setHeight(15);
    obj.imageCheckBox325:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox325:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox325:setName("imageCheckBox325");

    obj.imageCheckBox326 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox326:setParent(obj.layout86);
    obj.imageCheckBox326:setField("1_46");
    obj.imageCheckBox326:setLeft(227);
    obj.imageCheckBox326:setTop(76);
    obj.imageCheckBox326:setWidth(15);
    obj.imageCheckBox326:setHeight(15);
    obj.imageCheckBox326:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox326:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox326:setName("imageCheckBox326");

    obj.imageCheckBox327 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox327:setParent(obj.layout86);
    obj.imageCheckBox327:setField("1_47");
    obj.imageCheckBox327:setLeft(245);
    obj.imageCheckBox327:setTop(76);
    obj.imageCheckBox327:setWidth(15);
    obj.imageCheckBox327:setHeight(15);
    obj.imageCheckBox327:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox327:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox327:setName("imageCheckBox327");

    obj.imageCheckBox328 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox328:setParent(obj.layout86);
    obj.imageCheckBox328:setField("1_48");
    obj.imageCheckBox328:setLeft(263);
    obj.imageCheckBox328:setTop(76);
    obj.imageCheckBox328:setWidth(15);
    obj.imageCheckBox328:setHeight(15);
    obj.imageCheckBox328:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox328:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox328:setName("imageCheckBox328");

    obj.imageCheckBox329 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox329:setParent(obj.layout86);
    obj.imageCheckBox329:setField("1_49");
    obj.imageCheckBox329:setLeft(281);
    obj.imageCheckBox329:setTop(76);
    obj.imageCheckBox329:setWidth(15);
    obj.imageCheckBox329:setHeight(15);
    obj.imageCheckBox329:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox329:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox329:setName("imageCheckBox329");

    obj.imageCheckBox330 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox330:setParent(obj.layout86);
    obj.imageCheckBox330:setField("1_50");
    obj.imageCheckBox330:setLeft(299);
    obj.imageCheckBox330:setTop(76);
    obj.imageCheckBox330:setWidth(15);
    obj.imageCheckBox330:setHeight(15);
    obj.imageCheckBox330:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox330:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox330:setName("imageCheckBox330");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.layout81);
    obj.layout87:setLeft(630);
    obj.layout87:setTop(60);
    obj.layout87:setWidth(880);
    obj.layout87:setHeight(300);
    obj.layout87:setName("layout87");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout87);
    obj.label78:setAutoSize(true);
    obj.label78:setText("Escoriado");
    obj.label78:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setFontColor("Black");
    obj.label78:setName("label78");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout87);
    obj.checkBox1:setField("escoridado_1");
    obj.checkBox1:setLeft(187);
    obj.checkBox1:setTop(0);
    obj.checkBox1:setWidth(20);
    obj.checkBox1:setHeight(20);
    obj.checkBox1:setName("checkBox1");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout87);
    obj.checkBox2:setField("escoridado_2");
    obj.checkBox2:setLeft(205);
    obj.checkBox2:setTop(0);
    obj.checkBox2:setWidth(20);
    obj.checkBox2:setHeight(20);
    obj.checkBox2:setName("checkBox2");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.layout81);
    obj.layout88:setLeft(630);
    obj.layout88:setTop(80);
    obj.layout88:setWidth(880);
    obj.layout88:setHeight(300);
    obj.layout88:setName("layout88");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout88);
    obj.label79:setAutoSize(true);
    obj.label79:setText("Machucado (-1)");
    obj.label79:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label79, "fontStyle",  "bold");
    obj.label79:setFontColor("Black");
    obj.label79:setName("label79");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout88);
    obj.checkBox3:setField("machucado_1");
    obj.checkBox3:setLeft(187);
    obj.checkBox3:setTop(0);
    obj.checkBox3:setWidth(20);
    obj.checkBox3:setHeight(20);
    obj.checkBox3:setName("checkBox3");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout88);
    obj.checkBox4:setField("machucado_2");
    obj.checkBox4:setLeft(205);
    obj.checkBox4:setTop(0);
    obj.checkBox4:setWidth(20);
    obj.checkBox4:setHeight(20);
    obj.checkBox4:setName("checkBox4");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.layout81);
    obj.layout89:setLeft(630);
    obj.layout89:setTop(100);
    obj.layout89:setWidth(880);
    obj.layout89:setHeight(300);
    obj.layout89:setName("layout89");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout89);
    obj.label80:setAutoSize(true);
    obj.label80:setText("Ferido (-1)");
    obj.label80:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setFontColor("Black");
    obj.label80:setName("label80");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout89);
    obj.checkBox5:setField("ferido_1");
    obj.checkBox5:setLeft(187);
    obj.checkBox5:setTop(0);
    obj.checkBox5:setWidth(20);
    obj.checkBox5:setHeight(20);
    obj.checkBox5:setName("checkBox5");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout89);
    obj.checkBox6:setField("ferido_2");
    obj.checkBox6:setLeft(205);
    obj.checkBox6:setTop(0);
    obj.checkBox6:setWidth(20);
    obj.checkBox6:setHeight(20);
    obj.checkBox6:setName("checkBox6");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.layout81);
    obj.layout90:setLeft(630);
    obj.layout90:setTop(120);
    obj.layout90:setWidth(880);
    obj.layout90:setHeight(300);
    obj.layout90:setName("layout90");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout90);
    obj.label81:setText("Ferido Gravemente (-2)");
    obj.label81:setHorzTextAlign("leading");
    obj.label81:setWidth(160);
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setFontColor("Black");
    obj.label81:setName("label81");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout90);
    obj.checkBox7:setField("feridog_1");
    obj.checkBox7:setLeft(187);
    obj.checkBox7:setTop(0);
    obj.checkBox7:setWidth(20);
    obj.checkBox7:setHeight(20);
    obj.checkBox7:setName("checkBox7");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout90);
    obj.checkBox8:setField("feridog_2");
    obj.checkBox8:setLeft(205);
    obj.checkBox8:setTop(0);
    obj.checkBox8:setWidth(20);
    obj.checkBox8:setHeight(20);
    obj.checkBox8:setName("checkBox8");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.layout81);
    obj.layout91:setLeft(630);
    obj.layout91:setTop(140);
    obj.layout91:setWidth(880);
    obj.layout91:setHeight(300);
    obj.layout91:setName("layout91");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout91);
    obj.label82:setAutoSize(true);
    obj.label82:setText("Espancado (-2)");
    obj.label82:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label82, "fontStyle",  "bold");
    obj.label82:setFontColor("Black");
    obj.label82:setName("label82");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.layout91);
    obj.checkBox9:setField("espancado_1");
    obj.checkBox9:setLeft(187);
    obj.checkBox9:setTop(0);
    obj.checkBox9:setWidth(20);
    obj.checkBox9:setHeight(20);
    obj.checkBox9:setName("checkBox9");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.layout91);
    obj.checkBox10:setField("espancado_2");
    obj.checkBox10:setLeft(205);
    obj.checkBox10:setTop(0);
    obj.checkBox10:setWidth(20);
    obj.checkBox10:setHeight(20);
    obj.checkBox10:setName("checkBox10");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.layout81);
    obj.layout92:setLeft(630);
    obj.layout92:setTop(160);
    obj.layout92:setWidth(880);
    obj.layout92:setHeight(300);
    obj.layout92:setName("layout92");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout92);
    obj.label83:setAutoSize(true);
    obj.label83:setText("Aleijado (-5)");
    obj.label83:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label83, "fontStyle",  "bold");
    obj.label83:setFontColor("Black");
    obj.label83:setName("label83");

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.layout92);
    obj.checkBox11:setField("aleijado_1");
    obj.checkBox11:setLeft(187);
    obj.checkBox11:setTop(0);
    obj.checkBox11:setWidth(20);
    obj.checkBox11:setHeight(20);
    obj.checkBox11:setName("checkBox11");

    obj.checkBox12 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.layout92);
    obj.checkBox12:setField("aleijado_2");
    obj.checkBox12:setLeft(205);
    obj.checkBox12:setTop(0);
    obj.checkBox12:setWidth(20);
    obj.checkBox12:setHeight(20);
    obj.checkBox12:setName("checkBox12");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.layout81);
    obj.layout93:setLeft(630);
    obj.layout93:setTop(180);
    obj.layout93:setWidth(880);
    obj.layout93:setHeight(300);
    obj.layout93:setName("layout93");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout93);
    obj.label84:setAutoSize(true);
    obj.label84:setText("Incapacitado");
    obj.label84:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setFontColor("Black");
    obj.label84:setName("label84");

    obj.checkBox13 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.layout93);
    obj.checkBox13:setField("incapacitado_1");
    obj.checkBox13:setLeft(187);
    obj.checkBox13:setTop(0);
    obj.checkBox13:setWidth(20);
    obj.checkBox13:setHeight(20);
    obj.checkBox13:setName("checkBox13");

    obj.checkBox14 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.layout93);
    obj.checkBox14:setField("incapacitado_2");
    obj.checkBox14:setLeft(205);
    obj.checkBox14:setTop(0);
    obj.checkBox14:setWidth(20);
    obj.checkBox14:setHeight(20);
    obj.checkBox14:setName("checkBox14");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.layout81);
    obj.layout94:setLeft(600);
    obj.layout94:setTop(240);
    obj.layout94:setWidth(880);
    obj.layout94:setHeight(300);
    obj.layout94:setName("layout94");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout94);
    obj.edit20:setLeft(30);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(220);
    obj.edit20:setHeight(25);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setField("experiencia");
    obj.edit20:setType("text");
    obj.edit20:setName("edit20");

    obj.frmCodigo1 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo1:setParent(obj.VampiroAMascara1);
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

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Pertences");
    obj.tab2:setName("tab2");

    obj.VampiroAMascara2 = GUI.fromHandle(_obj_newObject("form"));
    obj.VampiroAMascara2:setParent(obj.tab2);
    obj.VampiroAMascara2:setName("VampiroAMascara2");
    obj.VampiroAMascara2:setAlign("client");
    obj.VampiroAMascara2:setTheme("dark");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.VampiroAMascara2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.scrollBox2);
    obj.layout95:setLeft(0);
    obj.layout95:setTop(29);
    obj.layout95:setWidth(880);
    obj.layout95:setHeight(3);
    obj.layout95:setName("layout95");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout95);
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setColor("black");
    obj.rectangle16:setName("rectangle16");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox2);
    obj.image2:setTop(0);
    obj.image2:setLeft(285);
    obj.image2:setWidth(300);
    obj.image2:setHeight(250);
    obj.image2:setSRC("/VampiroAMascara/img/vampiro.png");
    obj.image2:setName("image2");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.scrollBox2);
    obj.layout96:setLeft(0);
    obj.layout96:setTop(200);
    obj.layout96:setWidth(880);
    obj.layout96:setHeight(3);
    obj.layout96:setName("layout96");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout96);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setColor("black");
    obj.rectangle17:setName("rectangle17");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.scrollBox2);
    obj.layout97:setTop(200);
    obj.layout97:setWidth(880);
    obj.layout97:setHeight(500);
    obj.layout97:setName("layout97");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout97);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setWidth(880);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setName("rectangle18");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout97);
    obj.label85:setLeft(350);
    obj.label85:setTop(2);
    obj.label85:setWidth(250);
    obj.label85:setHeight(20);
    obj.label85:setText("Outros Características");
    lfm_setPropAsString(obj.label85, "fontStyle",  "bold");
    obj.label85:setFontColor("White");
    obj.label85:setName("label85");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.layout97);
    obj.layout98:setLeft(0);
    obj.layout98:setTop(20);
    obj.layout98:setWidth(880);
    obj.layout98:setHeight(200);
    obj.layout98:setName("layout98");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.layout98);
    obj.layout99:setLeft(0);
    obj.layout99:setTop(10);
    obj.layout99:setWidth(290);
    obj.layout99:setHeight(25);
    obj.layout99:setName("layout99");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout99);
    obj.edit21:setLeft(40);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(135);
    obj.edit21:setHeight(25);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setField("1outras1");
    obj.edit21:setType("text");
    obj.edit21:setName("edit21");

    obj.imageCheckBox331 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox331:setParent(obj.layout99);
    obj.imageCheckBox331:setField("1outras1_1");
    obj.imageCheckBox331:setLeft(177);
    obj.imageCheckBox331:setTop(4);
    obj.imageCheckBox331:setWidth(15);
    obj.imageCheckBox331:setHeight(15);
    obj.imageCheckBox331:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox331:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox331:setName("imageCheckBox331");

    obj.imageCheckBox332 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox332:setParent(obj.layout99);
    obj.imageCheckBox332:setField("1outras1_2");
    obj.imageCheckBox332:setLeft(195);
    obj.imageCheckBox332:setTop(4);
    obj.imageCheckBox332:setWidth(15);
    obj.imageCheckBox332:setHeight(15);
    obj.imageCheckBox332:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox332:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox332:setName("imageCheckBox332");

    obj.imageCheckBox333 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox333:setParent(obj.layout99);
    obj.imageCheckBox333:setField("1outras1_3");
    obj.imageCheckBox333:setLeft(213);
    obj.imageCheckBox333:setTop(4);
    obj.imageCheckBox333:setWidth(15);
    obj.imageCheckBox333:setHeight(15);
    obj.imageCheckBox333:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox333:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox333:setName("imageCheckBox333");

    obj.imageCheckBox334 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox334:setParent(obj.layout99);
    obj.imageCheckBox334:setField("1outras1_4");
    obj.imageCheckBox334:setLeft(231);
    obj.imageCheckBox334:setTop(4);
    obj.imageCheckBox334:setWidth(15);
    obj.imageCheckBox334:setHeight(15);
    obj.imageCheckBox334:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox334:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox334:setName("imageCheckBox334");

    obj.imageCheckBox335 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox335:setParent(obj.layout99);
    obj.imageCheckBox335:setField("1outras1_5");
    obj.imageCheckBox335:setLeft(249);
    obj.imageCheckBox335:setTop(4);
    obj.imageCheckBox335:setWidth(15);
    obj.imageCheckBox335:setHeight(15);
    obj.imageCheckBox335:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox335:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox335:setName("imageCheckBox335");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.layout98);
    obj.layout100:setLeft(0);
    obj.layout100:setTop(35);
    obj.layout100:setWidth(290);
    obj.layout100:setHeight(25);
    obj.layout100:setName("layout100");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout100);
    obj.edit22:setLeft(40);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(135);
    obj.edit22:setHeight(25);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setField("1outras2");
    obj.edit22:setType("text");
    obj.edit22:setName("edit22");

    obj.imageCheckBox336 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox336:setParent(obj.layout100);
    obj.imageCheckBox336:setField("1outras2_1");
    obj.imageCheckBox336:setLeft(177);
    obj.imageCheckBox336:setTop(4);
    obj.imageCheckBox336:setWidth(15);
    obj.imageCheckBox336:setHeight(15);
    obj.imageCheckBox336:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox336:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox336:setName("imageCheckBox336");

    obj.imageCheckBox337 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox337:setParent(obj.layout100);
    obj.imageCheckBox337:setField("1outras2_2");
    obj.imageCheckBox337:setLeft(195);
    obj.imageCheckBox337:setTop(4);
    obj.imageCheckBox337:setWidth(15);
    obj.imageCheckBox337:setHeight(15);
    obj.imageCheckBox337:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox337:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox337:setName("imageCheckBox337");

    obj.imageCheckBox338 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox338:setParent(obj.layout100);
    obj.imageCheckBox338:setField("1outras2_3");
    obj.imageCheckBox338:setLeft(213);
    obj.imageCheckBox338:setTop(4);
    obj.imageCheckBox338:setWidth(15);
    obj.imageCheckBox338:setHeight(15);
    obj.imageCheckBox338:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox338:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox338:setName("imageCheckBox338");

    obj.imageCheckBox339 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox339:setParent(obj.layout100);
    obj.imageCheckBox339:setField("1outras2_4");
    obj.imageCheckBox339:setLeft(231);
    obj.imageCheckBox339:setTop(4);
    obj.imageCheckBox339:setWidth(15);
    obj.imageCheckBox339:setHeight(15);
    obj.imageCheckBox339:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox339:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox339:setName("imageCheckBox339");

    obj.imageCheckBox340 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox340:setParent(obj.layout100);
    obj.imageCheckBox340:setField("1outras2_5");
    obj.imageCheckBox340:setLeft(249);
    obj.imageCheckBox340:setTop(4);
    obj.imageCheckBox340:setWidth(15);
    obj.imageCheckBox340:setHeight(15);
    obj.imageCheckBox340:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox340:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox340:setName("imageCheckBox340");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.layout98);
    obj.layout101:setLeft(0);
    obj.layout101:setTop(60);
    obj.layout101:setWidth(290);
    obj.layout101:setHeight(25);
    obj.layout101:setName("layout101");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout101);
    obj.edit23:setLeft(40);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(135);
    obj.edit23:setHeight(25);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setField("1outras3");
    obj.edit23:setType("text");
    obj.edit23:setName("edit23");

    obj.imageCheckBox341 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox341:setParent(obj.layout101);
    obj.imageCheckBox341:setField("1outras3_1");
    obj.imageCheckBox341:setLeft(177);
    obj.imageCheckBox341:setTop(4);
    obj.imageCheckBox341:setWidth(15);
    obj.imageCheckBox341:setHeight(15);
    obj.imageCheckBox341:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox341:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox341:setName("imageCheckBox341");

    obj.imageCheckBox342 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox342:setParent(obj.layout101);
    obj.imageCheckBox342:setField("1outras3_2");
    obj.imageCheckBox342:setLeft(195);
    obj.imageCheckBox342:setTop(4);
    obj.imageCheckBox342:setWidth(15);
    obj.imageCheckBox342:setHeight(15);
    obj.imageCheckBox342:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox342:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox342:setName("imageCheckBox342");

    obj.imageCheckBox343 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox343:setParent(obj.layout101);
    obj.imageCheckBox343:setField("1outras3_3");
    obj.imageCheckBox343:setLeft(213);
    obj.imageCheckBox343:setTop(4);
    obj.imageCheckBox343:setWidth(15);
    obj.imageCheckBox343:setHeight(15);
    obj.imageCheckBox343:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox343:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox343:setName("imageCheckBox343");

    obj.imageCheckBox344 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox344:setParent(obj.layout101);
    obj.imageCheckBox344:setField("1outras3_4");
    obj.imageCheckBox344:setLeft(231);
    obj.imageCheckBox344:setTop(4);
    obj.imageCheckBox344:setWidth(15);
    obj.imageCheckBox344:setHeight(15);
    obj.imageCheckBox344:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox344:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox344:setName("imageCheckBox344");

    obj.imageCheckBox345 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox345:setParent(obj.layout101);
    obj.imageCheckBox345:setField("1outras3_5");
    obj.imageCheckBox345:setLeft(249);
    obj.imageCheckBox345:setTop(4);
    obj.imageCheckBox345:setWidth(15);
    obj.imageCheckBox345:setHeight(15);
    obj.imageCheckBox345:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox345:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox345:setName("imageCheckBox345");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.layout98);
    obj.layout102:setLeft(0);
    obj.layout102:setTop(85);
    obj.layout102:setWidth(290);
    obj.layout102:setHeight(25);
    obj.layout102:setName("layout102");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout102);
    obj.edit24:setLeft(40);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(135);
    obj.edit24:setHeight(25);
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setField("1outras4");
    obj.edit24:setType("text");
    obj.edit24:setName("edit24");

    obj.imageCheckBox346 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox346:setParent(obj.layout102);
    obj.imageCheckBox346:setField("1outras4_1");
    obj.imageCheckBox346:setLeft(177);
    obj.imageCheckBox346:setTop(4);
    obj.imageCheckBox346:setWidth(15);
    obj.imageCheckBox346:setHeight(15);
    obj.imageCheckBox346:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox346:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox346:setName("imageCheckBox346");

    obj.imageCheckBox347 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox347:setParent(obj.layout102);
    obj.imageCheckBox347:setField("1outras4_2");
    obj.imageCheckBox347:setLeft(195);
    obj.imageCheckBox347:setTop(4);
    obj.imageCheckBox347:setWidth(15);
    obj.imageCheckBox347:setHeight(15);
    obj.imageCheckBox347:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox347:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox347:setName("imageCheckBox347");

    obj.imageCheckBox348 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox348:setParent(obj.layout102);
    obj.imageCheckBox348:setField("1outras4_3");
    obj.imageCheckBox348:setLeft(213);
    obj.imageCheckBox348:setTop(4);
    obj.imageCheckBox348:setWidth(15);
    obj.imageCheckBox348:setHeight(15);
    obj.imageCheckBox348:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox348:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox348:setName("imageCheckBox348");

    obj.imageCheckBox349 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox349:setParent(obj.layout102);
    obj.imageCheckBox349:setField("1outras4_4");
    obj.imageCheckBox349:setLeft(231);
    obj.imageCheckBox349:setTop(4);
    obj.imageCheckBox349:setWidth(15);
    obj.imageCheckBox349:setHeight(15);
    obj.imageCheckBox349:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox349:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox349:setName("imageCheckBox349");

    obj.imageCheckBox350 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox350:setParent(obj.layout102);
    obj.imageCheckBox350:setField("1outras4_5");
    obj.imageCheckBox350:setLeft(249);
    obj.imageCheckBox350:setTop(4);
    obj.imageCheckBox350:setWidth(15);
    obj.imageCheckBox350:setHeight(15);
    obj.imageCheckBox350:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox350:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox350:setName("imageCheckBox350");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.layout98);
    obj.layout103:setLeft(0);
    obj.layout103:setTop(110);
    obj.layout103:setWidth(290);
    obj.layout103:setHeight(25);
    obj.layout103:setName("layout103");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout103);
    obj.edit25:setLeft(40);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(135);
    obj.edit25:setHeight(25);
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setField("1outras5");
    obj.edit25:setType("text");
    obj.edit25:setName("edit25");

    obj.imageCheckBox351 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox351:setParent(obj.layout103);
    obj.imageCheckBox351:setField("1outras5_1");
    obj.imageCheckBox351:setLeft(177);
    obj.imageCheckBox351:setTop(4);
    obj.imageCheckBox351:setWidth(15);
    obj.imageCheckBox351:setHeight(15);
    obj.imageCheckBox351:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox351:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox351:setName("imageCheckBox351");

    obj.imageCheckBox352 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox352:setParent(obj.layout103);
    obj.imageCheckBox352:setField("1outras5_2");
    obj.imageCheckBox352:setLeft(195);
    obj.imageCheckBox352:setTop(4);
    obj.imageCheckBox352:setWidth(15);
    obj.imageCheckBox352:setHeight(15);
    obj.imageCheckBox352:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox352:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox352:setName("imageCheckBox352");

    obj.imageCheckBox353 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox353:setParent(obj.layout103);
    obj.imageCheckBox353:setField("1outras5_3");
    obj.imageCheckBox353:setLeft(213);
    obj.imageCheckBox353:setTop(4);
    obj.imageCheckBox353:setWidth(15);
    obj.imageCheckBox353:setHeight(15);
    obj.imageCheckBox353:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox353:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox353:setName("imageCheckBox353");

    obj.imageCheckBox354 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox354:setParent(obj.layout103);
    obj.imageCheckBox354:setField("1outras5_4");
    obj.imageCheckBox354:setLeft(231);
    obj.imageCheckBox354:setTop(4);
    obj.imageCheckBox354:setWidth(15);
    obj.imageCheckBox354:setHeight(15);
    obj.imageCheckBox354:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox354:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox354:setName("imageCheckBox354");

    obj.imageCheckBox355 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox355:setParent(obj.layout103);
    obj.imageCheckBox355:setField("1outras5_5");
    obj.imageCheckBox355:setLeft(249);
    obj.imageCheckBox355:setTop(4);
    obj.imageCheckBox355:setWidth(15);
    obj.imageCheckBox355:setHeight(15);
    obj.imageCheckBox355:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox355:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox355:setName("imageCheckBox355");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.layout97);
    obj.layout104:setLeft(0);
    obj.layout104:setTop(20);
    obj.layout104:setWidth(880);
    obj.layout104:setHeight(200);
    obj.layout104:setName("layout104");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.layout104);
    obj.layout105:setLeft(300);
    obj.layout105:setTop(10);
    obj.layout105:setWidth(290);
    obj.layout105:setHeight(25);
    obj.layout105:setName("layout105");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout105);
    obj.edit26:setLeft(40);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(135);
    obj.edit26:setHeight(25);
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setField("2outras1");
    obj.edit26:setType("text");
    obj.edit26:setName("edit26");

    obj.imageCheckBox356 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox356:setParent(obj.layout105);
    obj.imageCheckBox356:setField("2outras1_1");
    obj.imageCheckBox356:setLeft(177);
    obj.imageCheckBox356:setTop(4);
    obj.imageCheckBox356:setWidth(15);
    obj.imageCheckBox356:setHeight(15);
    obj.imageCheckBox356:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox356:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox356:setName("imageCheckBox356");

    obj.imageCheckBox357 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox357:setParent(obj.layout105);
    obj.imageCheckBox357:setField("2outras1_2");
    obj.imageCheckBox357:setLeft(195);
    obj.imageCheckBox357:setTop(4);
    obj.imageCheckBox357:setWidth(15);
    obj.imageCheckBox357:setHeight(15);
    obj.imageCheckBox357:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox357:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox357:setName("imageCheckBox357");

    obj.imageCheckBox358 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox358:setParent(obj.layout105);
    obj.imageCheckBox358:setField("2outras1_3");
    obj.imageCheckBox358:setLeft(213);
    obj.imageCheckBox358:setTop(4);
    obj.imageCheckBox358:setWidth(15);
    obj.imageCheckBox358:setHeight(15);
    obj.imageCheckBox358:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox358:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox358:setName("imageCheckBox358");

    obj.imageCheckBox359 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox359:setParent(obj.layout105);
    obj.imageCheckBox359:setField("2outras1_4");
    obj.imageCheckBox359:setLeft(231);
    obj.imageCheckBox359:setTop(4);
    obj.imageCheckBox359:setWidth(15);
    obj.imageCheckBox359:setHeight(15);
    obj.imageCheckBox359:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox359:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox359:setName("imageCheckBox359");

    obj.imageCheckBox360 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox360:setParent(obj.layout105);
    obj.imageCheckBox360:setField("2outras1_5");
    obj.imageCheckBox360:setLeft(249);
    obj.imageCheckBox360:setTop(4);
    obj.imageCheckBox360:setWidth(15);
    obj.imageCheckBox360:setHeight(15);
    obj.imageCheckBox360:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox360:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox360:setName("imageCheckBox360");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.layout104);
    obj.layout106:setLeft(300);
    obj.layout106:setTop(35);
    obj.layout106:setWidth(290);
    obj.layout106:setHeight(25);
    obj.layout106:setName("layout106");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout106);
    obj.edit27:setLeft(40);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(135);
    obj.edit27:setHeight(25);
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setField("2outras2");
    obj.edit27:setType("text");
    obj.edit27:setName("edit27");

    obj.imageCheckBox361 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox361:setParent(obj.layout106);
    obj.imageCheckBox361:setField("2outras2_1");
    obj.imageCheckBox361:setLeft(177);
    obj.imageCheckBox361:setTop(4);
    obj.imageCheckBox361:setWidth(15);
    obj.imageCheckBox361:setHeight(15);
    obj.imageCheckBox361:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox361:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox361:setName("imageCheckBox361");

    obj.imageCheckBox362 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox362:setParent(obj.layout106);
    obj.imageCheckBox362:setField("2outras2_2");
    obj.imageCheckBox362:setLeft(195);
    obj.imageCheckBox362:setTop(4);
    obj.imageCheckBox362:setWidth(15);
    obj.imageCheckBox362:setHeight(15);
    obj.imageCheckBox362:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox362:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox362:setName("imageCheckBox362");

    obj.imageCheckBox363 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox363:setParent(obj.layout106);
    obj.imageCheckBox363:setField("2outras2_3");
    obj.imageCheckBox363:setLeft(213);
    obj.imageCheckBox363:setTop(4);
    obj.imageCheckBox363:setWidth(15);
    obj.imageCheckBox363:setHeight(15);
    obj.imageCheckBox363:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox363:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox363:setName("imageCheckBox363");

    obj.imageCheckBox364 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox364:setParent(obj.layout106);
    obj.imageCheckBox364:setField("2outras2_4");
    obj.imageCheckBox364:setLeft(231);
    obj.imageCheckBox364:setTop(4);
    obj.imageCheckBox364:setWidth(15);
    obj.imageCheckBox364:setHeight(15);
    obj.imageCheckBox364:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox364:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox364:setName("imageCheckBox364");

    obj.imageCheckBox365 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox365:setParent(obj.layout106);
    obj.imageCheckBox365:setField("2outras2_5");
    obj.imageCheckBox365:setLeft(249);
    obj.imageCheckBox365:setTop(4);
    obj.imageCheckBox365:setWidth(15);
    obj.imageCheckBox365:setHeight(15);
    obj.imageCheckBox365:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox365:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox365:setName("imageCheckBox365");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.layout104);
    obj.layout107:setLeft(300);
    obj.layout107:setTop(60);
    obj.layout107:setWidth(290);
    obj.layout107:setHeight(25);
    obj.layout107:setName("layout107");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout107);
    obj.edit28:setLeft(40);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(135);
    obj.edit28:setHeight(25);
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setField("2outras3");
    obj.edit28:setType("text");
    obj.edit28:setName("edit28");

    obj.imageCheckBox366 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox366:setParent(obj.layout107);
    obj.imageCheckBox366:setField("2outras3_1");
    obj.imageCheckBox366:setLeft(177);
    obj.imageCheckBox366:setTop(4);
    obj.imageCheckBox366:setWidth(15);
    obj.imageCheckBox366:setHeight(15);
    obj.imageCheckBox366:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox366:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox366:setName("imageCheckBox366");

    obj.imageCheckBox367 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox367:setParent(obj.layout107);
    obj.imageCheckBox367:setField("2outras3_2");
    obj.imageCheckBox367:setLeft(195);
    obj.imageCheckBox367:setTop(4);
    obj.imageCheckBox367:setWidth(15);
    obj.imageCheckBox367:setHeight(15);
    obj.imageCheckBox367:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox367:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox367:setName("imageCheckBox367");

    obj.imageCheckBox368 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox368:setParent(obj.layout107);
    obj.imageCheckBox368:setField("2outras3_3");
    obj.imageCheckBox368:setLeft(213);
    obj.imageCheckBox368:setTop(4);
    obj.imageCheckBox368:setWidth(15);
    obj.imageCheckBox368:setHeight(15);
    obj.imageCheckBox368:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox368:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox368:setName("imageCheckBox368");

    obj.imageCheckBox369 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox369:setParent(obj.layout107);
    obj.imageCheckBox369:setField("2outras3_4");
    obj.imageCheckBox369:setLeft(231);
    obj.imageCheckBox369:setTop(4);
    obj.imageCheckBox369:setWidth(15);
    obj.imageCheckBox369:setHeight(15);
    obj.imageCheckBox369:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox369:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox369:setName("imageCheckBox369");

    obj.imageCheckBox370 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox370:setParent(obj.layout107);
    obj.imageCheckBox370:setField("2outras3_5");
    obj.imageCheckBox370:setLeft(249);
    obj.imageCheckBox370:setTop(4);
    obj.imageCheckBox370:setWidth(15);
    obj.imageCheckBox370:setHeight(15);
    obj.imageCheckBox370:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox370:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox370:setName("imageCheckBox370");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.layout104);
    obj.layout108:setLeft(300);
    obj.layout108:setTop(85);
    obj.layout108:setWidth(290);
    obj.layout108:setHeight(25);
    obj.layout108:setName("layout108");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout108);
    obj.edit29:setLeft(40);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(135);
    obj.edit29:setHeight(25);
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setField("2outras4");
    obj.edit29:setType("text");
    obj.edit29:setName("edit29");

    obj.imageCheckBox371 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox371:setParent(obj.layout108);
    obj.imageCheckBox371:setField("2outras4_1");
    obj.imageCheckBox371:setLeft(177);
    obj.imageCheckBox371:setTop(4);
    obj.imageCheckBox371:setWidth(15);
    obj.imageCheckBox371:setHeight(15);
    obj.imageCheckBox371:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox371:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox371:setName("imageCheckBox371");

    obj.imageCheckBox372 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox372:setParent(obj.layout108);
    obj.imageCheckBox372:setField("2outras4_2");
    obj.imageCheckBox372:setLeft(195);
    obj.imageCheckBox372:setTop(4);
    obj.imageCheckBox372:setWidth(15);
    obj.imageCheckBox372:setHeight(15);
    obj.imageCheckBox372:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox372:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox372:setName("imageCheckBox372");

    obj.imageCheckBox373 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox373:setParent(obj.layout108);
    obj.imageCheckBox373:setField("2outras4_3");
    obj.imageCheckBox373:setLeft(213);
    obj.imageCheckBox373:setTop(4);
    obj.imageCheckBox373:setWidth(15);
    obj.imageCheckBox373:setHeight(15);
    obj.imageCheckBox373:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox373:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox373:setName("imageCheckBox373");

    obj.imageCheckBox374 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox374:setParent(obj.layout108);
    obj.imageCheckBox374:setField("2outras4_4");
    obj.imageCheckBox374:setLeft(231);
    obj.imageCheckBox374:setTop(4);
    obj.imageCheckBox374:setWidth(15);
    obj.imageCheckBox374:setHeight(15);
    obj.imageCheckBox374:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox374:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox374:setName("imageCheckBox374");

    obj.imageCheckBox375 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox375:setParent(obj.layout108);
    obj.imageCheckBox375:setField("2outras4_5");
    obj.imageCheckBox375:setLeft(249);
    obj.imageCheckBox375:setTop(4);
    obj.imageCheckBox375:setWidth(15);
    obj.imageCheckBox375:setHeight(15);
    obj.imageCheckBox375:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox375:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox375:setName("imageCheckBox375");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.layout104);
    obj.layout109:setLeft(300);
    obj.layout109:setTop(110);
    obj.layout109:setWidth(290);
    obj.layout109:setHeight(25);
    obj.layout109:setName("layout109");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout109);
    obj.edit30:setLeft(40);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(135);
    obj.edit30:setHeight(25);
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setField("2outras5");
    obj.edit30:setType("text");
    obj.edit30:setName("edit30");

    obj.imageCheckBox376 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox376:setParent(obj.layout109);
    obj.imageCheckBox376:setField("2outras5_1");
    obj.imageCheckBox376:setLeft(177);
    obj.imageCheckBox376:setTop(4);
    obj.imageCheckBox376:setWidth(15);
    obj.imageCheckBox376:setHeight(15);
    obj.imageCheckBox376:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox376:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox376:setName("imageCheckBox376");

    obj.imageCheckBox377 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox377:setParent(obj.layout109);
    obj.imageCheckBox377:setField("2outras5_2");
    obj.imageCheckBox377:setLeft(195);
    obj.imageCheckBox377:setTop(4);
    obj.imageCheckBox377:setWidth(15);
    obj.imageCheckBox377:setHeight(15);
    obj.imageCheckBox377:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox377:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox377:setName("imageCheckBox377");

    obj.imageCheckBox378 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox378:setParent(obj.layout109);
    obj.imageCheckBox378:setField("2outras5_3");
    obj.imageCheckBox378:setLeft(213);
    obj.imageCheckBox378:setTop(4);
    obj.imageCheckBox378:setWidth(15);
    obj.imageCheckBox378:setHeight(15);
    obj.imageCheckBox378:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox378:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox378:setName("imageCheckBox378");

    obj.imageCheckBox379 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox379:setParent(obj.layout109);
    obj.imageCheckBox379:setField("2outras5_4");
    obj.imageCheckBox379:setLeft(231);
    obj.imageCheckBox379:setTop(4);
    obj.imageCheckBox379:setWidth(15);
    obj.imageCheckBox379:setHeight(15);
    obj.imageCheckBox379:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox379:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox379:setName("imageCheckBox379");

    obj.imageCheckBox380 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox380:setParent(obj.layout109);
    obj.imageCheckBox380:setField("2outras5_5");
    obj.imageCheckBox380:setLeft(249);
    obj.imageCheckBox380:setTop(4);
    obj.imageCheckBox380:setWidth(15);
    obj.imageCheckBox380:setHeight(15);
    obj.imageCheckBox380:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox380:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox380:setName("imageCheckBox380");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.layout97);
    obj.layout110:setLeft(0);
    obj.layout110:setTop(20);
    obj.layout110:setWidth(880);
    obj.layout110:setHeight(200);
    obj.layout110:setName("layout110");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.layout110);
    obj.layout111:setLeft(600);
    obj.layout111:setTop(10);
    obj.layout111:setWidth(290);
    obj.layout111:setHeight(25);
    obj.layout111:setName("layout111");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout111);
    obj.edit31:setLeft(40);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(135);
    obj.edit31:setHeight(25);
    lfm_setPropAsString(obj.edit31, "fontStyle",  "bold");
    obj.edit31:setField("2outras1");
    obj.edit31:setType("text");
    obj.edit31:setName("edit31");

    obj.imageCheckBox381 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox381:setParent(obj.layout111);
    obj.imageCheckBox381:setField("2outras1_1");
    obj.imageCheckBox381:setLeft(177);
    obj.imageCheckBox381:setTop(4);
    obj.imageCheckBox381:setWidth(15);
    obj.imageCheckBox381:setHeight(15);
    obj.imageCheckBox381:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox381:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox381:setName("imageCheckBox381");

    obj.imageCheckBox382 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox382:setParent(obj.layout111);
    obj.imageCheckBox382:setField("2outras1_2");
    obj.imageCheckBox382:setLeft(195);
    obj.imageCheckBox382:setTop(4);
    obj.imageCheckBox382:setWidth(15);
    obj.imageCheckBox382:setHeight(15);
    obj.imageCheckBox382:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox382:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox382:setName("imageCheckBox382");

    obj.imageCheckBox383 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox383:setParent(obj.layout111);
    obj.imageCheckBox383:setField("2outras1_3");
    obj.imageCheckBox383:setLeft(213);
    obj.imageCheckBox383:setTop(4);
    obj.imageCheckBox383:setWidth(15);
    obj.imageCheckBox383:setHeight(15);
    obj.imageCheckBox383:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox383:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox383:setName("imageCheckBox383");

    obj.imageCheckBox384 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox384:setParent(obj.layout111);
    obj.imageCheckBox384:setField("2outras1_4");
    obj.imageCheckBox384:setLeft(231);
    obj.imageCheckBox384:setTop(4);
    obj.imageCheckBox384:setWidth(15);
    obj.imageCheckBox384:setHeight(15);
    obj.imageCheckBox384:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox384:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox384:setName("imageCheckBox384");

    obj.imageCheckBox385 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox385:setParent(obj.layout111);
    obj.imageCheckBox385:setField("2outras1_5");
    obj.imageCheckBox385:setLeft(249);
    obj.imageCheckBox385:setTop(4);
    obj.imageCheckBox385:setWidth(15);
    obj.imageCheckBox385:setHeight(15);
    obj.imageCheckBox385:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox385:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox385:setName("imageCheckBox385");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.layout110);
    obj.layout112:setLeft(600);
    obj.layout112:setTop(35);
    obj.layout112:setWidth(290);
    obj.layout112:setHeight(25);
    obj.layout112:setName("layout112");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout112);
    obj.edit32:setLeft(40);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(135);
    obj.edit32:setHeight(25);
    lfm_setPropAsString(obj.edit32, "fontStyle",  "bold");
    obj.edit32:setField("2outras2");
    obj.edit32:setType("text");
    obj.edit32:setName("edit32");

    obj.imageCheckBox386 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox386:setParent(obj.layout112);
    obj.imageCheckBox386:setField("2outras2_1");
    obj.imageCheckBox386:setLeft(177);
    obj.imageCheckBox386:setTop(4);
    obj.imageCheckBox386:setWidth(15);
    obj.imageCheckBox386:setHeight(15);
    obj.imageCheckBox386:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox386:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox386:setName("imageCheckBox386");

    obj.imageCheckBox387 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox387:setParent(obj.layout112);
    obj.imageCheckBox387:setField("2outras2_2");
    obj.imageCheckBox387:setLeft(195);
    obj.imageCheckBox387:setTop(4);
    obj.imageCheckBox387:setWidth(15);
    obj.imageCheckBox387:setHeight(15);
    obj.imageCheckBox387:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox387:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox387:setName("imageCheckBox387");

    obj.imageCheckBox388 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox388:setParent(obj.layout112);
    obj.imageCheckBox388:setField("2outras2_3");
    obj.imageCheckBox388:setLeft(213);
    obj.imageCheckBox388:setTop(4);
    obj.imageCheckBox388:setWidth(15);
    obj.imageCheckBox388:setHeight(15);
    obj.imageCheckBox388:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox388:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox388:setName("imageCheckBox388");

    obj.imageCheckBox389 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox389:setParent(obj.layout112);
    obj.imageCheckBox389:setField("2outras2_4");
    obj.imageCheckBox389:setLeft(231);
    obj.imageCheckBox389:setTop(4);
    obj.imageCheckBox389:setWidth(15);
    obj.imageCheckBox389:setHeight(15);
    obj.imageCheckBox389:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox389:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox389:setName("imageCheckBox389");

    obj.imageCheckBox390 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox390:setParent(obj.layout112);
    obj.imageCheckBox390:setField("2outras2_5");
    obj.imageCheckBox390:setLeft(249);
    obj.imageCheckBox390:setTop(4);
    obj.imageCheckBox390:setWidth(15);
    obj.imageCheckBox390:setHeight(15);
    obj.imageCheckBox390:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox390:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox390:setName("imageCheckBox390");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.layout110);
    obj.layout113:setLeft(600);
    obj.layout113:setTop(60);
    obj.layout113:setWidth(290);
    obj.layout113:setHeight(25);
    obj.layout113:setName("layout113");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout113);
    obj.edit33:setLeft(40);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(135);
    obj.edit33:setHeight(25);
    lfm_setPropAsString(obj.edit33, "fontStyle",  "bold");
    obj.edit33:setField("2outras3");
    obj.edit33:setType("text");
    obj.edit33:setName("edit33");

    obj.imageCheckBox391 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox391:setParent(obj.layout113);
    obj.imageCheckBox391:setField("2outras3_1");
    obj.imageCheckBox391:setLeft(177);
    obj.imageCheckBox391:setTop(4);
    obj.imageCheckBox391:setWidth(15);
    obj.imageCheckBox391:setHeight(15);
    obj.imageCheckBox391:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox391:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox391:setName("imageCheckBox391");

    obj.imageCheckBox392 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox392:setParent(obj.layout113);
    obj.imageCheckBox392:setField("2outras3_2");
    obj.imageCheckBox392:setLeft(195);
    obj.imageCheckBox392:setTop(4);
    obj.imageCheckBox392:setWidth(15);
    obj.imageCheckBox392:setHeight(15);
    obj.imageCheckBox392:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox392:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox392:setName("imageCheckBox392");

    obj.imageCheckBox393 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox393:setParent(obj.layout113);
    obj.imageCheckBox393:setField("2outras3_3");
    obj.imageCheckBox393:setLeft(213);
    obj.imageCheckBox393:setTop(4);
    obj.imageCheckBox393:setWidth(15);
    obj.imageCheckBox393:setHeight(15);
    obj.imageCheckBox393:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox393:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox393:setName("imageCheckBox393");

    obj.imageCheckBox394 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox394:setParent(obj.layout113);
    obj.imageCheckBox394:setField("2outras3_4");
    obj.imageCheckBox394:setLeft(231);
    obj.imageCheckBox394:setTop(4);
    obj.imageCheckBox394:setWidth(15);
    obj.imageCheckBox394:setHeight(15);
    obj.imageCheckBox394:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox394:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox394:setName("imageCheckBox394");

    obj.imageCheckBox395 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox395:setParent(obj.layout113);
    obj.imageCheckBox395:setField("2outras3_5");
    obj.imageCheckBox395:setLeft(249);
    obj.imageCheckBox395:setTop(4);
    obj.imageCheckBox395:setWidth(15);
    obj.imageCheckBox395:setHeight(15);
    obj.imageCheckBox395:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox395:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox395:setName("imageCheckBox395");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.layout110);
    obj.layout114:setLeft(600);
    obj.layout114:setTop(85);
    obj.layout114:setWidth(290);
    obj.layout114:setHeight(25);
    obj.layout114:setName("layout114");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout114);
    obj.edit34:setLeft(40);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(135);
    obj.edit34:setHeight(25);
    lfm_setPropAsString(obj.edit34, "fontStyle",  "bold");
    obj.edit34:setField("2outras4");
    obj.edit34:setType("text");
    obj.edit34:setName("edit34");

    obj.imageCheckBox396 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox396:setParent(obj.layout114);
    obj.imageCheckBox396:setField("2outras4_1");
    obj.imageCheckBox396:setLeft(177);
    obj.imageCheckBox396:setTop(4);
    obj.imageCheckBox396:setWidth(15);
    obj.imageCheckBox396:setHeight(15);
    obj.imageCheckBox396:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox396:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox396:setName("imageCheckBox396");

    obj.imageCheckBox397 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox397:setParent(obj.layout114);
    obj.imageCheckBox397:setField("2outras4_2");
    obj.imageCheckBox397:setLeft(195);
    obj.imageCheckBox397:setTop(4);
    obj.imageCheckBox397:setWidth(15);
    obj.imageCheckBox397:setHeight(15);
    obj.imageCheckBox397:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox397:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox397:setName("imageCheckBox397");

    obj.imageCheckBox398 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox398:setParent(obj.layout114);
    obj.imageCheckBox398:setField("2outras4_3");
    obj.imageCheckBox398:setLeft(213);
    obj.imageCheckBox398:setTop(4);
    obj.imageCheckBox398:setWidth(15);
    obj.imageCheckBox398:setHeight(15);
    obj.imageCheckBox398:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox398:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox398:setName("imageCheckBox398");

    obj.imageCheckBox399 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox399:setParent(obj.layout114);
    obj.imageCheckBox399:setField("2outras4_4");
    obj.imageCheckBox399:setLeft(231);
    obj.imageCheckBox399:setTop(4);
    obj.imageCheckBox399:setWidth(15);
    obj.imageCheckBox399:setHeight(15);
    obj.imageCheckBox399:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox399:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox399:setName("imageCheckBox399");

    obj.imageCheckBox400 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox400:setParent(obj.layout114);
    obj.imageCheckBox400:setField("2outras4_5");
    obj.imageCheckBox400:setLeft(249);
    obj.imageCheckBox400:setTop(4);
    obj.imageCheckBox400:setWidth(15);
    obj.imageCheckBox400:setHeight(15);
    obj.imageCheckBox400:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox400:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox400:setName("imageCheckBox400");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.layout110);
    obj.layout115:setLeft(600);
    obj.layout115:setTop(110);
    obj.layout115:setWidth(290);
    obj.layout115:setHeight(25);
    obj.layout115:setName("layout115");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout115);
    obj.edit35:setLeft(40);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(135);
    obj.edit35:setHeight(25);
    lfm_setPropAsString(obj.edit35, "fontStyle",  "bold");
    obj.edit35:setField("2outras5");
    obj.edit35:setType("text");
    obj.edit35:setName("edit35");

    obj.imageCheckBox401 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox401:setParent(obj.layout115);
    obj.imageCheckBox401:setField("2outras5_1");
    obj.imageCheckBox401:setLeft(177);
    obj.imageCheckBox401:setTop(4);
    obj.imageCheckBox401:setWidth(15);
    obj.imageCheckBox401:setHeight(15);
    obj.imageCheckBox401:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox401:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox401:setName("imageCheckBox401");

    obj.imageCheckBox402 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox402:setParent(obj.layout115);
    obj.imageCheckBox402:setField("2outras5_2");
    obj.imageCheckBox402:setLeft(195);
    obj.imageCheckBox402:setTop(4);
    obj.imageCheckBox402:setWidth(15);
    obj.imageCheckBox402:setHeight(15);
    obj.imageCheckBox402:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox402:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox402:setName("imageCheckBox402");

    obj.imageCheckBox403 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox403:setParent(obj.layout115);
    obj.imageCheckBox403:setField("2outras5_3");
    obj.imageCheckBox403:setLeft(213);
    obj.imageCheckBox403:setTop(4);
    obj.imageCheckBox403:setWidth(15);
    obj.imageCheckBox403:setHeight(15);
    obj.imageCheckBox403:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox403:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox403:setName("imageCheckBox403");

    obj.imageCheckBox404 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox404:setParent(obj.layout115);
    obj.imageCheckBox404:setField("2outras5_4");
    obj.imageCheckBox404:setLeft(231);
    obj.imageCheckBox404:setTop(4);
    obj.imageCheckBox404:setWidth(15);
    obj.imageCheckBox404:setHeight(15);
    obj.imageCheckBox404:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox404:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox404:setName("imageCheckBox404");

    obj.imageCheckBox405 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox405:setParent(obj.layout115);
    obj.imageCheckBox405:setField("2outras5_5");
    obj.imageCheckBox405:setLeft(249);
    obj.imageCheckBox405:setTop(4);
    obj.imageCheckBox405:setWidth(15);
    obj.imageCheckBox405:setHeight(15);
    obj.imageCheckBox405:setImageChecked("/VampiroAMascara/img/bboll2.png");
    obj.imageCheckBox405:setImageUnchecked("/VampiroAMascara/img/bboll1.png");
    obj.imageCheckBox405:setName("imageCheckBox405");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.scrollBox2);
    obj.layout116:setTop(370);
    obj.layout116:setWidth(880);
    obj.layout116:setHeight(300);
    obj.layout116:setName("layout116");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout116);
    obj.label86:setLeft(235);
    obj.label86:setTop(10);
    obj.label86:setWidth(95);
    obj.label86:setHeight(20);
    obj.label86:setText("Experiência");
    obj.label86:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label86, "fontStyle",  "bold");
    obj.label86:setFontColor("Black");
    obj.label86:setName("label86");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout116);
    obj.label87:setLeft(595);
    obj.label87:setTop(0);
    obj.label87:setAutoSize(true);
    obj.label87:setHeight(20);
    obj.label87:setText("Laços de Sangue/ Vinculi");
    obj.label87:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label87, "fontStyle",  "bold");
    obj.label87:setFontColor("Black");
    obj.label87:setName("label87");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.layout116);
    obj.layout117:setLeft(40);
    obj.layout117:setTop(45);
    obj.layout117:setWidth(880);
    obj.layout117:setHeight(25);
    obj.layout117:setName("layout117");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout117);
    obj.rectangle19:setLeft(5);
    obj.rectangle19:setTop(31);
    obj.rectangle19:setColor("Gainsboro");
    obj.rectangle19:setWidth(80);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setXradius(2);
    obj.rectangle19:setYradius(2);
    obj.rectangle19:setName("rectangle19");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout117);
    obj.label88:setLeft(5);
    obj.label88:setTop(3);
    obj.label88:setWidth(100);
    obj.label88:setHeight(20);
    obj.label88:setText("Total:");
    obj.label88:setHorzTextAlign("leading");
    obj.label88:setFontSize(12);
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setFontColor("black");
    obj.label88:setName("label88");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout117);
    obj.edit36:setLeft(100);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(250);
    obj.edit36:setHeight(25);
    lfm_setPropAsString(obj.edit36, "fontStyle",  "bold");
    obj.edit36:setField("total");
    obj.edit36:setType("text");
    obj.edit36:setName("edit36");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.layout116);
    obj.layout118:setLeft(40);
    obj.layout118:setTop(70);
    obj.layout118:setWidth(880);
    obj.layout118:setHeight(25);
    obj.layout118:setName("layout118");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout118);
    obj.rectangle20:setLeft(5);
    obj.rectangle20:setTop(31);
    obj.rectangle20:setColor("Gainsboro");
    obj.rectangle20:setWidth(80);
    obj.rectangle20:setHeight(25);
    obj.rectangle20:setXradius(2);
    obj.rectangle20:setYradius(2);
    obj.rectangle20:setName("rectangle20");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout118);
    obj.label89:setLeft(5);
    obj.label89:setTop(3);
    obj.label89:setWidth(100);
    obj.label89:setHeight(20);
    obj.label89:setText("Total Gasto:");
    obj.label89:setHorzTextAlign("leading");
    obj.label89:setFontSize(12);
    lfm_setPropAsString(obj.label89, "fontStyle",  "bold");
    obj.label89:setFontColor("black");
    obj.label89:setName("label89");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout118);
    obj.edit37:setLeft(100);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(250);
    obj.edit37:setHeight(25);
    lfm_setPropAsString(obj.edit37, "fontStyle",  "bold");
    obj.edit37:setField("totalgasto");
    obj.edit37:setType("text");
    obj.edit37:setName("edit37");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.layout116);
    obj.layout119:setLeft(45);
    obj.layout119:setTop(95);
    obj.layout119:setWidth(400);
    obj.layout119:setHeight(400);
    obj.layout119:setName("layout119");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout119);
    obj.label90:setAutoSize(true);
    obj.label90:setTop(65);
    obj.label90:setText("Gasto em:");
    obj.label90:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label90, "fontStyle",  "bold");
    obj.label90:setFontColor("Black");
    obj.label90:setName("label90");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout119);
    obj.textEditor3:setLeft(95);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(250);
    obj.textEditor3:setHeight(150);
    obj.textEditor3:setField("gastoem");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.layout116);
    obj.layout120:setLeft(475);
    obj.layout120:setTop(35);
    obj.layout120:setWidth(400);
    obj.layout120:setHeight(400);
    obj.layout120:setName("layout120");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout120);
    obj.label91:setAutoSize(true);
    obj.label91:setTop(0);
    obj.label91:setText("Laço com:");
    obj.label91:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label91, "fontStyle",  "bold");
    obj.label91:setFontColor("Black");
    obj.label91:setName("label91");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.layout116);
    obj.layout121:setLeft(425);
    obj.layout121:setTop(55);
    obj.layout121:setWidth(400);
    obj.layout121:setHeight(400);
    obj.layout121:setName("layout121");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout121);
    obj.textEditor4:setLeft(45);
    obj.textEditor4:setTop(0);
    obj.textEditor4:setWidth(350);
    obj.textEditor4:setHeight(80);
    obj.textEditor4:setField("laco");
    lfm_setPropAsString(obj.textEditor4, "fontStyle",  "bold");
    obj.textEditor4:setName("textEditor4");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.layout116);
    obj.layout122:setLeft(475);
    obj.layout122:setTop(145);
    obj.layout122:setWidth(400);
    obj.layout122:setHeight(400);
    obj.layout122:setName("layout122");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout122);
    obj.label92:setAutoSize(true);
    obj.label92:setTop(0);
    obj.label92:setText("Pertubações:");
    obj.label92:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label92, "fontStyle",  "bold");
    obj.label92:setFontColor("Black");
    obj.label92:setName("label92");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.layout116);
    obj.layout123:setLeft(425);
    obj.layout123:setTop(165);
    obj.layout123:setWidth(400);
    obj.layout123:setHeight(400);
    obj.layout123:setName("layout123");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout123);
    obj.textEditor5:setLeft(45);
    obj.textEditor5:setTop(0);
    obj.textEditor5:setWidth(350);
    obj.textEditor5:setHeight(80);
    obj.textEditor5:setField("laco");
    lfm_setPropAsString(obj.textEditor5, "fontStyle",  "bold");
    obj.textEditor5:setName("textEditor5");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.scrollBox2);
    obj.layout124:setTop(630);
    obj.layout124:setWidth(880);
    obj.layout124:setHeight(500);
    obj.layout124:setName("layout124");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout124);
    obj.rectangle21:setHeight(25);
    obj.rectangle21:setWidth(880);
    obj.rectangle21:setColor("black");
    obj.rectangle21:setName("rectangle21");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout124);
    obj.label93:setLeft(380);
    obj.label93:setTop(2);
    obj.label93:setWidth(250);
    obj.label93:setHeight(20);
    obj.label93:setText("Combate");
    lfm_setPropAsString(obj.label93, "fontStyle",  "bold");
    obj.label93:setFontColor("White");
    obj.label93:setName("label93");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Informações");
    obj.tab3:setName("tab3");

    obj.VampiroAMascara3 = GUI.fromHandle(_obj_newObject("form"));
    obj.VampiroAMascara3:setParent(obj.tab3);
    obj.VampiroAMascara3:setName("VampiroAMascara3");
    obj.VampiroAMascara3:setAlign("client");
    obj.VampiroAMascara3:setTheme("dark");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.VampiroAMascara3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.scrollBox3);
    obj.layout125:setLeft(0);
    obj.layout125:setTop(29);
    obj.layout125:setWidth(880);
    obj.layout125:setHeight(3);
    obj.layout125:setName("layout125");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout125);
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setColor("black");
    obj.rectangle22:setName("rectangle22");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.scrollBox3);
    obj.image3:setTop(0);
    obj.image3:setLeft(285);
    obj.image3:setWidth(300);
    obj.image3:setHeight(250);
    obj.image3:setSRC("/VampiroAMascara/img/vampiro.png");
    obj.image3:setName("image3");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.scrollBox3);
    obj.layout126:setLeft(0);
    obj.layout126:setTop(200);
    obj.layout126:setWidth(880);
    obj.layout126:setHeight(3);
    obj.layout126:setName("layout126");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout126);
    obj.rectangle23:setAlign("client");
    obj.rectangle23:setColor("black");
    obj.rectangle23:setName("rectangle23");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Outros");
    obj.tab4:setName("tab4");

    obj.VampiroAMascara4 = GUI.fromHandle(_obj_newObject("form"));
    obj.VampiroAMascara4:setParent(obj.tab4);
    obj.VampiroAMascara4:setName("VampiroAMascara4");
    obj.VampiroAMascara4:setAlign("client");
    obj.VampiroAMascara4:setTheme("dark");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.VampiroAMascara4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.scrollBox4);
    obj.layout127:setLeft(0);
    obj.layout127:setTop(29);
    obj.layout127:setWidth(880);
    obj.layout127:setHeight(3);
    obj.layout127:setName("layout127");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout127);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setColor("black");
    obj.rectangle24:setName("rectangle24");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.scrollBox4);
    obj.image4:setTop(0);
    obj.image4:setLeft(285);
    obj.image4:setWidth(300);
    obj.image4:setHeight(250);
    obj.image4:setSRC("/VampiroAMascara/img/vampiro.png");
    obj.image4:setName("image4");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.scrollBox4);
    obj.layout128:setLeft(0);
    obj.layout128:setTop(200);
    obj.layout128:setWidth(880);
    obj.layout128:setHeight(3);
    obj.layout128:setName("layout128");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout128);
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setColor("black");
    obj.rectangle25:setName("rectangle25");

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

        if self.imageCheckBox362 ~= nil then self.imageCheckBox362:destroy(); self.imageCheckBox362 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.imageCheckBox296 ~= nil then self.imageCheckBox296:destroy(); self.imageCheckBox296 = nil; end;
        if self.imageCheckBox377 ~= nil then self.imageCheckBox377:destroy(); self.imageCheckBox377 = nil; end;
        if self.imageCheckBox364 ~= nil then self.imageCheckBox364:destroy(); self.imageCheckBox364 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.imageCheckBox227 ~= nil then self.imageCheckBox227:destroy(); self.imageCheckBox227 = nil; end;
        if self.imageCheckBox287 ~= nil then self.imageCheckBox287:destroy(); self.imageCheckBox287 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.imageCheckBox200 ~= nil then self.imageCheckBox200:destroy(); self.imageCheckBox200 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.imageCheckBox357 ~= nil then self.imageCheckBox357:destroy(); self.imageCheckBox357 = nil; end;
        if self.imageCheckBox376 ~= nil then self.imageCheckBox376:destroy(); self.imageCheckBox376 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.imageCheckBox175 ~= nil then self.imageCheckBox175:destroy(); self.imageCheckBox175 = nil; end;
        if self.imageCheckBox225 ~= nil then self.imageCheckBox225:destroy(); self.imageCheckBox225 = nil; end;
        if self.imageCheckBox360 ~= nil then self.imageCheckBox360:destroy(); self.imageCheckBox360 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.pvtotais ~= nil then self.pvtotais:destroy(); self.pvtotais = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.pvatuais ~= nil then self.pvatuais:destroy(); self.pvatuais = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.imageCheckBox288 ~= nil then self.imageCheckBox288:destroy(); self.imageCheckBox288 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.imageCheckBox251 ~= nil then self.imageCheckBox251:destroy(); self.imageCheckBox251 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.imageCheckBox210 ~= nil then self.imageCheckBox210:destroy(); self.imageCheckBox210 = nil; end;
        if self.imageCheckBox126 ~= nil then self.imageCheckBox126:destroy(); self.imageCheckBox126 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.imageCheckBox345 ~= nil then self.imageCheckBox345:destroy(); self.imageCheckBox345 = nil; end;
        if self.imageCheckBox289 ~= nil then self.imageCheckBox289:destroy(); self.imageCheckBox289 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.frmCodigo1 ~= nil then self.frmCodigo1:destroy(); self.frmCodigo1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.imageCheckBox304 ~= nil then self.imageCheckBox304:destroy(); self.imageCheckBox304 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.imageCheckBox166 ~= nil then self.imageCheckBox166:destroy(); self.imageCheckBox166 = nil; end;
        if self.imageCheckBox271 ~= nil then self.imageCheckBox271:destroy(); self.imageCheckBox271 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.imageCheckBox176 ~= nil then self.imageCheckBox176:destroy(); self.imageCheckBox176 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.imageCheckBox196 ~= nil then self.imageCheckBox196:destroy(); self.imageCheckBox196 = nil; end;
        if self.imageCheckBox181 ~= nil then self.imageCheckBox181:destroy(); self.imageCheckBox181 = nil; end;
        if self.imageCheckBox174 ~= nil then self.imageCheckBox174:destroy(); self.imageCheckBox174 = nil; end;
        if self.imageCheckBox316 ~= nil then self.imageCheckBox316:destroy(); self.imageCheckBox316 = nil; end;
        if self.imageCheckBox129 ~= nil then self.imageCheckBox129:destroy(); self.imageCheckBox129 = nil; end;
        if self.imageCheckBox248 ~= nil then self.imageCheckBox248:destroy(); self.imageCheckBox248 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.fdvtotais ~= nil then self.fdvtotais:destroy(); self.fdvtotais = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox168 ~= nil then self.imageCheckBox168:destroy(); self.imageCheckBox168 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.imageCheckBox290 ~= nil then self.imageCheckBox290:destroy(); self.imageCheckBox290 = nil; end;
        if self.imageCheckBox191 ~= nil then self.imageCheckBox191:destroy(); self.imageCheckBox191 = nil; end;
        if self.imageCheckBox145 ~= nil then self.imageCheckBox145:destroy(); self.imageCheckBox145 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.imageCheckBox337 ~= nil then self.imageCheckBox337:destroy(); self.imageCheckBox337 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.imageCheckBox150 ~= nil then self.imageCheckBox150:destroy(); self.imageCheckBox150 = nil; end;
        if self.imageCheckBox136 ~= nil then self.imageCheckBox136:destroy(); self.imageCheckBox136 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.imageCheckBox336 ~= nil then self.imageCheckBox336:destroy(); self.imageCheckBox336 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.imageCheckBox214 ~= nil then self.imageCheckBox214:destroy(); self.imageCheckBox214 = nil; end;
        if self.imageCheckBox241 ~= nil then self.imageCheckBox241:destroy(); self.imageCheckBox241 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.imageCheckBox349 ~= nil then self.imageCheckBox349:destroy(); self.imageCheckBox349 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.imageCheckBox401 ~= nil then self.imageCheckBox401:destroy(); self.imageCheckBox401 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.imageCheckBox346 ~= nil then self.imageCheckBox346:destroy(); self.imageCheckBox346 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox131 ~= nil then self.imageCheckBox131:destroy(); self.imageCheckBox131 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.imageCheckBox154 ~= nil then self.imageCheckBox154:destroy(); self.imageCheckBox154 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.imageCheckBox326 ~= nil then self.imageCheckBox326:destroy(); self.imageCheckBox326 = nil; end;
        if self.imageCheckBox331 ~= nil then self.imageCheckBox331:destroy(); self.imageCheckBox331 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.imageCheckBox358 ~= nil then self.imageCheckBox358:destroy(); self.imageCheckBox358 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.imageCheckBox224 ~= nil then self.imageCheckBox224:destroy(); self.imageCheckBox224 = nil; end;
        if self.imageCheckBox373 ~= nil then self.imageCheckBox373:destroy(); self.imageCheckBox373 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.imageCheckBox285 ~= nil then self.imageCheckBox285:destroy(); self.imageCheckBox285 = nil; end;
        if self.imageCheckBox233 ~= nil then self.imageCheckBox233:destroy(); self.imageCheckBox233 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.imageCheckBox350 ~= nil then self.imageCheckBox350:destroy(); self.imageCheckBox350 = nil; end;
        if self.imageCheckBox354 ~= nil then self.imageCheckBox354:destroy(); self.imageCheckBox354 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.imageCheckBox390 ~= nil then self.imageCheckBox390:destroy(); self.imageCheckBox390 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.imageCheckBox208 ~= nil then self.imageCheckBox208:destroy(); self.imageCheckBox208 = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.imageCheckBox239 ~= nil then self.imageCheckBox239:destroy(); self.imageCheckBox239 = nil; end;
        if self.imageCheckBox371 ~= nil then self.imageCheckBox371:destroy(); self.imageCheckBox371 = nil; end;
        if self.imageCheckBox352 ~= nil then self.imageCheckBox352:destroy(); self.imageCheckBox352 = nil; end;
        if self.imageCheckBox207 ~= nil then self.imageCheckBox207:destroy(); self.imageCheckBox207 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.imageCheckBox194 ~= nil then self.imageCheckBox194:destroy(); self.imageCheckBox194 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.imageCheckBox302 ~= nil then self.imageCheckBox302:destroy(); self.imageCheckBox302 = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.imageCheckBox343 ~= nil then self.imageCheckBox343:destroy(); self.imageCheckBox343 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.imageCheckBox155 ~= nil then self.imageCheckBox155:destroy(); self.imageCheckBox155 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.VampiroAMascara4 ~= nil then self.VampiroAMascara4:destroy(); self.VampiroAMascara4 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox182 ~= nil then self.imageCheckBox182:destroy(); self.imageCheckBox182 = nil; end;
        if self.imageCheckBox318 ~= nil then self.imageCheckBox318:destroy(); self.imageCheckBox318 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.imageCheckBox314 ~= nil then self.imageCheckBox314:destroy(); self.imageCheckBox314 = nil; end;
        if self.imageCheckBox341 ~= nil then self.imageCheckBox341:destroy(); self.imageCheckBox341 = nil; end;
        if self.imageCheckBox382 ~= nil then self.imageCheckBox382:destroy(); self.imageCheckBox382 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.imageCheckBox219 ~= nil then self.imageCheckBox219:destroy(); self.imageCheckBox219 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.imageCheckBox246 ~= nil then self.imageCheckBox246:destroy(); self.imageCheckBox246 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.imageCheckBox340 ~= nil then self.imageCheckBox340:destroy(); self.imageCheckBox340 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.imageCheckBox391 ~= nil then self.imageCheckBox391:destroy(); self.imageCheckBox391 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.imageCheckBox260 ~= nil then self.imageCheckBox260:destroy(); self.imageCheckBox260 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
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
        if self.imageCheckBox193 ~= nil then self.imageCheckBox193:destroy(); self.imageCheckBox193 = nil; end;
        if self.imageCheckBox205 ~= nil then self.imageCheckBox205:destroy(); self.imageCheckBox205 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.imageCheckBox213 ~= nil then self.imageCheckBox213:destroy(); self.imageCheckBox213 = nil; end;
        if self.imageCheckBox255 ~= nil then self.imageCheckBox255:destroy(); self.imageCheckBox255 = nil; end;
        if self.imageCheckBox309 ~= nil then self.imageCheckBox309:destroy(); self.imageCheckBox309 = nil; end;
        if self.imageCheckBox315 ~= nil then self.imageCheckBox315:destroy(); self.imageCheckBox315 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.imageCheckBox298 ~= nil then self.imageCheckBox298:destroy(); self.imageCheckBox298 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.imageCheckBox333 ~= nil then self.imageCheckBox333:destroy(); self.imageCheckBox333 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.imageCheckBox381 ~= nil then self.imageCheckBox381:destroy(); self.imageCheckBox381 = nil; end;
        if self.imageCheckBox399 ~= nil then self.imageCheckBox399:destroy(); self.imageCheckBox399 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox400 ~= nil then self.imageCheckBox400:destroy(); self.imageCheckBox400 = nil; end;
        if self.imageCheckBox325 ~= nil then self.imageCheckBox325:destroy(); self.imageCheckBox325 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox249 ~= nil then self.imageCheckBox249:destroy(); self.imageCheckBox249 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.imageCheckBox392 ~= nil then self.imageCheckBox392:destroy(); self.imageCheckBox392 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.imageCheckBox361 ~= nil then self.imageCheckBox361:destroy(); self.imageCheckBox361 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.imageCheckBox403 ~= nil then self.imageCheckBox403:destroy(); self.imageCheckBox403 = nil; end;
        if self.imageCheckBox313 ~= nil then self.imageCheckBox313:destroy(); self.imageCheckBox313 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.imageCheckBox339 ~= nil then self.imageCheckBox339:destroy(); self.imageCheckBox339 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.imageCheckBox305 ~= nil then self.imageCheckBox305:destroy(); self.imageCheckBox305 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.imageCheckBox231 ~= nil then self.imageCheckBox231:destroy(); self.imageCheckBox231 = nil; end;
        if self.imageCheckBox351 ~= nil then self.imageCheckBox351:destroy(); self.imageCheckBox351 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.imageCheckBox247 ~= nil then self.imageCheckBox247:destroy(); self.imageCheckBox247 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.imageCheckBox125 ~= nil then self.imageCheckBox125:destroy(); self.imageCheckBox125 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox370 ~= nil then self.imageCheckBox370:destroy(); self.imageCheckBox370 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.imageCheckBox142 ~= nil then self.imageCheckBox142:destroy(); self.imageCheckBox142 = nil; end;
        if self.imageCheckBox264 ~= nil then self.imageCheckBox264:destroy(); self.imageCheckBox264 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.imageCheckBox180 ~= nil then self.imageCheckBox180:destroy(); self.imageCheckBox180 = nil; end;
        if self.imageCheckBox253 ~= nil then self.imageCheckBox253:destroy(); self.imageCheckBox253 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.imageCheckBox252 ~= nil then self.imageCheckBox252:destroy(); self.imageCheckBox252 = nil; end;
        if self.imageCheckBox322 ~= nil then self.imageCheckBox322:destroy(); self.imageCheckBox322 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.imageCheckBox262 ~= nil then self.imageCheckBox262:destroy(); self.imageCheckBox262 = nil; end;
        if self.imageCheckBox157 ~= nil then self.imageCheckBox157:destroy(); self.imageCheckBox157 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.imageCheckBox355 ~= nil then self.imageCheckBox355:destroy(); self.imageCheckBox355 = nil; end;
        if self.imageCheckBox172 ~= nil then self.imageCheckBox172:destroy(); self.imageCheckBox172 = nil; end;
        if self.imageCheckBox156 ~= nil then self.imageCheckBox156:destroy(); self.imageCheckBox156 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.VampiroAMascara1 ~= nil then self.VampiroAMascara1:destroy(); self.VampiroAMascara1 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.imageCheckBox127 ~= nil then self.imageCheckBox127:destroy(); self.imageCheckBox127 = nil; end;
        if self.imageCheckBox222 ~= nil then self.imageCheckBox222:destroy(); self.imageCheckBox222 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.imageCheckBox294 ~= nil then self.imageCheckBox294:destroy(); self.imageCheckBox294 = nil; end;
        if self.imageCheckBox158 ~= nil then self.imageCheckBox158:destroy(); self.imageCheckBox158 = nil; end;
        if self.imageCheckBox179 ~= nil then self.imageCheckBox179:destroy(); self.imageCheckBox179 = nil; end;
        if self.imageCheckBox220 ~= nil then self.imageCheckBox220:destroy(); self.imageCheckBox220 = nil; end;
        if self.imageCheckBox171 ~= nil then self.imageCheckBox171:destroy(); self.imageCheckBox171 = nil; end;
        if self.imageCheckBox235 ~= nil then self.imageCheckBox235:destroy(); self.imageCheckBox235 = nil; end;
        if self.imageCheckBox307 ~= nil then self.imageCheckBox307:destroy(); self.imageCheckBox307 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.imageCheckBox204 ~= nil then self.imageCheckBox204:destroy(); self.imageCheckBox204 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.imageCheckBox250 ~= nil then self.imageCheckBox250:destroy(); self.imageCheckBox250 = nil; end;
        if self.imageCheckBox197 ~= nil then self.imageCheckBox197:destroy(); self.imageCheckBox197 = nil; end;
        if self.imageCheckBox334 ~= nil then self.imageCheckBox334:destroy(); self.imageCheckBox334 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.imageCheckBox242 ~= nil then self.imageCheckBox242:destroy(); self.imageCheckBox242 = nil; end;
        if self.imageCheckBox111 ~= nil then self.imageCheckBox111:destroy(); self.imageCheckBox111 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.imageCheckBox405 ~= nil then self.imageCheckBox405:destroy(); self.imageCheckBox405 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox211 ~= nil then self.imageCheckBox211:destroy(); self.imageCheckBox211 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.imageCheckBox268 ~= nil then self.imageCheckBox268:destroy(); self.imageCheckBox268 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.imageCheckBox165 ~= nil then self.imageCheckBox165:destroy(); self.imageCheckBox165 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.imageCheckBox237 ~= nil then self.imageCheckBox237:destroy(); self.imageCheckBox237 = nil; end;
        if self.imageCheckBox292 ~= nil then self.imageCheckBox292:destroy(); self.imageCheckBox292 = nil; end;
        if self.imageCheckBox347 ~= nil then self.imageCheckBox347:destroy(); self.imageCheckBox347 = nil; end;
        if self.imageCheckBox308 ~= nil then self.imageCheckBox308:destroy(); self.imageCheckBox308 = nil; end;
        if self.imageCheckBox375 ~= nil then self.imageCheckBox375:destroy(); self.imageCheckBox375 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.imageCheckBox291 ~= nil then self.imageCheckBox291:destroy(); self.imageCheckBox291 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.VampiroAMascara3 ~= nil then self.VampiroAMascara3:destroy(); self.VampiroAMascara3 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.imageCheckBox195 ~= nil then self.imageCheckBox195:destroy(); self.imageCheckBox195 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.imageCheckBox328 ~= nil then self.imageCheckBox328:destroy(); self.imageCheckBox328 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.imageCheckBox344 ~= nil then self.imageCheckBox344:destroy(); self.imageCheckBox344 = nil; end;
        if self.imageCheckBox295 ~= nil then self.imageCheckBox295:destroy(); self.imageCheckBox295 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.imageCheckBox283 ~= nil then self.imageCheckBox283:destroy(); self.imageCheckBox283 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.imageCheckBox215 ~= nil then self.imageCheckBox215:destroy(); self.imageCheckBox215 = nil; end;
        if self.imageCheckBox306 ~= nil then self.imageCheckBox306:destroy(); self.imageCheckBox306 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.imageCheckBox332 ~= nil then self.imageCheckBox332:destroy(); self.imageCheckBox332 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.imageCheckBox153 ~= nil then self.imageCheckBox153:destroy(); self.imageCheckBox153 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.imageCheckBox192 ~= nil then self.imageCheckBox192:destroy(); self.imageCheckBox192 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.imageCheckBox320 ~= nil then self.imageCheckBox320:destroy(); self.imageCheckBox320 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.imageCheckBox301 ~= nil then self.imageCheckBox301:destroy(); self.imageCheckBox301 = nil; end;
        if self.imageCheckBox244 ~= nil then self.imageCheckBox244:destroy(); self.imageCheckBox244 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.imageCheckBox138 ~= nil then self.imageCheckBox138:destroy(); self.imageCheckBox138 = nil; end;
        if self.imageCheckBox198 ~= nil then self.imageCheckBox198:destroy(); self.imageCheckBox198 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.imageCheckBox199 ~= nil then self.imageCheckBox199:destroy(); self.imageCheckBox199 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.imageCheckBox267 ~= nil then self.imageCheckBox267:destroy(); self.imageCheckBox267 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.imageCheckBox258 ~= nil then self.imageCheckBox258:destroy(); self.imageCheckBox258 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.imageCheckBox330 ~= nil then self.imageCheckBox330:destroy(); self.imageCheckBox330 = nil; end;
        if self.imageCheckBox263 ~= nil then self.imageCheckBox263:destroy(); self.imageCheckBox263 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.imageCheckBox367 ~= nil then self.imageCheckBox367:destroy(); self.imageCheckBox367 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox229 ~= nil then self.imageCheckBox229:destroy(); self.imageCheckBox229 = nil; end;
        if self.imageCheckBox265 ~= nil then self.imageCheckBox265:destroy(); self.imageCheckBox265 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.imageCheckBox385 ~= nil then self.imageCheckBox385:destroy(); self.imageCheckBox385 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.imageCheckBox293 ~= nil then self.imageCheckBox293:destroy(); self.imageCheckBox293 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.imageCheckBox393 ~= nil then self.imageCheckBox393:destroy(); self.imageCheckBox393 = nil; end;
        if self.imageCheckBox256 ~= nil then self.imageCheckBox256:destroy(); self.imageCheckBox256 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.imageCheckBox366 ~= nil then self.imageCheckBox366:destroy(); self.imageCheckBox366 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.imageCheckBox335 ~= nil then self.imageCheckBox335:destroy(); self.imageCheckBox335 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox123 ~= nil then self.imageCheckBox123:destroy(); self.imageCheckBox123 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.imageCheckBox234 ~= nil then self.imageCheckBox234:destroy(); self.imageCheckBox234 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.imageCheckBox238 ~= nil then self.imageCheckBox238:destroy(); self.imageCheckBox238 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.imageCheckBox184 ~= nil then self.imageCheckBox184:destroy(); self.imageCheckBox184 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
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
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.imageCheckBox300 ~= nil then self.imageCheckBox300:destroy(); self.imageCheckBox300 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.imageCheckBox279 ~= nil then self.imageCheckBox279:destroy(); self.imageCheckBox279 = nil; end;
        if self.imageCheckBox278 ~= nil then self.imageCheckBox278:destroy(); self.imageCheckBox278 = nil; end;
        if self.imageCheckBox297 ~= nil then self.imageCheckBox297:destroy(); self.imageCheckBox297 = nil; end;
        if self.imageCheckBox135 ~= nil then self.imageCheckBox135:destroy(); self.imageCheckBox135 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.imageCheckBox206 ~= nil then self.imageCheckBox206:destroy(); self.imageCheckBox206 = nil; end;
        if self.imageCheckBox380 ~= nil then self.imageCheckBox380:destroy(); self.imageCheckBox380 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.imageCheckBox162 ~= nil then self.imageCheckBox162:destroy(); self.imageCheckBox162 = nil; end;
        if self.imageCheckBox286 ~= nil then self.imageCheckBox286:destroy(); self.imageCheckBox286 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.imageCheckBox338 ~= nil then self.imageCheckBox338:destroy(); self.imageCheckBox338 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.imageCheckBox386 ~= nil then self.imageCheckBox386:destroy(); self.imageCheckBox386 = nil; end;
        if self.imageCheckBox404 ~= nil then self.imageCheckBox404:destroy(); self.imageCheckBox404 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.imageCheckBox139 ~= nil then self.imageCheckBox139:destroy(); self.imageCheckBox139 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.imageCheckBox187 ~= nil then self.imageCheckBox187:destroy(); self.imageCheckBox187 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.imageCheckBox163 ~= nil then self.imageCheckBox163:destroy(); self.imageCheckBox163 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.imageCheckBox223 ~= nil then self.imageCheckBox223:destroy(); self.imageCheckBox223 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.imageCheckBox272 ~= nil then self.imageCheckBox272:destroy(); self.imageCheckBox272 = nil; end;
        if self.imageCheckBox266 ~= nil then self.imageCheckBox266:destroy(); self.imageCheckBox266 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.imageCheckBox323 ~= nil then self.imageCheckBox323:destroy(); self.imageCheckBox323 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.imageCheckBox379 ~= nil then self.imageCheckBox379:destroy(); self.imageCheckBox379 = nil; end;
        if self.imageCheckBox245 ~= nil then self.imageCheckBox245:destroy(); self.imageCheckBox245 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.imageCheckBox259 ~= nil then self.imageCheckBox259:destroy(); self.imageCheckBox259 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.imageCheckBox303 ~= nil then self.imageCheckBox303:destroy(); self.imageCheckBox303 = nil; end;
        if self.imageCheckBox369 ~= nil then self.imageCheckBox369:destroy(); self.imageCheckBox369 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.imageCheckBox327 ~= nil then self.imageCheckBox327:destroy(); self.imageCheckBox327 = nil; end;
        if self.imageCheckBox329 ~= nil then self.imageCheckBox329:destroy(); self.imageCheckBox329 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.imageCheckBox342 ~= nil then self.imageCheckBox342:destroy(); self.imageCheckBox342 = nil; end;
        if self.imageCheckBox374 ~= nil then self.imageCheckBox374:destroy(); self.imageCheckBox374 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.imageCheckBox202 ~= nil then self.imageCheckBox202:destroy(); self.imageCheckBox202 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.imageCheckBox226 ~= nil then self.imageCheckBox226:destroy(); self.imageCheckBox226 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.imageCheckBox348 ~= nil then self.imageCheckBox348:destroy(); self.imageCheckBox348 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.imageCheckBox276 ~= nil then self.imageCheckBox276:destroy(); self.imageCheckBox276 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox389 ~= nil then self.imageCheckBox389:destroy(); self.imageCheckBox389 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox270 ~= nil then self.imageCheckBox270:destroy(); self.imageCheckBox270 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.imageCheckBox353 ~= nil then self.imageCheckBox353:destroy(); self.imageCheckBox353 = nil; end;
        if self.imageCheckBox396 ~= nil then self.imageCheckBox396:destroy(); self.imageCheckBox396 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.imageCheckBox274 ~= nil then self.imageCheckBox274:destroy(); self.imageCheckBox274 = nil; end;
        if self.imageCheckBox281 ~= nil then self.imageCheckBox281:destroy(); self.imageCheckBox281 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.imageCheckBox121 ~= nil then self.imageCheckBox121:destroy(); self.imageCheckBox121 = nil; end;
        if self.imageCheckBox152 ~= nil then self.imageCheckBox152:destroy(); self.imageCheckBox152 = nil; end;
        if self.imageCheckBox170 ~= nil then self.imageCheckBox170:destroy(); self.imageCheckBox170 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.imageCheckBox201 ~= nil then self.imageCheckBox201:destroy(); self.imageCheckBox201 = nil; end;
        if self.imageCheckBox203 ~= nil then self.imageCheckBox203:destroy(); self.imageCheckBox203 = nil; end;
        if self.imageCheckBox254 ~= nil then self.imageCheckBox254:destroy(); self.imageCheckBox254 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.imageCheckBox372 ~= nil then self.imageCheckBox372:destroy(); self.imageCheckBox372 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.fdvatuais ~= nil then self.fdvatuais:destroy(); self.fdvatuais = nil; end;
        if self.imageCheckBox359 ~= nil then self.imageCheckBox359:destroy(); self.imageCheckBox359 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.imageCheckBox398 ~= nil then self.imageCheckBox398:destroy(); self.imageCheckBox398 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.imageCheckBox319 ~= nil then self.imageCheckBox319:destroy(); self.imageCheckBox319 = nil; end;
        if self.imageCheckBox363 ~= nil then self.imageCheckBox363:destroy(); self.imageCheckBox363 = nil; end;
        if self.imageCheckBox317 ~= nil then self.imageCheckBox317:destroy(); self.imageCheckBox317 = nil; end;
        if self.imageCheckBox378 ~= nil then self.imageCheckBox378:destroy(); self.imageCheckBox378 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.imageCheckBox188 ~= nil then self.imageCheckBox188:destroy(); self.imageCheckBox188 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox209 ~= nil then self.imageCheckBox209:destroy(); self.imageCheckBox209 = nil; end;
        if self.imageCheckBox177 ~= nil then self.imageCheckBox177:destroy(); self.imageCheckBox177 = nil; end;
        if self.imageCheckBox218 ~= nil then self.imageCheckBox218:destroy(); self.imageCheckBox218 = nil; end;
        if self.imageCheckBox228 ~= nil then self.imageCheckBox228:destroy(); self.imageCheckBox228 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox261 ~= nil then self.imageCheckBox261:destroy(); self.imageCheckBox261 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.imageCheckBox284 ~= nil then self.imageCheckBox284:destroy(); self.imageCheckBox284 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.imageCheckBox321 ~= nil then self.imageCheckBox321:destroy(); self.imageCheckBox321 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.imageCheckBox368 ~= nil then self.imageCheckBox368:destroy(); self.imageCheckBox368 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.imageCheckBox144 ~= nil then self.imageCheckBox144:destroy(); self.imageCheckBox144 = nil; end;
        if self.imageCheckBox299 ~= nil then self.imageCheckBox299:destroy(); self.imageCheckBox299 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.imageCheckBox236 ~= nil then self.imageCheckBox236:destroy(); self.imageCheckBox236 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox395 ~= nil then self.imageCheckBox395:destroy(); self.imageCheckBox395 = nil; end;
        if self.imageCheckBox151 ~= nil then self.imageCheckBox151:destroy(); self.imageCheckBox151 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.imageCheckBox243 ~= nil then self.imageCheckBox243:destroy(); self.imageCheckBox243 = nil; end;
        if self.imageCheckBox388 ~= nil then self.imageCheckBox388:destroy(); self.imageCheckBox388 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.imageCheckBox397 ~= nil then self.imageCheckBox397:destroy(); self.imageCheckBox397 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.imageCheckBox212 ~= nil then self.imageCheckBox212:destroy(); self.imageCheckBox212 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox140 ~= nil then self.imageCheckBox140:destroy(); self.imageCheckBox140 = nil; end;
        if self.imageCheckBox221 ~= nil then self.imageCheckBox221:destroy(); self.imageCheckBox221 = nil; end;
        if self.imageCheckBox282 ~= nil then self.imageCheckBox282:destroy(); self.imageCheckBox282 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.imageCheckBox216 ~= nil then self.imageCheckBox216:destroy(); self.imageCheckBox216 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.VampiroAMascara2 ~= nil then self.VampiroAMascara2:destroy(); self.VampiroAMascara2 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.imageCheckBox273 ~= nil then self.imageCheckBox273:destroy(); self.imageCheckBox273 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.imageCheckBox269 ~= nil then self.imageCheckBox269:destroy(); self.imageCheckBox269 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.imageCheckBox365 ~= nil then self.imageCheckBox365:destroy(); self.imageCheckBox365 = nil; end;
        if self.imageCheckBox387 ~= nil then self.imageCheckBox387:destroy(); self.imageCheckBox387 = nil; end;
        if self.imageCheckBox277 ~= nil then self.imageCheckBox277:destroy(); self.imageCheckBox277 = nil; end;
        if self.imageCheckBox311 ~= nil then self.imageCheckBox311:destroy(); self.imageCheckBox311 = nil; end;
        if self.imageCheckBox312 ~= nil then self.imageCheckBox312:destroy(); self.imageCheckBox312 = nil; end;
        if self.imageCheckBox356 ~= nil then self.imageCheckBox356:destroy(); self.imageCheckBox356 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.imageCheckBox384 ~= nil then self.imageCheckBox384:destroy(); self.imageCheckBox384 = nil; end;
        if self.imageCheckBox240 ~= nil then self.imageCheckBox240:destroy(); self.imageCheckBox240 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.imageCheckBox324 ~= nil then self.imageCheckBox324:destroy(); self.imageCheckBox324 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.imageCheckBox257 ~= nil then self.imageCheckBox257:destroy(); self.imageCheckBox257 = nil; end;
        if self.imageCheckBox402 ~= nil then self.imageCheckBox402:destroy(); self.imageCheckBox402 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox394 ~= nil then self.imageCheckBox394:destroy(); self.imageCheckBox394 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox230 ~= nil then self.imageCheckBox230:destroy(); self.imageCheckBox230 = nil; end;
        if self.imageCheckBox183 ~= nil then self.imageCheckBox183:destroy(); self.imageCheckBox183 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.imageCheckBox310 ~= nil then self.imageCheckBox310:destroy(); self.imageCheckBox310 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.imageCheckBox232 ~= nil then self.imageCheckBox232:destroy(); self.imageCheckBox232 = nil; end;
        if self.imageCheckBox383 ~= nil then self.imageCheckBox383:destroy(); self.imageCheckBox383 = nil; end;
        if self.imageCheckBox167 ~= nil then self.imageCheckBox167:destroy(); self.imageCheckBox167 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newVampiroAMascarafrm()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_VampiroAMascarafrm();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _VampiroAMascarafrm = {
    newEditor = newVampiroAMascarafrm, 
    new = newVampiroAMascarafrm, 
    name = "VampiroAMascarafrm", 
    dataType = "Cast.VampiroAMascara", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Vampiro A Mascara", 
    description=""};

VampiroAMascarafrm = _VampiroAMascarafrm;
Firecast.registrarForm(_VampiroAMascarafrm);
Firecast.registrarDataType(_VampiroAMascarafrm);

return _VampiroAMascarafrm;
