require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_VampiroAMascara4()
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
    obj:setName("VampiroAMascara4");
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
    obj.layout3:setTop(205);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setHeight(25);
    obj.rectangle3:setWidth(880);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setName("rectangle3");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout3);
    obj.label1:setLeft(405);
    obj.label1:setTop(2);
    obj.label1:setWidth(250);
    obj.label1:setHeight(20);
    obj.label1:setText("História");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("White");
    obj.label1:setName("label1");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setTop(200);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(200);
    obj.layout4:setName("layout4");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout4);
    obj.label2:setLeft(405);
    obj.label2:setTop(30);
    obj.label2:setWidth(80);
    obj.label2:setHeight(20);
    obj.label2:setText("Prelúdio");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("Black");
    obj.label2:setName("label2");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setTop(235);
    obj.layout5:setWidth(880);
    obj.layout5:setHeight(270);
    obj.layout5:setName("layout5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(15);
    obj.layout6:setWidth(880);
    obj.layout6:setHeight(270);
    obj.layout6:setName("layout6");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setLeft(20);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(845);
    obj.textEditor1:setHeight(250);
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setField("preludio");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setTop(505);
    obj.layout7:setWidth(880);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout7);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setWidth(880);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout7);
    obj.label3:setLeft(405);
    obj.label3:setTop(2);
    obj.label3:setWidth(250);
    obj.label3:setHeight(20);
    obj.label3:setText("Descrição");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("White");
    obj.label3:setName("label3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setTop(510);
    obj.layout8:setWidth(880);
    obj.layout8:setHeight(350);
    obj.layout8:setName("layout8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout8);
    obj.layout9:setLeft(15);
    obj.layout9:setTop(25);
    obj.layout9:setWidth(880);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout9);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(31);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(80);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout9);
    obj.label4:setLeft(5);
    obj.label4:setTop(3);
    obj.label4:setWidth(100);
    obj.label4:setHeight(20);
    obj.label4:setText("Idade: ");
    obj.label4:setHorzTextAlign("leading");
    obj.label4:setFontSize(12);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout9);
    obj.edit1:setLeft(100);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(150);
    obj.edit1:setHeight(25);
    obj.edit1:setFontColor("black");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setField("idade");
    obj.edit1:setType("number");
    obj.edit1:setName("edit1");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout8);
    obj.layout10:setLeft(15);
    obj.layout10:setTop(55);
    obj.layout10:setWidth(880);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout10);
    obj.rectangle6:setLeft(5);
    obj.rectangle6:setTop(31);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(80);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout10);
    obj.label5:setLeft(5);
    obj.label5:setTop(3);
    obj.label5:setWidth(100);
    obj.label5:setHeight(20);
    obj.label5:setText("Idade Aparente: ");
    obj.label5:setHorzTextAlign("leading");
    obj.label5:setFontSize(12);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout10);
    obj.edit2:setLeft(100);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(150);
    obj.edit2:setHeight(25);
    obj.edit2:setFontColor("black");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setField("idadeAparente");
    obj.edit2:setType("number");
    obj.edit2:setName("edit2");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout8);
    obj.layout11:setLeft(15);
    obj.layout11:setTop(85);
    obj.layout11:setWidth(880);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout11);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(31);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(80);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout11);
    obj.label6:setLeft(5);
    obj.label6:setTop(3);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    obj.label6:setText("Nascimento: ");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setFontSize(12);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout11);
    obj.edit3:setLeft(100);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(150);
    obj.edit3:setHeight(25);
    obj.edit3:setFontColor("black");
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("nascimento");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout8);
    obj.layout12:setLeft(15);
    obj.layout12:setTop(115);
    obj.layout12:setWidth(880);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout12);
    obj.rectangle8:setLeft(5);
    obj.rectangle8:setTop(31);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout12);
    obj.label7:setLeft(5);
    obj.label7:setTop(3);
    obj.label7:setWidth(100);
    obj.label7:setHeight(20);
    obj.label7:setText("Morte: ");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setFontSize(12);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout12);
    obj.edit4:setLeft(100);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(150);
    obj.edit4:setHeight(25);
    obj.edit4:setFontColor("black");
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("morte");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout8);
    obj.layout13:setLeft(15);
    obj.layout13:setTop(145);
    obj.layout13:setWidth(880);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout13);
    obj.rectangle9:setLeft(5);
    obj.rectangle9:setTop(31);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout13);
    obj.label8:setLeft(5);
    obj.label8:setTop(3);
    obj.label8:setWidth(100);
    obj.label8:setHeight(20);
    obj.label8:setText("Cabelos: ");
    obj.label8:setHorzTextAlign("leading");
    obj.label8:setFontSize(12);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout13);
    obj.edit5:setLeft(100);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(150);
    obj.edit5:setHeight(25);
    obj.edit5:setFontColor("black");
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("cabelos");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout8);
    obj.layout14:setLeft(15);
    obj.layout14:setTop(175);
    obj.layout14:setWidth(880);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout14);
    obj.rectangle10:setLeft(5);
    obj.rectangle10:setTop(31);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout14);
    obj.label9:setLeft(5);
    obj.label9:setTop(3);
    obj.label9:setWidth(100);
    obj.label9:setHeight(20);
    obj.label9:setText("Olhos: ");
    obj.label9:setHorzTextAlign("leading");
    obj.label9:setFontSize(12);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout14);
    obj.edit6:setLeft(100);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(150);
    obj.edit6:setHeight(25);
    obj.edit6:setFontColor("black");
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("olhos");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout8);
    obj.layout15:setLeft(15);
    obj.layout15:setTop(205);
    obj.layout15:setWidth(880);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout15);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(31);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout15);
    obj.label10:setLeft(5);
    obj.label10:setTop(3);
    obj.label10:setWidth(100);
    obj.label10:setHeight(20);
    obj.label10:setText("Raça: ");
    obj.label10:setHorzTextAlign("leading");
    obj.label10:setFontSize(12);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout15);
    obj.edit7:setLeft(100);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(150);
    obj.edit7:setHeight(25);
    obj.edit7:setFontColor("black");
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("raca");
    obj.edit7:setType("text");
    obj.edit7:setName("edit7");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout8);
    obj.layout16:setLeft(15);
    obj.layout16:setTop(235);
    obj.layout16:setWidth(880);
    obj.layout16:setHeight(25);
    obj.layout16:setName("layout16");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout16);
    obj.rectangle12:setLeft(5);
    obj.rectangle12:setTop(31);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(80);
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout16);
    obj.label11:setLeft(5);
    obj.label11:setTop(3);
    obj.label11:setWidth(100);
    obj.label11:setHeight(20);
    obj.label11:setText("Nacionalidade: ");
    obj.label11:setHorzTextAlign("leading");
    obj.label11:setFontSize(12);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout16);
    obj.edit8:setLeft(100);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(150);
    obj.edit8:setHeight(25);
    obj.edit8:setFontColor("black");
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("nacionalidade");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout8);
    obj.layout17:setLeft(15);
    obj.layout17:setTop(265);
    obj.layout17:setWidth(880);
    obj.layout17:setHeight(25);
    obj.layout17:setName("layout17");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout17);
    obj.rectangle13:setLeft(5);
    obj.rectangle13:setTop(31);
    obj.rectangle13:setColor("Gainsboro");
    obj.rectangle13:setWidth(80);
    obj.rectangle13:setHeight(25);
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout17);
    obj.label12:setLeft(5);
    obj.label12:setTop(3);
    obj.label12:setWidth(100);
    obj.label12:setHeight(20);
    obj.label12:setText("Altura: ");
    obj.label12:setHorzTextAlign("leading");
    obj.label12:setFontSize(12);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout17);
    obj.edit9:setLeft(100);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(150);
    obj.edit9:setHeight(25);
    obj.edit9:setFontColor("black");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setField("altura");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout8);
    obj.layout18:setLeft(15);
    obj.layout18:setTop(295);
    obj.layout18:setWidth(880);
    obj.layout18:setHeight(25);
    obj.layout18:setName("layout18");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout18);
    obj.rectangle14:setLeft(5);
    obj.rectangle14:setTop(31);
    obj.rectangle14:setColor("Gainsboro");
    obj.rectangle14:setWidth(80);
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout18);
    obj.label13:setLeft(5);
    obj.label13:setTop(3);
    obj.label13:setWidth(100);
    obj.label13:setHeight(20);
    obj.label13:setText("Peso: ");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(12);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout18);
    obj.edit10:setLeft(100);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(150);
    obj.edit10:setHeight(25);
    obj.edit10:setFontColor("black");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setField("peso");
    obj.edit10:setType("text");
    obj.edit10:setName("edit10");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout8);
    obj.layout19:setLeft(15);
    obj.layout19:setTop(325);
    obj.layout19:setWidth(880);
    obj.layout19:setHeight(25);
    obj.layout19:setName("layout19");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout19);
    obj.rectangle15:setLeft(5);
    obj.rectangle15:setTop(31);
    obj.rectangle15:setColor("Gainsboro");
    obj.rectangle15:setWidth(80);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout19);
    obj.label14:setLeft(5);
    obj.label14:setTop(3);
    obj.label14:setWidth(100);
    obj.label14:setHeight(20);
    obj.label14:setText("Sexo: ");
    obj.label14:setHorzTextAlign("leading");
    obj.label14:setFontSize(12);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setName("label14");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout19);
    obj.edit11:setLeft(100);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(150);
    obj.edit11:setHeight(25);
    obj.edit11:setFontColor("black");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setField("sexo");
    obj.edit11:setType("text");
    obj.edit11:setName("edit11");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout8);
    obj.layout20:setLeft(250);
    obj.layout20:setTop(25);
    obj.layout20:setWidth(880);
    obj.layout20:setHeight(350);
    obj.layout20:setName("layout20");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout20);
    obj.textEditor2:setLeft(20);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(595);
    obj.textEditor2:setHeight(325);
    obj.textEditor2:setFontColor("black");
    obj.textEditor2:setField("descricao");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setTop(865);
    obj.layout21:setWidth(880);
    obj.layout21:setHeight(25);
    obj.layout21:setName("layout21");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout21);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setWidth(880);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setName("rectangle16");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout21);
    obj.label15:setLeft(405);
    obj.label15:setTop(2);
    obj.label15:setWidth(250);
    obj.label15:setHeight(20);
    obj.label15:setText("Visuais");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("White");
    obj.label15:setName("label15");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setTop(860);
    obj.layout22:setWidth(880);
    obj.layout22:setHeight(470);
    obj.layout22:setName("layout22");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout22);
    obj.layout23:setLeft(20);
    obj.layout23:setTop(35);
    obj.layout23:setWidth(400);
    obj.layout23:setHeight(400);
    obj.layout23:setName("layout23");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout23);
    obj.label16:setWidth(200);
    obj.label16:setTop(0);
    obj.label16:setLeft(145);
    obj.label16:setText("Círculo de Relações");
    obj.label16:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("Black");
    obj.label16:setName("label16");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout22);
    obj.layout24:setLeft(0);
    obj.layout24:setTop(55);
    obj.layout24:setWidth(500);
    obj.layout24:setHeight(400);
    obj.layout24:setName("layout24");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout24);
    obj.textEditor3:setLeft(20);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(415);
    obj.textEditor3:setHeight(400);
    obj.textEditor3:setFontColor("black");
    obj.textEditor3:setField("circulo");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout22);
    obj.layout25:setLeft(450);
    obj.layout25:setTop(35);
    obj.layout25:setWidth(400);
    obj.layout25:setHeight(400);
    obj.layout25:setName("layout25");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout25);
    obj.label17:setWidth(200);
    obj.label17:setTop(0);
    obj.label17:setLeft(145);
    obj.label17:setText("Esboço do Personagem");
    obj.label17:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("Black");
    obj.label17:setName("label17");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout22);
    obj.layout26:setLeft(430);
    obj.layout26:setTop(55);
    obj.layout26:setWidth(500);
    obj.layout26:setHeight(400);
    obj.layout26:setName("layout26");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout26);
    obj.rectangle17:setLeft(20);
    obj.rectangle17:setTop(0);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setWidth(415);
    obj.rectangle17:setHeight(400);
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);
    obj.rectangle17:setName("rectangle17");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout26);
    obj.rectangle18:setLeft(25);
    obj.rectangle18:setTop(5);
    obj.rectangle18:setColor("white");
    obj.rectangle18:setWidth(405);
    obj.rectangle18:setHeight(390);
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);
    obj.rectangle18:setName("rectangle18");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layout26);
    obj.image2:setLeft(25);
    obj.image2:setTop(5);
    obj.image2:setField("personagem");
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setEditable(true);
    obj.image2:setStyle("proportional");
    obj.image2:setSRC("");
    obj.image2:setWidth(405);
    obj.image2:setHeight(390);
    obj.image2:setName("image2");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newVampiroAMascara4()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_VampiroAMascara4();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _VampiroAMascara4 = {
    newEditor = newVampiroAMascara4, 
    new = newVampiroAMascara4, 
    name = "VampiroAMascara4", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

VampiroAMascara4 = _VampiroAMascara4;
Firecast.registrarForm(_VampiroAMascara4);

return _VampiroAMascara4;
