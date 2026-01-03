require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newTormentafrm()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
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
    obj:setName("Tormentafrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Tormenta.RPGFirecast");
    obj:setTitle("Ficha Tormenta RPG 7.8");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Características");
    obj.tab1:setName("tab1");

    obj.Tormenta01 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta01:setParent(obj.tab1);
    obj.Tormenta01:setName("Tormenta01");
    obj.Tormenta01:setAlign("client");
    obj.Tormenta01:setTheme("light");
    obj.Tormenta01:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.Tormenta01);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("LightGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(530);
    obj.image1:setTop(30);
    obj.image1:setWidth(400);
    obj.image1:setHeight(147);
    obj.image1:setSRC("/TRPG/img/LogoTormenta.png");
    obj.image1:setName("image1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(305);
    obj.layout1:setHeight(55);
    obj.layout1:setName("layout1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(7);
    obj.rectangle2:setTop(1);
    obj.rectangle2:setColor("Black");
    obj.rectangle2:setWidth(170);
    obj.rectangle2:setHeight(23);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(13);
    obj.label1:setTop(1);
    obj.label1:setWidth(170);
    obj.label1:setHeight(20);
    obj.label1:setFontSize(15.0);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("white");
    obj.label1:setText("Nome do Personagem");
    obj.label1:setName("label1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setField("nome");
    obj.edit1:setLeft(1);
    obj.edit1:setTop(23);
    obj.edit1:setWidth(300);
    obj.edit1:setHeight(30);
    obj.edit1:setFontSize(15.0);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setFontColor("black");
    obj.edit1:setName("edit1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(67);
    obj.layout2:setWidth(155);
    obj.layout2:setHeight(55);
    obj.layout2:setName("layout2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(7);
    obj.rectangle3:setTop(1);
    obj.rectangle3:setColor("Black");
    obj.rectangle3:setWidth(46);
    obj.rectangle3:setHeight(23);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(13);
    obj.label2:setTop(1);
    obj.label2:setWidth(170);
    obj.label2:setHeight(20);
    obj.label2:setFontSize(15.0);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("white");
    obj.label2:setText("Raça");
    obj.label2:setName("label2");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setField("raca");
    obj.edit2:setLeft(1);
    obj.edit2:setTop(23);
    obj.edit2:setWidth(150);
    obj.edit2:setHeight(30);
    obj.edit2:setFontSize(15.0);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setFontColor("black");
    obj.edit2:setName("edit2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(10);
    obj.layout3:setTop(124);
    obj.layout3:setWidth(105);
    obj.layout3:setHeight(55);
    obj.layout3:setName("layout3");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setLeft(7);
    obj.rectangle4:setTop(1);
    obj.rectangle4:setColor("Black");
    obj.rectangle4:setWidth(51);
    obj.rectangle4:setHeight(23);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setLeft(13);
    obj.label3:setTop(1);
    obj.label3:setWidth(170);
    obj.label3:setHeight(20);
    obj.label3:setFontSize(15.0);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("white");
    obj.label3:setText("Idade");
    obj.label3:setName("label3");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setField("idade");
    obj.edit3:setLeft(1);
    obj.edit3:setTop(23);
    obj.edit3:setWidth(100);
    obj.edit3:setHeight(30);
    obj.edit3:setFontSize(15.0);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setType("number");
    obj.edit3:setFontColor("black");
    obj.edit3:setName("edit3");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(165);
    obj.layout4:setTop(67);
    obj.layout4:setWidth(150);
    obj.layout4:setHeight(55);
    obj.layout4:setName("layout4");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout4);
    obj.rectangle5:setLeft(7);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setColor("Black");
    obj.rectangle5:setWidth(84);
    obj.rectangle5:setHeight(23);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setLeft(13);
    obj.label4:setTop(1);
    obj.label4:setWidth(170);
    obj.label4:setHeight(20);
    obj.label4:setFontSize(15.0);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("white");
    obj.label4:setText("Tendência");
    obj.label4:setName("label4");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setField("tendencia");
    obj.edit4:setLeft(1);
    obj.edit4:setTop(23);
    obj.edit4:setWidth(145);
    obj.edit4:setHeight(30);
    obj.edit4:setFontSize(15.0);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setFontColor("black");
    obj.edit4:setName("edit4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(115);
    obj.layout5:setTop(124);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(55);
    obj.layout5:setName("layout5");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setLeft(7);
    obj.rectangle6:setTop(1);
    obj.rectangle6:setColor("Black");
    obj.rectangle6:setWidth(45);
    obj.rectangle6:setHeight(23);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setLeft(13);
    obj.label5:setTop(1);
    obj.label5:setWidth(45);
    obj.label5:setHeight(20);
    obj.label5:setFontSize(15.0);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("white");
    obj.label5:setText("Sexo");
    obj.label5:setName("label5");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setField("sexo");
    obj.edit5:setLeft(1);
    obj.edit5:setTop(23);
    obj.edit5:setWidth(195);
    obj.edit5:setHeight(30);
    obj.edit5:setFontSize(15.0);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setFontColor("black");
    obj.edit5:setName("edit5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(315);
    obj.layout6:setTop(10);
    obj.layout6:setWidth(129);
    obj.layout6:setHeight(55);
    obj.layout6:setName("layout6");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setLeft(7);
    obj.rectangle7:setTop(1);
    obj.rectangle7:setColor("Black");
    obj.rectangle7:setWidth(76);
    obj.rectangle7:setHeight(23);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setLeft(13);
    obj.label6:setTop(1);
    obj.label6:setWidth(170);
    obj.label6:setHeight(20);
    obj.label6:setFontSize(15.0);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("white");
    obj.label6:setText("Tamanho");
    obj.label6:setName("label6");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setField("tamanho");
    obj.edit6:setLeft(1);
    obj.edit6:setTop(23);
    obj.edit6:setWidth(124);
    obj.edit6:setHeight(30);
    obj.edit6:setFontSize(15.0);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setFontColor("black");
    obj.edit6:setName("edit6");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(315);
    obj.layout7:setTop(67);
    obj.layout7:setWidth(129);
    obj.layout7:setHeight(55);
    obj.layout7:setName("layout7");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout7);
    obj.rectangle8:setLeft(7);
    obj.rectangle8:setTop(1);
    obj.rectangle8:setColor("Black");
    obj.rectangle8:setWidth(112);
    obj.rectangle8:setHeight(23);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout7);
    obj.label7:setLeft(13);
    obj.label7:setTop(1);
    obj.label7:setWidth(170);
    obj.label7:setHeight(20);
    obj.label7:setFontSize(15.0);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("white");
    obj.label7:setText("Deslocamento");
    obj.label7:setName("label7");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setField("deslocamento");
    obj.edit7:setLeft(1);
    obj.edit7:setTop(23);
    obj.edit7:setWidth(124);
    obj.edit7:setHeight(30);
    obj.edit7:setFontSize(15.0);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setFontColor("black");
    obj.edit7:setName("edit7");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(315);
    obj.layout8:setTop(124);
    obj.layout8:setWidth(129);
    obj.layout8:setHeight(55);
    obj.layout8:setName("layout8");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout8);
    obj.rectangle9:setLeft(7);
    obj.rectangle9:setTop(1);
    obj.rectangle9:setColor("Black");
    obj.rectangle9:setWidth(84);
    obj.rectangle9:setHeight(23);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setLeft(13);
    obj.label8:setTop(1);
    obj.label8:setWidth(170);
    obj.label8:setHeight(20);
    obj.label8:setFontSize(15.0);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("white");
    obj.label8:setText("Divindade");
    obj.label8:setName("label8");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setField("divindade");
    obj.edit8:setLeft(1);
    obj.edit8:setTop(23);
    obj.edit8:setWidth(124);
    obj.edit8:setHeight(30);
    obj.edit8:setFontSize(15.0);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setFontColor("black");
    obj.edit8:setName("edit8");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(1);
    obj.layout9:setTop(220);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(200);
    obj.layout9:setName("layout9");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setLeft(57);
    obj.rectangle10:setTop(3);
    obj.rectangle10:setColor("Black");
    obj.rectangle10:setWidth(60);
    obj.rectangle10:setHeight(15);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout9);
    obj.label9:setLeft(59);
    obj.label9:setTop(5);
    obj.label9:setWidth(65);
    obj.label9:setHeight(8);
    obj.label9:setFontSize(10);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("white");
    obj.label9:setText("Habilidades");
    obj.label9:setName("label9");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout9);
    obj.rectangle11:setLeft(181);
    obj.rectangle11:setTop(3);
    obj.rectangle11:setColor("Black");
    obj.rectangle11:setWidth(28);
    obj.rectangle11:setHeight(15);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setLeft(183);
    obj.label10:setTop(5);
    obj.label10:setWidth(28);
    obj.label10:setHeight(8);
    obj.label10:setFontSize(10);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("white");
    obj.label10:setText("Valor");
    obj.label10:setName("label10");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout9);
    obj.rectangle12:setLeft(216);
    obj.rectangle12:setTop(3);
    obj.rectangle12:setColor("Black");
    obj.rectangle12:setWidth(28);
    obj.rectangle12:setHeight(15);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout9);
    obj.label11:setLeft(219);
    obj.label11:setTop(5);
    obj.label11:setWidth(28);
    obj.label11:setHeight(8);
    obj.label11:setFontSize(10);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("white");
    obj.label11:setText("Mod");
    obj.label11:setName("label11");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout9);
    obj.rectangle13:setLeft(251);
    obj.rectangle13:setTop(3);
    obj.rectangle13:setColor("Black");
    obj.rectangle13:setWidth(28);
    obj.rectangle13:setHeight(15);
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout9);
    obj.label12:setLeft(253);
    obj.label12:setTop(5);
    obj.label12:setWidth(28);
    obj.label12:setHeight(8);
    obj.label12:setFontSize(10);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("white");
    obj.label12:setText("Dano");
    obj.label12:setName("label12");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setLeft(5);
    obj.layout10:setTop(15);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout10);
    obj.rectangle14:setLeft(5);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setColor("Black");
    obj.rectangle14:setWidth(155);
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout10);
    obj.label13:setLeft(8);
    obj.label13:setTop(4);
    obj.label13:setWidth(155);
    obj.label13:setHeight(20);
    obj.label13:setText("Força(FOR)");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(15.0);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("white");
    obj.label13:setName("label13");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout10);
    obj.edit9:setLeft(175);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(30);
    obj.edit9:setHeight(25);
    obj.edit9:setField("forca");
    obj.edit9:setType("number");
    obj.edit9:setMin(-99);
    obj.edit9:setMax(99);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(15.0);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setFontColor("black");
    obj.edit9:setName("edit9");

    obj.modforca = gui.fromHandle(_obj_newObject("edit"));
    obj.modforca:setParent(obj.layout10);
    obj.modforca:setLeft(210);
    obj.modforca:setTop(0);
    obj.modforca:setWidth(30);
    obj.modforca:setHeight(25);
    obj.modforca:setName("modforca");
    obj.modforca:setField("modforca");
    obj.modforca:setType("number");
    obj.modforca:setMin(-99);
    obj.modforca:setMax(99);
    obj.modforca:setHorzTextAlign("center");
    obj.modforca:setFontSize(15.0);
    obj.modforca:setFontColor("black");
    lfm_setPropAsString(obj.modforca, "fontStyle",  "bold");
    obj.modforca:setHitTest(false);

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setLeft(245);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(30);
    obj.edit10:setHeight(25);
    obj.edit10:setField("danoforca");
    obj.edit10:setType("number");
    obj.edit10:setMin(-99);
    obj.edit10:setMax(99);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(15.0);
    obj.edit10:setFontColor("black");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout10);
    obj.button1:setLeft(8);
    obj.button1:setTop(4);
    obj.button1:setWidth(155);
    obj.button1:setHeight(20);
    obj.button1:setOpacity(0.0);
    obj.button1:setCanFocus(false);
    obj.button1:setCursor("handPoint");
    obj.button1:setHint("Rolar 1d20 + Força");
    obj.button1:setName("button1");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(45);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout11);
    obj.rectangle15:setLeft(5);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setColor("Black");
    obj.rectangle15:setWidth(155);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout11);
    obj.label14:setLeft(8);
    obj.label14:setTop(4);
    obj.label14:setWidth(155);
    obj.label14:setHeight(20);
    obj.label14:setText("Destreza(DES)");
    obj.label14:setHorzTextAlign("leading");
    obj.label14:setFontSize(15.0);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("white");
    obj.label14:setName("label14");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setLeft(175);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(30);
    obj.edit11:setHeight(25);
    obj.edit11:setField("destreza");
    obj.edit11:setType("number");
    obj.edit11:setMin(-99);
    obj.edit11:setMax(99);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(15.0);
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setFontColor("black");
    obj.edit11:setName("edit11");

    obj.moddestreza = gui.fromHandle(_obj_newObject("edit"));
    obj.moddestreza:setParent(obj.layout11);
    obj.moddestreza:setLeft(210);
    obj.moddestreza:setTop(0);
    obj.moddestreza:setWidth(30);
    obj.moddestreza:setHeight(25);
    obj.moddestreza:setName("moddestreza");
    obj.moddestreza:setField("moddestreza");
    obj.moddestreza:setType("number");
    obj.moddestreza:setMin(-99);
    obj.moddestreza:setMax(99);
    obj.moddestreza:setHorzTextAlign("center");
    obj.moddestreza:setFontSize(15.0);
    obj.moddestreza:setFontColor("black");
    lfm_setPropAsString(obj.moddestreza, "fontStyle",  "bold");
    obj.moddestreza:setHitTest(false);

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout11);
    obj.edit12:setLeft(245);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(30);
    obj.edit12:setHeight(25);
    obj.edit12:setField("danodestreza");
    obj.edit12:setType("number");
    obj.edit12:setMin(-99);
    obj.edit12:setMax(99);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(15.0);
    obj.edit12:setFontColor("black");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout11);
    obj.button2:setLeft(8);
    obj.button2:setTop(4);
    obj.button2:setWidth(155);
    obj.button2:setHeight(20);
    obj.button2:setOpacity(0.0);
    obj.button2:setCanFocus(false);
    obj.button2:setCursor("handPoint");
    obj.button2:setHint("Rolar 1d20 + Destreza");
    obj.button2:setName("button2");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout9);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(75);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout12);
    obj.rectangle16:setLeft(5);
    obj.rectangle16:setTop(0);
    obj.rectangle16:setColor("Black");
    obj.rectangle16:setWidth(155);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);
    obj.rectangle16:setName("rectangle16");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout12);
    obj.label15:setLeft(8);
    obj.label15:setTop(4);
    obj.label15:setWidth(155);
    obj.label15:setHeight(20);
    obj.label15:setText("Constituição(CON)");
    obj.label15:setHorzTextAlign("leading");
    obj.label15:setFontSize(15.0);
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("white");
    obj.label15:setName("label15");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout12);
    obj.edit13:setLeft(175);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(30);
    obj.edit13:setHeight(25);
    obj.edit13:setField("constituicao");
    obj.edit13:setType("number");
    obj.edit13:setMin(-99);
    obj.edit13:setMax(99);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontSize(15.0);
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setFontColor("black");
    obj.edit13:setName("edit13");

    obj.modconstituicao = gui.fromHandle(_obj_newObject("edit"));
    obj.modconstituicao:setParent(obj.layout12);
    obj.modconstituicao:setLeft(210);
    obj.modconstituicao:setTop(0);
    obj.modconstituicao:setWidth(30);
    obj.modconstituicao:setHeight(25);
    obj.modconstituicao:setName("modconstituicao");
    obj.modconstituicao:setField("modconstituicao");
    obj.modconstituicao:setType("number");
    obj.modconstituicao:setMin(-99);
    obj.modconstituicao:setMax(99);
    obj.modconstituicao:setHorzTextAlign("center");
    obj.modconstituicao:setFontSize(15.0);
    obj.modconstituicao:setFontColor("black");
    lfm_setPropAsString(obj.modconstituicao, "fontStyle",  "bold");
    obj.modconstituicao:setHitTest(false);

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout12);
    obj.edit14:setLeft(245);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(30);
    obj.edit14:setHeight(25);
    obj.edit14:setField("danoconstituicao");
    obj.edit14:setType("number");
    obj.edit14:setMin(-99);
    obj.edit14:setMax(99);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(15.0);
    obj.edit14:setFontColor("black");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout12);
    obj.button3:setLeft(8);
    obj.button3:setTop(4);
    obj.button3:setWidth(155);
    obj.button3:setHeight(20);
    obj.button3:setOpacity(0.0);
    obj.button3:setCanFocus(false);
    obj.button3:setCursor("handPoint");
    obj.button3:setHint("Rolar 1d20 + Constituição");
    obj.button3:setName("button3");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout9);
    obj.layout13:setLeft(5);
    obj.layout13:setTop(105);
    obj.layout13:setWidth(290);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout13);
    obj.rectangle17:setLeft(5);
    obj.rectangle17:setTop(0);
    obj.rectangle17:setColor("Black");
    obj.rectangle17:setWidth(155);
    obj.rectangle17:setHeight(25);
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);
    obj.rectangle17:setName("rectangle17");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout13);
    obj.label16:setLeft(8);
    obj.label16:setTop(4);
    obj.label16:setWidth(155);
    obj.label16:setHeight(20);
    obj.label16:setText("Inteligência(INT)");
    obj.label16:setHorzTextAlign("leading");
    obj.label16:setFontSize(15.0);
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("white");
    obj.label16:setName("label16");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout13);
    obj.edit15:setLeft(175);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(30);
    obj.edit15:setHeight(25);
    obj.edit15:setField("inteligencia");
    obj.edit15:setType("number");
    obj.edit15:setMin(-99);
    obj.edit15:setMax(99);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontSize(15.0);
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setFontColor("black");
    obj.edit15:setName("edit15");

    obj.modinteligencia = gui.fromHandle(_obj_newObject("edit"));
    obj.modinteligencia:setParent(obj.layout13);
    obj.modinteligencia:setLeft(210);
    obj.modinteligencia:setTop(0);
    obj.modinteligencia:setWidth(30);
    obj.modinteligencia:setHeight(25);
    obj.modinteligencia:setName("modinteligencia");
    obj.modinteligencia:setField("modinteligencia");
    obj.modinteligencia:setType("number");
    obj.modinteligencia:setMin(-99);
    obj.modinteligencia:setMax(99);
    obj.modinteligencia:setHorzTextAlign("center");
    obj.modinteligencia:setFontSize(15.0);
    obj.modinteligencia:setFontColor("black");
    lfm_setPropAsString(obj.modinteligencia, "fontStyle",  "bold");
    obj.modinteligencia:setHitTest(false);

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout13);
    obj.edit16:setLeft(245);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(30);
    obj.edit16:setHeight(25);
    obj.edit16:setField("danointeligencia");
    obj.edit16:setType("number");
    obj.edit16:setMin(-99);
    obj.edit16:setMax(99);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontSize(15.0);
    obj.edit16:setFontColor("black");
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout13);
    obj.button4:setLeft(8);
    obj.button4:setTop(4);
    obj.button4:setWidth(155);
    obj.button4:setHeight(20);
    obj.button4:setOpacity(0.0);
    obj.button4:setCanFocus(false);
    obj.button4:setCursor("handPoint");
    obj.button4:setHint("Rolar 1d20 + Inteligência");
    obj.button4:setName("button4");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout9);
    obj.layout14:setLeft(5);
    obj.layout14:setTop(135);
    obj.layout14:setWidth(290);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout14);
    obj.rectangle18:setLeft(5);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setColor("Black");
    obj.rectangle18:setWidth(155);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);
    obj.rectangle18:setName("rectangle18");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setLeft(8);
    obj.label17:setTop(4);
    obj.label17:setWidth(155);
    obj.label17:setHeight(20);
    obj.label17:setText("Sabedoria(SAB)");
    obj.label17:setHorzTextAlign("leading");
    obj.label17:setFontSize(15.0);
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("white");
    obj.label17:setName("label17");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout14);
    obj.edit17:setLeft(175);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(30);
    obj.edit17:setHeight(25);
    obj.edit17:setField("sabedoria");
    obj.edit17:setType("number");
    obj.edit17:setMin(-99);
    obj.edit17:setMax(99);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontSize(15.0);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setFontColor("black");
    obj.edit17:setName("edit17");

    obj.modsabedoria = gui.fromHandle(_obj_newObject("edit"));
    obj.modsabedoria:setParent(obj.layout14);
    obj.modsabedoria:setLeft(210);
    obj.modsabedoria:setTop(0);
    obj.modsabedoria:setWidth(30);
    obj.modsabedoria:setHeight(25);
    obj.modsabedoria:setName("modsabedoria");
    obj.modsabedoria:setField("modsabedoria");
    obj.modsabedoria:setType("number");
    obj.modsabedoria:setMin(-99);
    obj.modsabedoria:setMax(99);
    obj.modsabedoria:setHorzTextAlign("center");
    obj.modsabedoria:setFontSize(15.0);
    obj.modsabedoria:setFontColor("black");
    lfm_setPropAsString(obj.modsabedoria, "fontStyle",  "bold");
    obj.modsabedoria:setHitTest(false);

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout14);
    obj.edit18:setLeft(245);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(30);
    obj.edit18:setHeight(25);
    obj.edit18:setField("danosabedoria");
    obj.edit18:setType("number");
    obj.edit18:setMin(-99);
    obj.edit18:setMax(99);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontSize(15.0);
    obj.edit18:setFontColor("black");
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setName("edit18");

    obj.button5 = gui.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout14);
    obj.button5:setLeft(8);
    obj.button5:setTop(4);
    obj.button5:setWidth(155);
    obj.button5:setHeight(20);
    obj.button5:setOpacity(0.0);
    obj.button5:setCanFocus(false);
    obj.button5:setCursor("handPoint");
    obj.button5:setHint("Rolar 1d20 + Sabedoria");
    obj.button5:setName("button5");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout9);
    obj.layout15:setLeft(5);
    obj.layout15:setTop(165);
    obj.layout15:setWidth(290);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout15);
    obj.rectangle19:setLeft(5);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setColor("Black");
    obj.rectangle19:setWidth(155);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setXradius(2);
    obj.rectangle19:setYradius(2);
    obj.rectangle19:setName("rectangle19");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout15);
    obj.label18:setLeft(8);
    obj.label18:setTop(4);
    obj.label18:setWidth(155);
    obj.label18:setHeight(20);
    obj.label18:setText("Carisma(CAR)");
    obj.label18:setHorzTextAlign("leading");
    obj.label18:setFontSize(15.0);
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("white");
    obj.label18:setName("label18");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout15);
    obj.edit19:setLeft(175);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(30);
    obj.edit19:setHeight(25);
    obj.edit19:setField("carisma");
    obj.edit19:setType("number");
    obj.edit19:setMin(-99);
    obj.edit19:setMax(99);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontSize(15.0);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setFontColor("black");
    obj.edit19:setName("edit19");

    obj.modcarisma = gui.fromHandle(_obj_newObject("edit"));
    obj.modcarisma:setParent(obj.layout15);
    obj.modcarisma:setLeft(210);
    obj.modcarisma:setTop(0);
    obj.modcarisma:setWidth(30);
    obj.modcarisma:setHeight(25);
    obj.modcarisma:setName("modcarisma");
    obj.modcarisma:setField("modcarisma");
    obj.modcarisma:setType("number");
    obj.modcarisma:setMin(-99);
    obj.modcarisma:setMax(99);
    obj.modcarisma:setHorzTextAlign("center");
    obj.modcarisma:setFontSize(15.0);
    obj.modcarisma:setFontColor("black");
    lfm_setPropAsString(obj.modcarisma, "fontStyle",  "bold");
    obj.modcarisma:setHitTest(false);

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout15);
    obj.edit20:setLeft(245);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(30);
    obj.edit20:setHeight(25);
    obj.edit20:setField("danocarisma");
    obj.edit20:setType("number");
    obj.edit20:setMin(-99);
    obj.edit20:setMax(99);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontSize(15.0);
    obj.edit20:setFontColor("black");
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setName("edit20");

    obj.button6 = gui.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout15);
    obj.button6:setLeft(8);
    obj.button6:setTop(4);
    obj.button6:setWidth(155);
    obj.button6:setHeight(20);
    obj.button6:setOpacity(0.0);
    obj.button6:setCanFocus(false);
    obj.button6:setCursor("handPoint");
    obj.button6:setHint("Rolar 1d20 + Carisma");
    obj.button6:setName("button6");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(285);
    obj.layout16:setTop(220);
    obj.layout16:setWidth(600);
    obj.layout16:setHeight(41);
    obj.layout16:setName("layout16");

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout16);
    obj.rectangle20:setLeft(1);
    obj.rectangle20:setTop(15);
    obj.rectangle20:setColor("Black");
    obj.rectangle20:setWidth(95);
    obj.rectangle20:setHeight(25);
    obj.rectangle20:setXradius(2);
    obj.rectangle20:setYradius(2);
    obj.rectangle20:setName("rectangle20");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout16);
    obj.label19:setLeft(39);
    obj.label19:setTop(9);
    obj.label19:setWidth(25);
    obj.label19:setHeight(25);
    obj.label19:setFontSize(14);
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("white");
    obj.label19:setText("CA");
    obj.label19:setName("label19");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout16);
    obj.label20:setLeft(4);
    obj.label20:setTop(20);
    obj.label20:setWidth(100);
    obj.label20:setHeight(25);
    obj.label20:setFontSize(10);
    obj.label20:setFontColor("white");
    obj.label20:setText("Classe de Armadura");
    obj.label20:setName("label20");

    obj.rectangle21 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout16);
    obj.rectangle21:setLeft(116);
    obj.rectangle21:setTop(3);
    obj.rectangle21:setColor("Black");
    obj.rectangle21:setWidth(28);
    obj.rectangle21:setHeight(15);
    obj.rectangle21:setXradius(2);
    obj.rectangle21:setYradius(2);
    obj.rectangle21:setName("rectangle21");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout16);
    obj.label21:setLeft(118);
    obj.label21:setTop(5);
    obj.label21:setWidth(28);
    obj.label21:setHeight(8);
    obj.label21:setFontSize(10);
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontColor("white");
    obj.label21:setText("Total");
    obj.label21:setName("label21");

    obj.totalca = gui.fromHandle(_obj_newObject("edit"));
    obj.totalca:setParent(obj.layout16);
    obj.totalca:setLeft(100);
    obj.totalca:setTop(15);
    obj.totalca:setWidth(60);
    obj.totalca:setHeight(25);
    obj.totalca:setName("totalca");
    obj.totalca:setField("totalca");
    obj.totalca:setType("number");
    obj.totalca:setHorzTextAlign("center");
    obj.totalca:setFontSize(15.0);
    lfm_setPropAsString(obj.totalca, "fontStyle",  "bold");
    obj.totalca:setFontColor("black");
    obj.totalca:setHitTest(false);

    obj.rectangle22 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout16);
    obj.rectangle22:setLeft(163);
    obj.rectangle22:setTop(20);
    obj.rectangle22:setColor("Black");
    obj.rectangle22:setWidth(20);
    obj.rectangle22:setHeight(15);
    obj.rectangle22:setXradius(2);
    obj.rectangle22:setYradius(2);
    obj.rectangle22:setName("rectangle22");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout16);
    obj.label22:setLeft(166);
    obj.label22:setTop(18);
    obj.label22:setWidth(20);
    obj.label22:setHeight(15);
    obj.label22:setFontSize(20);
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontColor("white");
    obj.label22:setText("=");
    obj.label22:setName("label22");

    obj.rectangle23 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout16);
    obj.rectangle23:setLeft(190);
    obj.rectangle23:setTop(3);
    obj.rectangle23:setColor("Black");
    obj.rectangle23:setWidth(52);
    obj.rectangle23:setHeight(15);
    obj.rectangle23:setXradius(2);
    obj.rectangle23:setYradius(2);
    obj.rectangle23:setName("rectangle23");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout16);
    obj.label23:setLeft(190);
    obj.label23:setTop(5);
    obj.label23:setWidth(58);
    obj.label23:setHeight(8);
    obj.label23:setFontSize(10);
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontColor("white");
    obj.label23:setText("1/2 Nv+10");
    obj.label23:setName("label23");

    obj.ca1 = gui.fromHandle(_obj_newObject("edit"));
    obj.ca1:setParent(obj.layout16);
    obj.ca1:setLeft(186);
    obj.ca1:setTop(15);
    obj.ca1:setWidth(60);
    obj.ca1:setHeight(25);
    obj.ca1:setName("ca1");
    obj.ca1:setField("ca1");
    obj.ca1:setType("number");
    obj.ca1:setHorzTextAlign("center");
    obj.ca1:setFontSize(15.0);
    lfm_setPropAsString(obj.ca1, "fontStyle",  "bold");
    obj.ca1:setFontColor("black");
    obj.ca1:setHitTest(false);

    obj.rectangle24 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout16);
    obj.rectangle24:setLeft(249);
    obj.rectangle24:setTop(20);
    obj.rectangle24:setColor("Black");
    obj.rectangle24:setWidth(20);
    obj.rectangle24:setHeight(15);
    obj.rectangle24:setXradius(2);
    obj.rectangle24:setYradius(2);
    obj.rectangle24:setName("rectangle24");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout16);
    obj.label24:setLeft(252);
    obj.label24:setTop(18);
    obj.label24:setWidth(20);
    obj.label24:setHeight(15);
    obj.label24:setFontSize(20);
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontColor("white");
    obj.label24:setText("+");
    obj.label24:setName("label24");

    obj.rectangle25 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout16);
    obj.rectangle25:setLeft(278);
    obj.rectangle25:setTop(3);
    obj.rectangle25:setColor("Black");
    obj.rectangle25:setWidth(48);
    obj.rectangle25:setHeight(15);
    obj.rectangle25:setXradius(2);
    obj.rectangle25:setYradius(2);
    obj.rectangle25:setName("rectangle25");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout16);
    obj.label25:setLeft(286);
    obj.label25:setTop(5);
    obj.label25:setWidth(48);
    obj.label25:setHeight(8);
    obj.label25:setFontSize(10);
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontColor("white");
    obj.label25:setText("Mod H");
    obj.label25:setName("label25");

    obj.ca2 = gui.fromHandle(_obj_newObject("edit"));
    obj.ca2:setParent(obj.layout16);
    obj.ca2:setLeft(272);
    obj.ca2:setTop(15);
    obj.ca2:setWidth(60);
    obj.ca2:setHeight(25);
    obj.ca2:setName("ca2");
    obj.ca2:setField("ca2");
    obj.ca2:setType("number");
    obj.ca2:setHorzTextAlign("center");
    obj.ca2:setFontSize(15.0);
    lfm_setPropAsString(obj.ca2, "fontStyle",  "bold");
    obj.ca2:setFontColor("black");
    obj.ca2:setHitTest(false);

    obj.rectangle26 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout16);
    obj.rectangle26:setLeft(335);
    obj.rectangle26:setTop(20);
    obj.rectangle26:setColor("Black");
    obj.rectangle26:setWidth(20);
    obj.rectangle26:setHeight(15);
    obj.rectangle26:setXradius(2);
    obj.rectangle26:setYradius(2);
    obj.rectangle26:setName("rectangle26");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout16);
    obj.label26:setLeft(338);
    obj.label26:setTop(18);
    obj.label26:setWidth(20);
    obj.label26:setHeight(15);
    obj.label26:setFontSize(20);
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontColor("white");
    obj.label26:setText("+");
    obj.label26:setName("label26");

    obj.rectangle27 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout16);
    obj.rectangle27:setLeft(361);
    obj.rectangle27:setTop(3);
    obj.rectangle27:setColor("Black");
    obj.rectangle27:setWidth(54);
    obj.rectangle27:setHeight(15);
    obj.rectangle27:setXradius(2);
    obj.rectangle27:setYradius(2);
    obj.rectangle27:setName("rectangle27");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout16);
    obj.label27:setLeft(364);
    obj.label27:setTop(5);
    obj.label27:setWidth(48);
    obj.label27:setHeight(8);
    obj.label27:setFontSize(10);
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontColor("white");
    obj.label27:setText("Armadura");
    obj.label27:setName("label27");

    obj.ca3 = gui.fromHandle(_obj_newObject("edit"));
    obj.ca3:setParent(obj.layout16);
    obj.ca3:setLeft(358);
    obj.ca3:setTop(15);
    obj.ca3:setWidth(60);
    obj.ca3:setHeight(25);
    obj.ca3:setName("ca3");
    obj.ca3:setField("ca3");
    obj.ca3:setType("number");
    obj.ca3:setHorzTextAlign("center");
    obj.ca3:setFontSize(15.0);
    lfm_setPropAsString(obj.ca3, "fontStyle",  "bold");
    obj.ca3:setFontColor("black");

    obj.rectangle28 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout16);
    obj.rectangle28:setLeft(421);
    obj.rectangle28:setTop(20);
    obj.rectangle28:setColor("Black");
    obj.rectangle28:setWidth(20);
    obj.rectangle28:setHeight(15);
    obj.rectangle28:setXradius(2);
    obj.rectangle28:setYradius(2);
    obj.rectangle28:setName("rectangle28");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout16);
    obj.label28:setLeft(424);
    obj.label28:setTop(18);
    obj.label28:setWidth(20);
    obj.label28:setHeight(15);
    obj.label28:setFontSize(20);
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontColor("white");
    obj.label28:setText("+");
    obj.label28:setName("label28");

    obj.rectangle29 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout16);
    obj.rectangle29:setLeft(454);
    obj.rectangle29:setTop(3);
    obj.rectangle29:setColor("Black");
    obj.rectangle29:setWidth(40);
    obj.rectangle29:setHeight(15);
    obj.rectangle29:setXradius(2);
    obj.rectangle29:setYradius(2);
    obj.rectangle29:setName("rectangle29");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout16);
    obj.label29:setLeft(457);
    obj.label29:setTop(5);
    obj.label29:setWidth(48);
    obj.label29:setHeight(8);
    obj.label29:setFontSize(10);
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontColor("white");
    obj.label29:setText("Escudo");
    obj.label29:setName("label29");

    obj.ca4 = gui.fromHandle(_obj_newObject("edit"));
    obj.ca4:setParent(obj.layout16);
    obj.ca4:setLeft(444);
    obj.ca4:setTop(15);
    obj.ca4:setWidth(60);
    obj.ca4:setHeight(25);
    obj.ca4:setName("ca4");
    obj.ca4:setField("ca4");
    obj.ca4:setType("number");
    obj.ca4:setMin(-99);
    obj.ca4:setMax(99);
    obj.ca4:setHorzTextAlign("center");
    obj.ca4:setFontSize(15.0);
    lfm_setPropAsString(obj.ca4, "fontStyle",  "bold");
    obj.ca4:setFontColor("black");

    obj.rectangle30 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout16);
    obj.rectangle30:setLeft(507);
    obj.rectangle30:setTop(20);
    obj.rectangle30:setColor("Black");
    obj.rectangle30:setWidth(20);
    obj.rectangle30:setHeight(15);
    obj.rectangle30:setXradius(2);
    obj.rectangle30:setYradius(2);
    obj.rectangle30:setName("rectangle30");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout16);
    obj.label30:setLeft(510);
    obj.label30:setTop(18);
    obj.label30:setWidth(20);
    obj.label30:setHeight(15);
    obj.label30:setFontSize(20);
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontColor("white");
    obj.label30:setText("+");
    obj.label30:setName("label30");

    obj.rectangle31 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout16);
    obj.rectangle31:setLeft(540);
    obj.rectangle31:setTop(3);
    obj.rectangle31:setColor("Black");
    obj.rectangle31:setWidth(40);
    obj.rectangle31:setHeight(15);
    obj.rectangle31:setXradius(2);
    obj.rectangle31:setYradius(2);
    obj.rectangle31:setName("rectangle31");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout16);
    obj.label31:setLeft(543);
    obj.label31:setTop(5);
    obj.label31:setWidth(48);
    obj.label31:setHeight(8);
    obj.label31:setFontSize(10);
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontColor("white");
    obj.label31:setText("Outros");
    obj.label31:setName("label31");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout16);
    obj.edit21:setLeft(530);
    obj.edit21:setTop(15);
    obj.edit21:setWidth(60);
    obj.edit21:setHeight(25);
    obj.edit21:setField("ca5");
    obj.edit21:setType("number");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setFontSize(15.0);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setFontColor("black");
    obj.edit21:setName("edit21");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(880);
    obj.layout17:setTop(220);
    obj.layout17:setWidth(200);
    obj.layout17:setHeight(41);
    obj.layout17:setName("layout17");

    obj.rectangle32 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout17);
    obj.rectangle32:setLeft(1);
    obj.rectangle32:setTop(15);
    obj.rectangle32:setColor("Black");
    obj.rectangle32:setWidth(85);
    obj.rectangle32:setHeight(25);
    obj.rectangle32:setXradius(2);
    obj.rectangle32:setYradius(2);
    obj.rectangle32:setName("rectangle32");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout17);
    obj.label32:setLeft(34);
    obj.label32:setTop(9);
    obj.label32:setWidth(25);
    obj.label32:setHeight(25);
    obj.label32:setFontSize(14);
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontColor("white");
    obj.label32:setText("RD");
    obj.label32:setName("label32");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout17);
    obj.label33:setLeft(4);
    obj.label33:setTop(20);
    obj.label33:setWidth(100);
    obj.label33:setHeight(25);
    obj.label33:setFontSize(10);
    obj.label33:setFontColor("white");
    obj.label33:setText("Redução de Dano");
    obj.label33:setName("label33");

    obj.rectangle33 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout17);
    obj.rectangle33:setLeft(92);
    obj.rectangle33:setTop(3);
    obj.rectangle33:setColor("Black");
    obj.rectangle33:setWidth(28);
    obj.rectangle33:setHeight(15);
    obj.rectangle33:setXradius(2);
    obj.rectangle33:setYradius(2);
    obj.rectangle33:setName("rectangle33");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout17);
    obj.label34:setLeft(94);
    obj.label34:setTop(5);
    obj.label34:setWidth(28);
    obj.label34:setHeight(8);
    obj.label34:setFontSize(10);
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontColor("white");
    obj.label34:setText("Total");
    obj.label34:setName("label34");

    obj.rd = gui.fromHandle(_obj_newObject("edit"));
    obj.rd:setParent(obj.layout17);
    obj.rd:setLeft(90);
    obj.rd:setTop(15);
    obj.rd:setWidth(33);
    obj.rd:setHeight(25);
    obj.rd:setName("rd");
    obj.rd:setField("rd");
    obj.rd:setType("number");
    obj.rd:setHorzTextAlign("center");
    obj.rd:setFontSize(15.0);
    lfm_setPropAsString(obj.rd, "fontStyle",  "bold");
    obj.rd:setFontColor("black");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(308);
    obj.layout18:setTop(270);
    obj.layout18:setWidth(448);
    obj.layout18:setHeight(41);
    obj.layout18:setName("layout18");

    obj.button7 = gui.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout18);
    obj.button7:setLeft(0);
    obj.button7:setTop(18);
    obj.button7:setWidth(20);
    obj.button7:setHeight(20);
    obj.button7:setText("H");
    obj.button7:setFontSize(12);
    obj.button7:setFontColor("black");
    obj.button7:setOpacity(1.0);
    obj.button7:setCanFocus(false);
    obj.button7:setCursor("handPoint");
    obj.button7:setHint("Escolher habilidade base");
    obj.button7:setName("button7");

    obj.rectangle34 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout18);
    obj.rectangle34:setLeft(22);
    obj.rectangle34:setTop(15);
    obj.rectangle34:setColor("Black");
    obj.rectangle34:setWidth(50);
    obj.rectangle34:setHeight(25);
    obj.rectangle34:setXradius(2);
    obj.rectangle34:setYradius(2);
    obj.rectangle34:setName("rectangle34");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout18);
    obj.label35:setLeft(29);
    obj.label35:setTop(9);
    obj.label35:setWidth(35);
    obj.label35:setHeight(25);
    obj.label35:setFontSize(14);
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontColor("white");
    obj.label35:setText("FORT");
    obj.label35:setName("label35");

    obj.button8 = gui.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.layout18);
    obj.button8:setLeft(22);
    obj.button8:setTop(15);
    obj.button8:setWidth(50);
    obj.button8:setHeight(25);
    obj.button8:setOpacity(0.0);
    obj.button8:setCanFocus(false);
    obj.button8:setCursor("handPoint");
    obj.button8:setHint("Rolar 1d20 + Fortitude");
    obj.button8:setName("button8");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout18);
    obj.label36:setLeft(27);
    obj.label36:setTop(20);
    obj.label36:setWidth(50);
    obj.label36:setHeight(25);
    obj.label36:setFontSize(10);
    obj.label36:setFontColor("white");
    obj.label36:setText("Fortitude");
    obj.label36:setName("label36");

    obj.rectangle35 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout18);
    obj.rectangle35:setLeft(94);
    obj.rectangle35:setTop(3);
    obj.rectangle35:setColor("Black");
    obj.rectangle35:setWidth(28);
    obj.rectangle35:setHeight(15);
    obj.rectangle35:setXradius(2);
    obj.rectangle35:setYradius(2);
    obj.rectangle35:setName("rectangle35");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout18);
    obj.label37:setLeft(96);
    obj.label37:setTop(5);
    obj.label37:setWidth(28);
    obj.label37:setHeight(8);
    obj.label37:setFontSize(10);
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontColor("white");
    obj.label37:setText("Total");
    obj.label37:setName("label37");

    obj.totalfort = gui.fromHandle(_obj_newObject("edit"));
    obj.totalfort:setParent(obj.layout18);
    obj.totalfort:setLeft(78);
    obj.totalfort:setTop(15);
    obj.totalfort:setWidth(60);
    obj.totalfort:setHeight(25);
    obj.totalfort:setName("totalfort");
    obj.totalfort:setField("totalfort");
    obj.totalfort:setType("number");
    obj.totalfort:setMin(-99);
    obj.totalfort:setMax(99);
    obj.totalfort:setHorzTextAlign("center");
    obj.totalfort:setFontSize(15.0);
    obj.totalfort:setFontColor("black");
    lfm_setPropAsString(obj.totalfort, "fontStyle",  "bold");
    obj.totalfort:setHitTest(false);

    obj.rectangle36 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout18);
    obj.rectangle36:setLeft(153);
    obj.rectangle36:setTop(20);
    obj.rectangle36:setColor("Black");
    obj.rectangle36:setWidth(20);
    obj.rectangle36:setHeight(15);
    obj.rectangle36:setXradius(2);
    obj.rectangle36:setYradius(2);
    obj.rectangle36:setName("rectangle36");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout18);
    obj.label38:setLeft(156);
    obj.label38:setTop(18);
    obj.label38:setWidth(20);
    obj.label38:setHeight(15);
    obj.label38:setFontSize(20);
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setFontColor("white");
    obj.label38:setText("=");
    obj.label38:setName("label38");

    obj.rectangle37 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout18);
    obj.rectangle37:setLeft(200);
    obj.rectangle37:setTop(3);
    obj.rectangle37:setColor("Black");
    obj.rectangle37:setWidth(37);
    obj.rectangle37:setHeight(15);
    obj.rectangle37:setXradius(2);
    obj.rectangle37:setYradius(2);
    obj.rectangle37:setName("rectangle37");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout18);
    obj.label39:setLeft(202);
    obj.label39:setTop(5);
    obj.label39:setWidth(58);
    obj.label39:setHeight(8);
    obj.label39:setFontSize(10);
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setFontColor("white");
    obj.label39:setText("1/2 Nv");
    obj.label39:setName("label39");

    obj.fort1 = gui.fromHandle(_obj_newObject("edit"));
    obj.fort1:setParent(obj.layout18);
    obj.fort1:setLeft(188);
    obj.fort1:setTop(15);
    obj.fort1:setWidth(60);
    obj.fort1:setHeight(25);
    obj.fort1:setName("fort1");
    obj.fort1:setField("fort1");
    obj.fort1:setType("number");
    obj.fort1:setMin(-99);
    obj.fort1:setMax(99);
    obj.fort1:setHorzTextAlign("center");
    obj.fort1:setFontSize(15.0);
    lfm_setPropAsString(obj.fort1, "fontStyle",  "bold");
    obj.fort1:setFontColor("black");
    obj.fort1:setHitTest(false);

    obj.rectangle38 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout18);
    obj.rectangle38:setLeft(253);
    obj.rectangle38:setTop(20);
    obj.rectangle38:setColor("Black");
    obj.rectangle38:setWidth(20);
    obj.rectangle38:setHeight(15);
    obj.rectangle38:setXradius(2);
    obj.rectangle38:setYradius(2);
    obj.rectangle38:setName("rectangle38");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout18);
    obj.label40:setLeft(256);
    obj.label40:setTop(18);
    obj.label40:setWidth(20);
    obj.label40:setHeight(15);
    obj.label40:setFontSize(20);
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setFontColor("white");
    obj.label40:setText("+");
    obj.label40:setName("label40");

    obj.rectangle39 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout18);
    obj.rectangle39:setLeft(284);
    obj.rectangle39:setTop(3);
    obj.rectangle39:setColor("Black");
    obj.rectangle39:setWidth(48);
    obj.rectangle39:setHeight(15);
    obj.rectangle39:setXradius(2);
    obj.rectangle39:setYradius(2);
    obj.rectangle39:setName("rectangle39");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout18);
    obj.label41:setLeft(292);
    obj.label41:setTop(5);
    obj.label41:setWidth(48);
    obj.label41:setHeight(8);
    obj.label41:setFontSize(10);
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setFontColor("white");
    obj.label41:setText("Mod H");
    obj.label41:setName("label41");

    obj.fort2 = gui.fromHandle(_obj_newObject("edit"));
    obj.fort2:setParent(obj.layout18);
    obj.fort2:setLeft(278);
    obj.fort2:setTop(15);
    obj.fort2:setWidth(60);
    obj.fort2:setHeight(25);
    obj.fort2:setName("fort2");
    obj.fort2:setField("fort2");
    obj.fort2:setType("number");
    obj.fort2:setMin(-99);
    obj.fort2:setMax(99);
    obj.fort2:setHorzTextAlign("center");
    obj.fort2:setFontSize(15.0);
    lfm_setPropAsString(obj.fort2, "fontStyle",  "bold");
    obj.fort2:setFontColor("black");
    obj.fort2:setHitTest(false);

    obj.rectangle40 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout18);
    obj.rectangle40:setLeft(343);
    obj.rectangle40:setTop(20);
    obj.rectangle40:setColor("Black");
    obj.rectangle40:setWidth(20);
    obj.rectangle40:setHeight(15);
    obj.rectangle40:setXradius(2);
    obj.rectangle40:setYradius(2);
    obj.rectangle40:setName("rectangle40");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout18);
    obj.label42:setLeft(346);
    obj.label42:setTop(18);
    obj.label42:setWidth(20);
    obj.label42:setHeight(15);
    obj.label42:setFontSize(20);
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setFontColor("white");
    obj.label42:setText("+");
    obj.label42:setName("label42");

    obj.rectangle41 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout18);
    obj.rectangle41:setLeft(380);
    obj.rectangle41:setTop(3);
    obj.rectangle41:setColor("Black");
    obj.rectangle41:setWidth(38);
    obj.rectangle41:setHeight(15);
    obj.rectangle41:setXradius(2);
    obj.rectangle41:setYradius(2);
    obj.rectangle41:setName("rectangle41");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout18);
    obj.label43:setLeft(383);
    obj.label43:setTop(5);
    obj.label43:setWidth(38);
    obj.label43:setHeight(8);
    obj.label43:setFontSize(10);
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setFontColor("white");
    obj.label43:setText("Outros");
    obj.label43:setName("label43");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout18);
    obj.edit22:setLeft(369);
    obj.edit22:setTop(15);
    obj.edit22:setWidth(60);
    obj.edit22:setHeight(25);
    obj.edit22:setField("fort3");
    obj.edit22:setType("number");
    obj.edit22:setMin(-99);
    obj.edit22:setMax(99);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setFontSize(15.0);
    obj.edit22:setFontColor("black");
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setName("edit22");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(308);
    obj.layout19:setTop(320);
    obj.layout19:setWidth(448);
    obj.layout19:setHeight(41);
    obj.layout19:setName("layout19");

    obj.button9 = gui.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.layout19);
    obj.button9:setLeft(0);
    obj.button9:setTop(18);
    obj.button9:setWidth(20);
    obj.button9:setHeight(20);
    obj.button9:setText("H");
    obj.button9:setFontSize(12);
    obj.button9:setFontColor("black");
    obj.button9:setOpacity(1.0);
    obj.button9:setCanFocus(false);
    obj.button9:setCursor("handPoint");
    obj.button9:setHint("Escolher habilidade base");
    obj.button9:setName("button9");

    obj.rectangle42 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout19);
    obj.rectangle42:setLeft(22);
    obj.rectangle42:setTop(15);
    obj.rectangle42:setColor("Black");
    obj.rectangle42:setWidth(50);
    obj.rectangle42:setHeight(25);
    obj.rectangle42:setXradius(2);
    obj.rectangle42:setYradius(2);
    obj.rectangle42:setName("rectangle42");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout19);
    obj.label44:setLeft(35);
    obj.label44:setTop(9);
    obj.label44:setWidth(35);
    obj.label44:setHeight(25);
    obj.label44:setFontSize(14);
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setFontColor("white");
    obj.label44:setText("REF");
    obj.label44:setName("label44");

    obj.button10 = gui.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.layout19);
    obj.button10:setLeft(22);
    obj.button10:setTop(15);
    obj.button10:setWidth(50);
    obj.button10:setHeight(25);
    obj.button10:setOpacity(0.0);
    obj.button10:setCanFocus(false);
    obj.button10:setCursor("handPoint");
    obj.button10:setHint("Rolar 1d20 + Reflexos");
    obj.button10:setName("button10");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout19);
    obj.label45:setLeft(31);
    obj.label45:setTop(20);
    obj.label45:setWidth(50);
    obj.label45:setHeight(25);
    obj.label45:setFontSize(10);
    obj.label45:setFontColor("white");
    obj.label45:setText("Reflexo");
    obj.label45:setName("label45");

    obj.totalref = gui.fromHandle(_obj_newObject("edit"));
    obj.totalref:setParent(obj.layout19);
    obj.totalref:setLeft(78);
    obj.totalref:setTop(15);
    obj.totalref:setWidth(60);
    obj.totalref:setHeight(25);
    obj.totalref:setName("totalref");
    obj.totalref:setField("totalref");
    obj.totalref:setType("number");
    obj.totalref:setMin(-99);
    obj.totalref:setMax(99);
    obj.totalref:setHorzTextAlign("center");
    obj.totalref:setFontSize(15.0);
    lfm_setPropAsString(obj.totalref, "fontStyle",  "bold");
    obj.totalref:setFontColor("black");
    obj.totalref:setHitTest(false);

    obj.rectangle43 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout19);
    obj.rectangle43:setLeft(153);
    obj.rectangle43:setTop(20);
    obj.rectangle43:setColor("Black");
    obj.rectangle43:setWidth(20);
    obj.rectangle43:setHeight(15);
    obj.rectangle43:setXradius(2);
    obj.rectangle43:setYradius(2);
    obj.rectangle43:setName("rectangle43");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout19);
    obj.label46:setLeft(156);
    obj.label46:setTop(18);
    obj.label46:setWidth(20);
    obj.label46:setHeight(15);
    obj.label46:setFontSize(20);
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setFontColor("white");
    obj.label46:setText("=");
    obj.label46:setName("label46");

    obj.ref1 = gui.fromHandle(_obj_newObject("edit"));
    obj.ref1:setParent(obj.layout19);
    obj.ref1:setLeft(189);
    obj.ref1:setTop(15);
    obj.ref1:setWidth(60);
    obj.ref1:setHeight(25);
    obj.ref1:setName("ref1");
    obj.ref1:setField("ref1");
    obj.ref1:setType("number");
    obj.ref1:setMin(-99);
    obj.ref1:setMax(99);
    obj.ref1:setHorzTextAlign("center");
    obj.ref1:setFontSize(15.0);
    lfm_setPropAsString(obj.ref1, "fontStyle",  "bold");
    obj.ref1:setFontColor("black");
    obj.ref1:setHitTest(false);

    obj.rectangle44 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout19);
    obj.rectangle44:setLeft(253);
    obj.rectangle44:setTop(20);
    obj.rectangle44:setColor("Black");
    obj.rectangle44:setWidth(20);
    obj.rectangle44:setHeight(15);
    obj.rectangle44:setXradius(2);
    obj.rectangle44:setYradius(2);
    obj.rectangle44:setName("rectangle44");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout19);
    obj.label47:setLeft(256);
    obj.label47:setTop(18);
    obj.label47:setWidth(20);
    obj.label47:setHeight(15);
    obj.label47:setFontSize(20);
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontColor("white");
    obj.label47:setText("+");
    obj.label47:setName("label47");

    obj.ref2 = gui.fromHandle(_obj_newObject("edit"));
    obj.ref2:setParent(obj.layout19);
    obj.ref2:setLeft(278);
    obj.ref2:setTop(15);
    obj.ref2:setWidth(60);
    obj.ref2:setHeight(25);
    obj.ref2:setName("ref2");
    obj.ref2:setField("ref2");
    obj.ref2:setType("number");
    obj.ref2:setMin(-99);
    obj.ref2:setMax(99);
    obj.ref2:setHorzTextAlign("center");
    obj.ref2:setFontSize(15.0);
    lfm_setPropAsString(obj.ref2, "fontStyle",  "bold");
    obj.ref2:setFontColor("black");
    obj.ref2:setHitTest(false);

    obj.rectangle45 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout19);
    obj.rectangle45:setLeft(343);
    obj.rectangle45:setTop(20);
    obj.rectangle45:setColor("Black");
    obj.rectangle45:setWidth(20);
    obj.rectangle45:setHeight(15);
    obj.rectangle45:setXradius(2);
    obj.rectangle45:setYradius(2);
    obj.rectangle45:setName("rectangle45");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout19);
    obj.label48:setLeft(346);
    obj.label48:setTop(18);
    obj.label48:setWidth(20);
    obj.label48:setHeight(15);
    obj.label48:setFontSize(20);
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontColor("white");
    obj.label48:setText("+");
    obj.label48:setName("label48");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout19);
    obj.edit23:setLeft(369);
    obj.edit23:setTop(15);
    obj.edit23:setWidth(60);
    obj.edit23:setHeight(25);
    obj.edit23:setField("ref3");
    obj.edit23:setType("number");
    obj.edit23:setMin(-99);
    obj.edit23:setMax(99);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setFontSize(15.0);
    obj.edit23:setFontColor("black");
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setName("edit23");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(308);
    obj.layout20:setTop(370);
    obj.layout20:setWidth(448);
    obj.layout20:setHeight(41);
    obj.layout20:setName("layout20");

    obj.button11 = gui.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.layout20);
    obj.button11:setLeft(0);
    obj.button11:setTop(18);
    obj.button11:setWidth(20);
    obj.button11:setHeight(20);
    obj.button11:setText("H");
    obj.button11:setFontSize(12);
    obj.button11:setFontColor("black");
    obj.button11:setOpacity(1.0);
    obj.button11:setCanFocus(false);
    obj.button11:setCursor("handPoint");
    obj.button11:setHint("Escolher habilidade base");
    obj.button11:setName("button11");

    obj.rectangle46 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout20);
    obj.rectangle46:setLeft(22);
    obj.rectangle46:setTop(15);
    obj.rectangle46:setColor("Black");
    obj.rectangle46:setWidth(50);
    obj.rectangle46:setHeight(25);
    obj.rectangle46:setXradius(2);
    obj.rectangle46:setYradius(2);
    obj.rectangle46:setName("rectangle46");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout20);
    obj.label49:setLeft(32);
    obj.label49:setTop(9);
    obj.label49:setWidth(35);
    obj.label49:setHeight(25);
    obj.label49:setFontSize(14);
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontColor("white");
    obj.label49:setText("VON");
    obj.label49:setName("label49");

    obj.button12 = gui.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.layout20);
    obj.button12:setLeft(22);
    obj.button12:setTop(15);
    obj.button12:setWidth(50);
    obj.button12:setHeight(25);
    obj.button12:setOpacity(0.0);
    obj.button12:setCanFocus(false);
    obj.button12:setCursor("handPoint");
    obj.button12:setHint("Rolar 1d20 + Vontade");
    obj.button12:setName("button12");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout20);
    obj.label50:setLeft(29);
    obj.label50:setTop(20);
    obj.label50:setWidth(50);
    obj.label50:setHeight(25);
    obj.label50:setFontSize(10);
    obj.label50:setFontColor("white");
    obj.label50:setText("Vontade");
    obj.label50:setName("label50");

    obj.totalvon = gui.fromHandle(_obj_newObject("edit"));
    obj.totalvon:setParent(obj.layout20);
    obj.totalvon:setLeft(78);
    obj.totalvon:setTop(15);
    obj.totalvon:setWidth(60);
    obj.totalvon:setHeight(25);
    obj.totalvon:setName("totalvon");
    obj.totalvon:setField("totalvon");
    obj.totalvon:setType("number");
    obj.totalvon:setMin(-99);
    obj.totalvon:setMax(99);
    obj.totalvon:setHorzTextAlign("center");
    obj.totalvon:setFontSize(15.0);
    lfm_setPropAsString(obj.totalvon, "fontStyle",  "bold");
    obj.totalvon:setFontColor("black");
    obj.totalvon:setHitTest(false);

    obj.rectangle47 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout20);
    obj.rectangle47:setLeft(153);
    obj.rectangle47:setTop(20);
    obj.rectangle47:setColor("Black");
    obj.rectangle47:setWidth(20);
    obj.rectangle47:setHeight(15);
    obj.rectangle47:setXradius(2);
    obj.rectangle47:setYradius(2);
    obj.rectangle47:setName("rectangle47");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout20);
    obj.label51:setLeft(156);
    obj.label51:setTop(18);
    obj.label51:setWidth(20);
    obj.label51:setHeight(15);
    obj.label51:setFontSize(20);
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setFontColor("white");
    obj.label51:setText("=");
    obj.label51:setName("label51");

    obj.von1 = gui.fromHandle(_obj_newObject("edit"));
    obj.von1:setParent(obj.layout20);
    obj.von1:setLeft(188);
    obj.von1:setTop(15);
    obj.von1:setWidth(60);
    obj.von1:setHeight(25);
    obj.von1:setName("von1");
    obj.von1:setField("von1");
    obj.von1:setType("number");
    obj.von1:setMin(-99);
    obj.von1:setMax(99);
    obj.von1:setHorzTextAlign("center");
    obj.von1:setFontSize(15.0);
    lfm_setPropAsString(obj.von1, "fontStyle",  "bold");
    obj.von1:setFontColor("black");
    obj.von1:setHitTest(false);

    obj.rectangle48 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.layout20);
    obj.rectangle48:setLeft(253);
    obj.rectangle48:setTop(20);
    obj.rectangle48:setColor("Black");
    obj.rectangle48:setWidth(20);
    obj.rectangle48:setHeight(15);
    obj.rectangle48:setXradius(2);
    obj.rectangle48:setYradius(2);
    obj.rectangle48:setName("rectangle48");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout20);
    obj.label52:setLeft(256);
    obj.label52:setTop(18);
    obj.label52:setWidth(20);
    obj.label52:setHeight(15);
    obj.label52:setFontSize(20);
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setFontColor("white");
    obj.label52:setText("+");
    obj.label52:setName("label52");

    obj.von2 = gui.fromHandle(_obj_newObject("edit"));
    obj.von2:setParent(obj.layout20);
    obj.von2:setLeft(278);
    obj.von2:setTop(15);
    obj.von2:setWidth(60);
    obj.von2:setHeight(25);
    obj.von2:setName("von2");
    obj.von2:setField("von2");
    obj.von2:setType("number");
    obj.von2:setMin(-99);
    obj.von2:setMax(99);
    obj.von2:setHorzTextAlign("center");
    obj.von2:setFontSize(15.0);
    lfm_setPropAsString(obj.von2, "fontStyle",  "bold");
    obj.von2:setFontColor("black");
    obj.von2:setHitTest(false);

    obj.rectangle49 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout20);
    obj.rectangle49:setLeft(343);
    obj.rectangle49:setTop(20);
    obj.rectangle49:setColor("Black");
    obj.rectangle49:setWidth(20);
    obj.rectangle49:setHeight(15);
    obj.rectangle49:setXradius(2);
    obj.rectangle49:setYradius(2);
    obj.rectangle49:setName("rectangle49");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout20);
    obj.label53:setLeft(346);
    obj.label53:setTop(18);
    obj.label53:setWidth(20);
    obj.label53:setHeight(15);
    obj.label53:setFontSize(20);
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setFontColor("white");
    obj.label53:setText("+");
    obj.label53:setName("label53");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout20);
    obj.edit24:setLeft(369);
    obj.edit24:setTop(15);
    obj.edit24:setWidth(60);
    obj.edit24:setHeight(25);
    obj.edit24:setField("von3");
    obj.edit24:setType("number");
    obj.edit24:setMin(-99);
    obj.edit24:setMax(99);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setFontSize(15.0);
    obj.edit24:setFontColor("black");
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setName("edit24");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setLeft(750);
    obj.layout21:setTop(274);
    obj.layout21:setWidth(263);
    obj.layout21:setHeight(37);
    obj.layout21:setName("layout21");

    obj.rectangle50 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout21);
    obj.rectangle50:setLeft(0);
    obj.rectangle50:setTop(11);
    obj.rectangle50:setColor("Black");
    obj.rectangle50:setWidth(125);
    obj.rectangle50:setHeight(25);
    obj.rectangle50:setXradius(2);
    obj.rectangle50:setYradius(2);
    obj.rectangle50:setName("rectangle50");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout21);
    obj.label54:setLeft(11);
    obj.label54:setTop(13);
    obj.label54:setWidth(155);
    obj.label54:setHeight(20);
    obj.label54:setText("Pontos de Vida");
    obj.label54:setHorzTextAlign("leading");
    obj.label54:setFontSize(14.0);
    lfm_setPropAsString(obj.label54, "fontStyle",  "bold");
    obj.label54:setFontColor("white");
    obj.label54:setName("label54");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout21);
    obj.edit25:setLeft(130);
    obj.edit25:setTop(11);
    obj.edit25:setWidth(123);
    obj.edit25:setHeight(25);
    obj.edit25:setField("pv");
    obj.edit25:setType("number");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setFontSize(15.0);
    obj.edit25:setFontColor("black");
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setName("edit25");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setLeft(750);
    obj.layout22:setTop(324);
    obj.layout22:setWidth(263);
    obj.layout22:setHeight(37);
    obj.layout22:setName("layout22");

    obj.rectangle51 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.layout22);
    obj.rectangle51:setLeft(0);
    obj.rectangle51:setTop(11);
    obj.rectangle51:setColor("Black");
    obj.rectangle51:setWidth(125);
    obj.rectangle51:setHeight(25);
    obj.rectangle51:setXradius(2);
    obj.rectangle51:setYradius(2);
    obj.rectangle51:setName("rectangle51");

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout22);
    obj.label55:setLeft(3);
    obj.label55:setTop(13);
    obj.label55:setWidth(155);
    obj.label55:setHeight(20);
    obj.label55:setText("Pontos de Energia");
    obj.label55:setHorzTextAlign("leading");
    obj.label55:setFontSize(14.0);
    lfm_setPropAsString(obj.label55, "fontStyle",  "bold");
    obj.label55:setFontColor("white");
    obj.label55:setName("label55");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout22);
    obj.edit26:setLeft(130);
    obj.edit26:setTop(11);
    obj.edit26:setWidth(123);
    obj.edit26:setHeight(25);
    obj.edit26:setField("pe");
    obj.edit26:setType("number");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontSize(15.0);
    obj.edit26:setFontColor("black");
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setName("edit26");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.scrollBox1);
    obj.layout23:setLeft(750);
    obj.layout23:setTop(374);
    obj.layout23:setWidth(263);
    obj.layout23:setHeight(37);
    obj.layout23:setName("layout23");

    obj.rectangle52 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.layout23);
    obj.rectangle52:setLeft(0);
    obj.rectangle52:setTop(11);
    obj.rectangle52:setColor("Black");
    obj.rectangle52:setWidth(125);
    obj.rectangle52:setHeight(25);
    obj.rectangle52:setXradius(2);
    obj.rectangle52:setYradius(2);
    obj.rectangle52:setName("rectangle52");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout23);
    obj.label56:setLeft(23);
    obj.label56:setTop(13);
    obj.label56:setWidth(155);
    obj.label56:setHeight(20);
    obj.label56:setText("Usos Diários");
    obj.label56:setHorzTextAlign("leading");
    obj.label56:setFontSize(14.0);
    lfm_setPropAsString(obj.label56, "fontStyle",  "bold");
    obj.label56:setFontColor("white");
    obj.label56:setName("label56");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout23);
    obj.edit27:setLeft(130);
    obj.edit27:setTop(11);
    obj.edit27:setWidth(123);
    obj.edit27:setHeight(25);
    obj.edit27:setField("ud");
    obj.edit27:setType("number");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontSize(15.0);
    obj.edit27:setFontColor("black");
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setName("edit27");

    obj.rectangle53 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.scrollBox1);
    obj.rectangle53:setLeft(760);
    obj.rectangle53:setTop(413);
    obj.rectangle53:setColor("Black");
    obj.rectangle53:setWidth(150);
    obj.rectangle53:setHeight(15);
    obj.rectangle53:setXradius(2);
    obj.rectangle53:setYradius(2);
    obj.rectangle53:setName("rectangle53");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.scrollBox1);
    obj.label57:setLeft(774);
    obj.label57:setTop(414);
    obj.label57:setWidth(150);
    obj.label57:setHeight(8);
    obj.label57:setFontSize(10);
    lfm_setPropAsString(obj.label57, "fontStyle",  "bold");
    obj.label57:setFontColor("white");
    obj.label57:setText("Ilustração do Personagem");
    obj.label57:setName("label57");

    obj.rectangle54 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.scrollBox1);
    obj.rectangle54:setLeft(668);
    obj.rectangle54:setTop(424);
    obj.rectangle54:setColor("#333333");
    obj.rectangle54:setWidth(335);
    obj.rectangle54:setHeight(273);
    obj.rectangle54:setXradius(2);
    obj.rectangle54:setYradius(2);
    obj.rectangle54:setName("rectangle54");

    obj.rectangle55 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.scrollBox1);
    obj.rectangle55:setLeft(673);
    obj.rectangle55:setTop(429);
    obj.rectangle55:setColor("#999999");
    obj.rectangle55:setWidth(325);
    obj.rectangle55:setHeight(263);
    obj.rectangle55:setXradius(2);
    obj.rectangle55:setYradius(2);
    obj.rectangle55:setName("rectangle55");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setLeft(673);
    obj.image2:setTop(429);
    obj.image2:setField("imagempersona");
    obj.image2:setEditable(true);
    obj.image2:setStyle("proportional");
    obj.image2:setSRC("");
    obj.image2:setWidth(325);
    obj.image2:setHeight(263);
    obj.image2:setName("image2");

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.scrollBox1);
    obj.layout24:setLeft(6);
    obj.layout24:setTop(421);
    obj.layout24:setWidth(688);
    obj.layout24:setHeight(41);
    obj.layout24:setName("layout24");

    obj.rectangle56 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout24);
    obj.rectangle56:setLeft(5);
    obj.rectangle56:setTop(15);
    obj.rectangle56:setColor("Black");
    obj.rectangle56:setWidth(155);
    obj.rectangle56:setHeight(25);
    obj.rectangle56:setXradius(2);
    obj.rectangle56:setYradius(2);
    obj.rectangle56:setName("rectangle56");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout24);
    obj.label58:setLeft(27);
    obj.label58:setTop(15);
    obj.label58:setWidth(105);
    obj.label58:setHeight(25);
    obj.label58:setFontSize(15);
    obj.label58:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label58, "fontStyle",  "bold");
    obj.label58:setFontColor("white");
    obj.label58:setText("Corpo-a-corpo");
    obj.label58:setName("label58");

    obj.button13 = gui.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.layout24);
    obj.button13:setLeft(27);
    obj.button13:setTop(15);
    obj.button13:setWidth(105);
    obj.button13:setHeight(25);
    obj.button13:setOpacity(0.0);
    obj.button13:setCanFocus(false);
    obj.button13:setCursor("handPoint");
    obj.button13:setHint("Rolar 1d20 + Corpo-a-corpo");
    obj.button13:setName("button13");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout24);
    obj.layout25:setLeft(118);
    obj.layout25:setTop(0);
    obj.layout25:setWidth(688);
    obj.layout25:setHeight(41);
    obj.layout25:setName("layout25");

    obj.rectangle57 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.layout25);
    obj.rectangle57:setLeft(73);
    obj.rectangle57:setTop(3);
    obj.rectangle57:setColor("Black");
    obj.rectangle57:setWidth(28);
    obj.rectangle57:setHeight(15);
    obj.rectangle57:setXradius(2);
    obj.rectangle57:setYradius(2);
    obj.rectangle57:setName("rectangle57");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout25);
    obj.label59:setLeft(75);
    obj.label59:setTop(5);
    obj.label59:setWidth(28);
    obj.label59:setHeight(8);
    obj.label59:setFontSize(10);
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setFontColor("white");
    obj.label59:setText("Total");
    obj.label59:setName("label59");

    obj.totalcac = gui.fromHandle(_obj_newObject("edit"));
    obj.totalcac:setParent(obj.layout25);
    obj.totalcac:setLeft(57);
    obj.totalcac:setTop(15);
    obj.totalcac:setWidth(60);
    obj.totalcac:setHeight(25);
    obj.totalcac:setName("totalcac");
    obj.totalcac:setField("totalcac");
    obj.totalcac:setType("number");
    obj.totalcac:setMin(-99);
    obj.totalcac:setMax(99);
    obj.totalcac:setHorzTextAlign("center");
    obj.totalcac:setFontSize(15.0);
    obj.totalcac:setFontColor("black");
    lfm_setPropAsString(obj.totalcac, "fontStyle",  "bold");
    obj.totalcac:setHitTest(false);

    obj.rectangle58 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout25);
    obj.rectangle58:setLeft(132);
    obj.rectangle58:setTop(20);
    obj.rectangle58:setColor("Black");
    obj.rectangle58:setWidth(20);
    obj.rectangle58:setHeight(15);
    obj.rectangle58:setXradius(2);
    obj.rectangle58:setYradius(2);
    obj.rectangle58:setName("rectangle58");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout25);
    obj.label60:setLeft(135);
    obj.label60:setTop(18);
    obj.label60:setWidth(20);
    obj.label60:setHeight(15);
    obj.label60:setFontSize(20);
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setFontColor("white");
    obj.label60:setText("=");
    obj.label60:setName("label60");

    obj.rectangle59 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout25);
    obj.rectangle59:setLeft(185);
    obj.rectangle59:setTop(3);
    obj.rectangle59:setColor("Black");
    obj.rectangle59:setWidth(25);
    obj.rectangle59:setHeight(15);
    obj.rectangle59:setXradius(2);
    obj.rectangle59:setYradius(2);
    obj.rectangle59:setName("rectangle59");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout25);
    obj.label61:setLeft(187);
    obj.label61:setTop(5);
    obj.label61:setWidth(58);
    obj.label61:setHeight(8);
    obj.label61:setFontSize(10);
    lfm_setPropAsString(obj.label61, "fontStyle",  "bold");
    obj.label61:setFontColor("white");
    obj.label61:setText("BBA");
    obj.label61:setName("label61");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout25);
    obj.edit28:setLeft(167);
    obj.edit28:setTop(15);
    obj.edit28:setWidth(60);
    obj.edit28:setHeight(25);
    obj.edit28:setField("bba");
    obj.edit28:setType("number");
    obj.edit28:setMin(-99);
    obj.edit28:setMax(99);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontSize(15.0);
    obj.edit28:setFontColor("black");
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setName("edit28");

    obj.rectangle60 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout25);
    obj.rectangle60:setLeft(232);
    obj.rectangle60:setTop(20);
    obj.rectangle60:setColor("Black");
    obj.rectangle60:setWidth(20);
    obj.rectangle60:setHeight(15);
    obj.rectangle60:setXradius(2);
    obj.rectangle60:setYradius(2);
    obj.rectangle60:setName("rectangle60");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout25);
    obj.label62:setLeft(235);
    obj.label62:setTop(18);
    obj.label62:setWidth(20);
    obj.label62:setHeight(15);
    obj.label62:setFontSize(20);
    lfm_setPropAsString(obj.label62, "fontStyle",  "bold");
    obj.label62:setFontColor("white");
    obj.label62:setText("+");
    obj.label62:setName("label62");

    obj.rectangle61 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout25);
    obj.rectangle61:setLeft(263);
    obj.rectangle61:setTop(3);
    obj.rectangle61:setColor("Black");
    obj.rectangle61:setWidth(48);
    obj.rectangle61:setHeight(15);
    obj.rectangle61:setXradius(2);
    obj.rectangle61:setYradius(2);
    obj.rectangle61:setName("rectangle61");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout25);
    obj.label63:setLeft(271);
    obj.label63:setTop(5);
    obj.label63:setWidth(48);
    obj.label63:setHeight(8);
    obj.label63:setFontSize(10);
    lfm_setPropAsString(obj.label63, "fontStyle",  "bold");
    obj.label63:setFontColor("white");
    obj.label63:setText("Mod H");
    obj.label63:setName("label63");

    obj.cac2 = gui.fromHandle(_obj_newObject("edit"));
    obj.cac2:setParent(obj.layout25);
    obj.cac2:setLeft(257);
    obj.cac2:setTop(15);
    obj.cac2:setWidth(60);
    obj.cac2:setHeight(25);
    obj.cac2:setName("cac2");
    obj.cac2:setField("cac2");
    obj.cac2:setType("number");
    obj.cac2:setMin(-99);
    obj.cac2:setMax(99);
    obj.cac2:setHorzTextAlign("center");
    obj.cac2:setFontSize(15.0);
    obj.cac2:setFontColor("black");
    lfm_setPropAsString(obj.cac2, "fontStyle",  "bold");
    obj.cac2:setHitTest(false);

    obj.rectangle62 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout25);
    obj.rectangle62:setLeft(322);
    obj.rectangle62:setTop(20);
    obj.rectangle62:setColor("Black");
    obj.rectangle62:setWidth(20);
    obj.rectangle62:setHeight(15);
    obj.rectangle62:setXradius(2);
    obj.rectangle62:setYradius(2);
    obj.rectangle62:setName("rectangle62");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout25);
    obj.label64:setLeft(325);
    obj.label64:setTop(18);
    obj.label64:setWidth(20);
    obj.label64:setHeight(15);
    obj.label64:setFontSize(20);
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setFontColor("white");
    obj.label64:setText("+");
    obj.label64:setName("label64");

    obj.rectangle63 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.layout25);
    obj.rectangle63:setLeft(359);
    obj.rectangle63:setTop(3);
    obj.rectangle63:setColor("Black");
    obj.rectangle63:setWidth(38);
    obj.rectangle63:setHeight(15);
    obj.rectangle63:setXradius(2);
    obj.rectangle63:setYradius(2);
    obj.rectangle63:setName("rectangle63");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout25);
    obj.label65:setLeft(362);
    obj.label65:setTop(5);
    obj.label65:setWidth(38);
    obj.label65:setHeight(8);
    obj.label65:setFontSize(10);
    lfm_setPropAsString(obj.label65, "fontStyle",  "bold");
    obj.label65:setFontColor("white");
    obj.label65:setText("Outros");
    obj.label65:setName("label65");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout25);
    obj.edit29:setLeft(348);
    obj.edit29:setTop(15);
    obj.edit29:setWidth(60);
    obj.edit29:setHeight(25);
    obj.edit29:setField("cac3");
    obj.edit29:setType("number");
    obj.edit29:setMin(-99);
    obj.edit29:setMax(99);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontSize(15.0);
    obj.edit29:setFontColor("black");
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setName("edit29");

    obj.rectangle64 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.layout25);
    obj.rectangle64:setLeft(413);
    obj.rectangle64:setTop(20);
    obj.rectangle64:setColor("Black");
    obj.rectangle64:setWidth(20);
    obj.rectangle64:setHeight(15);
    obj.rectangle64:setXradius(2);
    obj.rectangle64:setYradius(2);
    obj.rectangle64:setName("rectangle64");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout25);
    obj.label66:setLeft(416);
    obj.label66:setTop(18);
    obj.label66:setWidth(20);
    obj.label66:setHeight(15);
    obj.label66:setFontSize(20);
    lfm_setPropAsString(obj.label66, "fontStyle",  "bold");
    obj.label66:setFontColor("white");
    obj.label66:setText("+");
    obj.label66:setName("label66");

    obj.rectangle65 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.layout25);
    obj.rectangle65:setLeft(450);
    obj.rectangle65:setTop(3);
    obj.rectangle65:setColor("Black");
    obj.rectangle65:setWidth(38);
    obj.rectangle65:setHeight(15);
    obj.rectangle65:setXradius(2);
    obj.rectangle65:setYradius(2);
    obj.rectangle65:setName("rectangle65");

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout25);
    obj.label67:setLeft(453);
    obj.label67:setTop(5);
    obj.label67:setWidth(38);
    obj.label67:setHeight(8);
    obj.label67:setFontSize(10);
    lfm_setPropAsString(obj.label67, "fontStyle",  "bold");
    obj.label67:setFontColor("white");
    obj.label67:setText("Outros");
    obj.label67:setName("label67");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout25);
    obj.edit30:setLeft(439);
    obj.edit30:setTop(15);
    obj.edit30:setWidth(60);
    obj.edit30:setHeight(25);
    obj.edit30:setField("cac4");
    obj.edit30:setType("number");
    obj.edit30:setMin(-99);
    obj.edit30:setMax(99);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setFontSize(15.0);
    obj.edit30:setFontColor("black");
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setName("edit30");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.scrollBox1);
    obj.layout26:setLeft(6);
    obj.layout26:setTop(461);
    obj.layout26:setWidth(688);
    obj.layout26:setHeight(41);
    obj.layout26:setName("layout26");

    obj.rectangle66 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.layout26);
    obj.rectangle66:setLeft(5);
    obj.rectangle66:setTop(15);
    obj.rectangle66:setColor("Black");
    obj.rectangle66:setWidth(155);
    obj.rectangle66:setHeight(25);
    obj.rectangle66:setXradius(2);
    obj.rectangle66:setYradius(2);
    obj.rectangle66:setName("rectangle66");

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout26);
    obj.label68:setLeft(27);
    obj.label68:setTop(15);
    obj.label68:setWidth(105);
    obj.label68:setHeight(25);
    obj.label68:setFontSize(15);
    obj.label68:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label68, "fontStyle",  "bold");
    obj.label68:setFontColor("white");
    obj.label68:setText("À Distância");
    obj.label68:setName("label68");

    obj.button14 = gui.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.layout26);
    obj.button14:setLeft(27);
    obj.button14:setTop(15);
    obj.button14:setWidth(105);
    obj.button14:setHeight(25);
    obj.button14:setOpacity(0.0);
    obj.button14:setCanFocus(false);
    obj.button14:setCursor("handPoint");
    obj.button14:setHint("Rolar 1d20 + À Distância");
    obj.button14:setName("button14");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout26);
    obj.layout27:setLeft(118);
    obj.layout27:setTop(0);
    obj.layout27:setWidth(688);
    obj.layout27:setHeight(41);
    obj.layout27:setName("layout27");

    obj.totaldis = gui.fromHandle(_obj_newObject("edit"));
    obj.totaldis:setParent(obj.layout27);
    obj.totaldis:setLeft(57);
    obj.totaldis:setTop(15);
    obj.totaldis:setWidth(60);
    obj.totaldis:setHeight(25);
    obj.totaldis:setName("totaldis");
    obj.totaldis:setField("totaldis");
    obj.totaldis:setType("number");
    obj.totaldis:setMin(-99);
    obj.totaldis:setMax(99);
    obj.totaldis:setHorzTextAlign("center");
    obj.totaldis:setFontSize(15.0);
    lfm_setPropAsString(obj.totaldis, "fontStyle",  "bold");
    obj.totaldis:setFontColor("black");
    obj.totaldis:setHitTest(false);

    obj.rectangle67 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.layout27);
    obj.rectangle67:setLeft(132);
    obj.rectangle67:setTop(20);
    obj.rectangle67:setColor("Black");
    obj.rectangle67:setWidth(20);
    obj.rectangle67:setHeight(15);
    obj.rectangle67:setXradius(2);
    obj.rectangle67:setYradius(2);
    obj.rectangle67:setName("rectangle67");

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout27);
    obj.label69:setLeft(135);
    obj.label69:setTop(18);
    obj.label69:setWidth(20);
    obj.label69:setHeight(15);
    obj.label69:setFontSize(20);
    lfm_setPropAsString(obj.label69, "fontStyle",  "bold");
    obj.label69:setFontColor("white");
    obj.label69:setText("=");
    obj.label69:setName("label69");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout27);
    obj.edit31:setLeft(167);
    obj.edit31:setTop(15);
    obj.edit31:setWidth(60);
    obj.edit31:setHeight(25);
    obj.edit31:setField("bba");
    obj.edit31:setType("number");
    obj.edit31:setMin(-99);
    obj.edit31:setMax(99);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontSize(15.0);
    obj.edit31:setFontColor("black");
    lfm_setPropAsString(obj.edit31, "fontStyle",  "bold");
    obj.edit31:setName("edit31");

    obj.rectangle68 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.layout27);
    obj.rectangle68:setLeft(232);
    obj.rectangle68:setTop(20);
    obj.rectangle68:setColor("Black");
    obj.rectangle68:setWidth(20);
    obj.rectangle68:setHeight(15);
    obj.rectangle68:setXradius(2);
    obj.rectangle68:setYradius(2);
    obj.rectangle68:setName("rectangle68");

    obj.label70 = gui.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout27);
    obj.label70:setLeft(235);
    obj.label70:setTop(18);
    obj.label70:setWidth(20);
    obj.label70:setHeight(15);
    obj.label70:setFontSize(20);
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setFontColor("white");
    obj.label70:setText("+");
    obj.label70:setName("label70");

    obj.dis2 = gui.fromHandle(_obj_newObject("edit"));
    obj.dis2:setParent(obj.layout27);
    obj.dis2:setLeft(257);
    obj.dis2:setTop(15);
    obj.dis2:setWidth(60);
    obj.dis2:setHeight(25);
    obj.dis2:setName("dis2");
    obj.dis2:setField("dis2");
    obj.dis2:setType("number");
    obj.dis2:setMin(-99);
    obj.dis2:setMax(99);
    obj.dis2:setHorzTextAlign("center");
    obj.dis2:setFontSize(15.0);
    lfm_setPropAsString(obj.dis2, "fontStyle",  "bold");
    obj.dis2:setFontColor("black");
    obj.dis2:setHitTest(false);

    obj.rectangle69 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.layout27);
    obj.rectangle69:setLeft(322);
    obj.rectangle69:setTop(20);
    obj.rectangle69:setColor("Black");
    obj.rectangle69:setWidth(20);
    obj.rectangle69:setHeight(15);
    obj.rectangle69:setXradius(2);
    obj.rectangle69:setYradius(2);
    obj.rectangle69:setName("rectangle69");

    obj.label71 = gui.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout27);
    obj.label71:setLeft(325);
    obj.label71:setTop(18);
    obj.label71:setWidth(20);
    obj.label71:setHeight(15);
    obj.label71:setFontSize(20);
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontColor("white");
    obj.label71:setText("+");
    obj.label71:setName("label71");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout27);
    obj.edit32:setLeft(348);
    obj.edit32:setTop(15);
    obj.edit32:setWidth(60);
    obj.edit32:setHeight(25);
    obj.edit32:setField("dis3");
    obj.edit32:setType("number");
    obj.edit32:setMin(-99);
    obj.edit32:setMax(99);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontSize(15.0);
    obj.edit32:setFontColor("black");
    lfm_setPropAsString(obj.edit32, "fontStyle",  "bold");
    obj.edit32:setName("edit32");

    obj.rectangle70 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.layout27);
    obj.rectangle70:setLeft(413);
    obj.rectangle70:setTop(20);
    obj.rectangle70:setColor("Black");
    obj.rectangle70:setWidth(20);
    obj.rectangle70:setHeight(15);
    obj.rectangle70:setXradius(2);
    obj.rectangle70:setYradius(2);
    obj.rectangle70:setName("rectangle70");

    obj.label72 = gui.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout27);
    obj.label72:setLeft(416);
    obj.label72:setTop(18);
    obj.label72:setWidth(20);
    obj.label72:setHeight(15);
    obj.label72:setFontSize(20);
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setFontColor("white");
    obj.label72:setText("+");
    obj.label72:setName("label72");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout27);
    obj.edit33:setLeft(439);
    obj.edit33:setTop(15);
    obj.edit33:setWidth(60);
    obj.edit33:setHeight(25);
    obj.edit33:setField("dis4");
    obj.edit33:setType("number");
    obj.edit33:setMin(-99);
    obj.edit33:setMax(99);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontSize(15.0);
    obj.edit33:setFontColor("black");
    lfm_setPropAsString(obj.edit33, "fontStyle",  "bold");
    obj.edit33:setName("edit33");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox1);
    obj.layout28:setLeft(8);
    obj.layout28:setTop(516);
    obj.layout28:setWidth(237);
    obj.layout28:setHeight(160);
    obj.layout28:setName("layout28");

    obj.rectangle71 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.layout28);
    obj.rectangle71:setTop(6);
    obj.rectangle71:setWidth(235);
    obj.rectangle71:setHeight(153);
    obj.rectangle71:setColor("Black");
    obj.rectangle71:setXradius(2);
    obj.rectangle71:setYradius(2);
    obj.rectangle71:setName("rectangle71");

    obj.rectangle72 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle72:setParent(obj.layout28);
    obj.rectangle72:setLeft(60);
    obj.rectangle72:setTop(1);
    obj.rectangle72:setColor("Black");
    obj.rectangle72:setWidth(38);
    obj.rectangle72:setHeight(15);
    obj.rectangle72:setXradius(2);
    obj.rectangle72:setYradius(2);
    obj.rectangle72:setName("rectangle72");

    obj.label73 = gui.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout28);
    obj.label73:setLeft(62);
    obj.label73:setTop(2);
    obj.label73:setWidth(55);
    obj.label73:setHeight(8);
    obj.label73:setFontSize(10);
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setFontColor("white");
    obj.label73:setText("Classes");
    obj.label73:setName("label73");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout28);
    obj.edit34:setLeft(3);
    obj.edit34:setTop(11);
    obj.edit34:setWidth(156);
    obj.edit34:setHeight(25);
    obj.edit34:setField("classe1");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setFontSize(15.0);
    obj.edit34:setFontColor("black");
    lfm_setPropAsString(obj.edit34, "fontStyle",  "bold");
    obj.edit34:setName("edit34");

    obj.rectangle73 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle73:setParent(obj.layout28);
    obj.rectangle73:setLeft(186);
    obj.rectangle73:setTop(1);
    obj.rectangle73:setColor("Black");
    obj.rectangle73:setWidth(29);
    obj.rectangle73:setHeight(15);
    obj.rectangle73:setXradius(2);
    obj.rectangle73:setYradius(2);
    obj.rectangle73:setName("rectangle73");

    obj.label74 = gui.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout28);
    obj.label74:setLeft(188);
    obj.label74:setTop(2);
    obj.label74:setWidth(55);
    obj.label74:setHeight(8);
    obj.label74:setFontSize(10);
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setFontColor("white");
    obj.label74:setText("Nível");
    obj.label74:setName("label74");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout28);
    obj.edit35:setLeft(172);
    obj.edit35:setTop(11);
    obj.edit35:setWidth(60);
    obj.edit35:setHeight(25);
    obj.edit35:setField("nvclasse1");
    obj.edit35:setType("number");
    obj.edit35:setMin(-99);
    obj.edit35:setMax(99);
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setFontSize(15.0);
    lfm_setPropAsString(obj.edit35, "fontStyle",  "bold");
    obj.edit35:setFontColor("black");
    obj.edit35:setName("edit35");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout28);
    obj.edit36:setLeft(3);
    obj.edit36:setTop(41);
    obj.edit36:setWidth(156);
    obj.edit36:setHeight(25);
    obj.edit36:setField("classe2");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontSize(15.0);
    lfm_setPropAsString(obj.edit36, "fontStyle",  "bold");
    obj.edit36:setFontColor("black");
    obj.edit36:setName("edit36");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout28);
    obj.edit37:setLeft(172);
    obj.edit37:setTop(41);
    obj.edit37:setWidth(60);
    obj.edit37:setHeight(25);
    obj.edit37:setField("nvclasse2");
    obj.edit37:setType("number");
    obj.edit37:setMin(-99);
    obj.edit37:setMax(99);
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontSize(15.0);
    lfm_setPropAsString(obj.edit37, "fontStyle",  "bold");
    obj.edit37:setFontColor("black");
    obj.edit37:setName("edit37");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout28);
    obj.edit38:setLeft(3);
    obj.edit38:setTop(71);
    obj.edit38:setWidth(156);
    obj.edit38:setHeight(25);
    obj.edit38:setField("classe3");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontSize(15.0);
    lfm_setPropAsString(obj.edit38, "fontStyle",  "bold");
    obj.edit38:setFontColor("black");
    obj.edit38:setName("edit38");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout28);
    obj.edit39:setLeft(172);
    obj.edit39:setTop(71);
    obj.edit39:setWidth(60);
    obj.edit39:setHeight(25);
    obj.edit39:setField("nvclasse3");
    obj.edit39:setType("number");
    obj.edit39:setMin(-99);
    obj.edit39:setMax(99);
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setFontSize(15.0);
    lfm_setPropAsString(obj.edit39, "fontStyle",  "bold");
    obj.edit39:setFontColor("black");
    obj.edit39:setName("edit39");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout28);
    obj.edit40:setLeft(3);
    obj.edit40:setTop(101);
    obj.edit40:setWidth(156);
    obj.edit40:setHeight(25);
    obj.edit40:setField("classe4");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setFontSize(15.0);
    lfm_setPropAsString(obj.edit40, "fontStyle",  "bold");
    obj.edit40:setFontColor("black");
    obj.edit40:setName("edit40");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout28);
    obj.edit41:setLeft(172);
    obj.edit41:setTop(101);
    obj.edit41:setWidth(60);
    obj.edit41:setHeight(25);
    obj.edit41:setField("nvclasse4");
    obj.edit41:setType("number");
    obj.edit41:setMin(-99);
    obj.edit41:setMax(99);
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setFontSize(15.0);
    lfm_setPropAsString(obj.edit41, "fontStyle",  "bold");
    obj.edit41:setFontColor("black");
    obj.edit41:setName("edit41");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout28);
    obj.edit42:setLeft(3);
    obj.edit42:setTop(131);
    obj.edit42:setWidth(156);
    obj.edit42:setHeight(25);
    obj.edit42:setField("classe5");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setFontSize(15.0);
    lfm_setPropAsString(obj.edit42, "fontStyle",  "bold");
    obj.edit42:setFontColor("black");
    obj.edit42:setName("edit42");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout28);
    obj.edit43:setLeft(172);
    obj.edit43:setTop(131);
    obj.edit43:setWidth(60);
    obj.edit43:setHeight(25);
    obj.edit43:setField("nvclasse5");
    obj.edit43:setType("number");
    obj.edit43:setMin(-99);
    obj.edit43:setMax(99);
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setFontSize(15.0);
    lfm_setPropAsString(obj.edit43, "fontStyle",  "bold");
    obj.edit43:setFontColor("black");
    obj.edit43:setName("edit43");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox1);
    obj.layout29:setLeft(255);
    obj.layout29:setTop(516);
    obj.layout29:setWidth(237);
    obj.layout29:setHeight(160);
    obj.layout29:setName("layout29");

    obj.rectangle74 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle74:setParent(obj.layout29);
    obj.rectangle74:setTop(6);
    obj.rectangle74:setWidth(235);
    obj.rectangle74:setHeight(153);
    obj.rectangle74:setColor("Black");
    obj.rectangle74:setXradius(2);
    obj.rectangle74:setYradius(2);
    obj.rectangle74:setName("rectangle74");

    obj.rectangle75 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle75:setParent(obj.layout29);
    obj.rectangle75:setLeft(60);
    obj.rectangle75:setTop(1);
    obj.rectangle75:setColor("Black");
    obj.rectangle75:setWidth(38);
    obj.rectangle75:setHeight(15);
    obj.rectangle75:setXradius(2);
    obj.rectangle75:setYradius(2);
    obj.rectangle75:setName("rectangle75");

    obj.label75 = gui.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout29);
    obj.label75:setLeft(62);
    obj.label75:setTop(2);
    obj.label75:setWidth(55);
    obj.label75:setHeight(8);
    obj.label75:setFontSize(10);
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setFontColor("white");
    obj.label75:setText("Classes");
    obj.label75:setName("label75");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout29);
    obj.edit44:setLeft(3);
    obj.edit44:setTop(11);
    obj.edit44:setWidth(156);
    obj.edit44:setHeight(25);
    obj.edit44:setField("classe6");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setFontSize(15.0);
    lfm_setPropAsString(obj.edit44, "fontStyle",  "bold");
    obj.edit44:setFontColor("black");
    obj.edit44:setName("edit44");

    obj.rectangle76 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle76:setParent(obj.layout29);
    obj.rectangle76:setLeft(186);
    obj.rectangle76:setTop(1);
    obj.rectangle76:setColor("Black");
    obj.rectangle76:setWidth(29);
    obj.rectangle76:setHeight(15);
    obj.rectangle76:setXradius(2);
    obj.rectangle76:setYradius(2);
    obj.rectangle76:setName("rectangle76");

    obj.label76 = gui.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout29);
    obj.label76:setLeft(188);
    obj.label76:setTop(2);
    obj.label76:setWidth(55);
    obj.label76:setHeight(8);
    obj.label76:setFontSize(10);
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setFontColor("white");
    obj.label76:setText("Nível");
    obj.label76:setName("label76");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout29);
    obj.edit45:setLeft(172);
    obj.edit45:setTop(11);
    obj.edit45:setWidth(60);
    obj.edit45:setHeight(25);
    obj.edit45:setField("nvclasse6");
    obj.edit45:setType("number");
    obj.edit45:setMin(-99);
    obj.edit45:setMax(99);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setFontSize(15.0);
    lfm_setPropAsString(obj.edit45, "fontStyle",  "bold");
    obj.edit45:setFontColor("black");
    obj.edit45:setName("edit45");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout29);
    obj.edit46:setLeft(3);
    obj.edit46:setTop(41);
    obj.edit46:setWidth(156);
    obj.edit46:setHeight(25);
    obj.edit46:setField("classe7");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setFontSize(15.0);
    lfm_setPropAsString(obj.edit46, "fontStyle",  "bold");
    obj.edit46:setFontColor("black");
    obj.edit46:setName("edit46");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout29);
    obj.edit47:setLeft(172);
    obj.edit47:setTop(41);
    obj.edit47:setWidth(60);
    obj.edit47:setHeight(25);
    obj.edit47:setField("nvclasse7");
    obj.edit47:setType("number");
    obj.edit47:setMin(-99);
    obj.edit47:setMax(99);
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setFontSize(15.0);
    lfm_setPropAsString(obj.edit47, "fontStyle",  "bold");
    obj.edit47:setFontColor("black");
    obj.edit47:setName("edit47");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout29);
    obj.edit48:setLeft(3);
    obj.edit48:setTop(71);
    obj.edit48:setWidth(156);
    obj.edit48:setHeight(25);
    obj.edit48:setField("classe8");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setFontSize(15.0);
    lfm_setPropAsString(obj.edit48, "fontStyle",  "bold");
    obj.edit48:setFontColor("black");
    obj.edit48:setName("edit48");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout29);
    obj.edit49:setLeft(172);
    obj.edit49:setTop(71);
    obj.edit49:setWidth(60);
    obj.edit49:setHeight(25);
    obj.edit49:setField("nvclasse8");
    obj.edit49:setType("number");
    obj.edit49:setMin(-99);
    obj.edit49:setMax(99);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setFontSize(15.0);
    lfm_setPropAsString(obj.edit49, "fontStyle",  "bold");
    obj.edit49:setFontColor("black");
    obj.edit49:setName("edit49");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout29);
    obj.edit50:setLeft(3);
    obj.edit50:setTop(101);
    obj.edit50:setWidth(156);
    obj.edit50:setHeight(25);
    obj.edit50:setField("classe9");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setFontSize(15.0);
    lfm_setPropAsString(obj.edit50, "fontStyle",  "bold");
    obj.edit50:setFontColor("black");
    obj.edit50:setName("edit50");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout29);
    obj.edit51:setLeft(172);
    obj.edit51:setTop(101);
    obj.edit51:setWidth(60);
    obj.edit51:setHeight(25);
    obj.edit51:setField("nvclasse9");
    obj.edit51:setType("number");
    obj.edit51:setMin(-99);
    obj.edit51:setMax(99);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setFontSize(15.0);
    lfm_setPropAsString(obj.edit51, "fontStyle",  "bold");
    obj.edit51:setFontColor("black");
    obj.edit51:setName("edit51");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout29);
    obj.edit52:setLeft(3);
    obj.edit52:setTop(131);
    obj.edit52:setWidth(156);
    obj.edit52:setHeight(25);
    obj.edit52:setField("classe10");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setFontSize(15.0);
    lfm_setPropAsString(obj.edit52, "fontStyle",  "bold");
    obj.edit52:setFontColor("black");
    obj.edit52:setName("edit52");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout29);
    obj.edit53:setLeft(172);
    obj.edit53:setTop(131);
    obj.edit53:setWidth(60);
    obj.edit53:setHeight(25);
    obj.edit53:setField("nvclasse10");
    obj.edit53:setType("number");
    obj.edit53:setMin(-99);
    obj.edit53:setMax(99);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontSize(15.0);
    lfm_setPropAsString(obj.edit53, "fontStyle",  "bold");
    obj.edit53:setFontColor("black");
    obj.edit53:setName("edit53");

    obj.layout30 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox1);
    obj.layout30:setLeft(502);
    obj.layout30:setTop(516);
    obj.layout30:setWidth(140);
    obj.layout30:setHeight(159);
    obj.layout30:setName("layout30");

    obj.rectangle77 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle77:setParent(obj.layout30);
    obj.rectangle77:setTop(6);
    obj.rectangle77:setColor("Black");
    obj.rectangle77:setWidth(125);
    obj.rectangle77:setHeight(33);
    obj.rectangle77:setXradius(2);
    obj.rectangle77:setYradius(2);
    obj.rectangle77:setName("rectangle77");

    obj.rectangle78 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle78:setParent(obj.layout30);
    obj.rectangle78:setLeft(35);
    obj.rectangle78:setTop(1);
    obj.rectangle78:setColor("Black");
    obj.rectangle78:setWidth(55);
    obj.rectangle78:setHeight(15);
    obj.rectangle78:setXradius(2);
    obj.rectangle78:setYradius(2);
    obj.rectangle78:setName("rectangle78");

    obj.label77 = gui.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout30);
    obj.label77:setLeft(37);
    obj.label77:setTop(2);
    obj.label77:setWidth(55);
    obj.label77:setHeight(8);
    obj.label77:setFontSize(10);
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setFontColor("white");
    obj.label77:setText("Nível Total");
    obj.label77:setName("label77");

    obj.nivel = gui.fromHandle(_obj_newObject("edit"));
    obj.nivel:setParent(obj.layout30);
    obj.nivel:setLeft(3);
    obj.nivel:setTop(11);
    obj.nivel:setWidth(119);
    obj.nivel:setHeight(25);
    obj.nivel:setName("nivel");
    obj.nivel:setField("nivel");
    obj.nivel:setType("number");
    obj.nivel:setMin(-99);
    obj.nivel:setMax(99);
    obj.nivel:setHorzTextAlign("center");
    obj.nivel:setFontSize(15.0);
    lfm_setPropAsString(obj.nivel, "fontStyle",  "bold");
    obj.nivel:setFontColor("black");
    obj.nivel:setHitTest(false);

    obj.rectangle79 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle79:setParent(obj.layout30);
    obj.rectangle79:setTop(66);
    obj.rectangle79:setColor("Black");
    obj.rectangle79:setWidth(125);
    obj.rectangle79:setHeight(33);
    obj.rectangle79:setXradius(2);
    obj.rectangle79:setYradius(2);
    obj.rectangle79:setName("rectangle79");

    obj.rectangle80 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle80:setParent(obj.layout30);
    obj.rectangle80:setLeft(23);
    obj.rectangle80:setTop(61);
    obj.rectangle80:setColor("Black");
    obj.rectangle80:setWidth(77);
    obj.rectangle80:setHeight(15);
    obj.rectangle80:setXradius(2);
    obj.rectangle80:setYradius(2);
    obj.rectangle80:setName("rectangle80");

    obj.label78 = gui.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout30);
    obj.label78:setLeft(25);
    obj.label78:setTop(62);
    obj.label78:setWidth(75);
    obj.label78:setHeight(8);
    obj.label78:setFontSize(10);
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setFontColor("white");
    obj.label78:setText("Pontos de Ação");
    obj.label78:setName("label78");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout30);
    obj.edit54:setLeft(3);
    obj.edit54:setTop(71);
    obj.edit54:setWidth(119);
    obj.edit54:setHeight(25);
    obj.edit54:setField("pacao");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setFontSize(15.0);
    lfm_setPropAsString(obj.edit54, "fontStyle",  "bold");
    obj.edit54:setFontColor("black");
    obj.edit54:setName("edit54");

    obj.rectangle81 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle81:setParent(obj.layout30);
    obj.rectangle81:setTop(126);
    obj.rectangle81:setColor("Black");
    obj.rectangle81:setWidth(125);
    obj.rectangle81:setHeight(33);
    obj.rectangle81:setXradius(2);
    obj.rectangle81:setYradius(2);
    obj.rectangle81:setName("rectangle81");

    obj.rectangle82 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle82:setParent(obj.layout30);
    obj.rectangle82:setLeft(41);
    obj.rectangle82:setTop(121);
    obj.rectangle82:setColor("Black");
    obj.rectangle82:setWidth(42);
    obj.rectangle82:setHeight(15);
    obj.rectangle82:setXradius(2);
    obj.rectangle82:setYradius(2);
    obj.rectangle82:setName("rectangle82");

    obj.label79 = gui.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout30);
    obj.label79:setLeft(43);
    obj.label79:setTop(122);
    obj.label79:setWidth(75);
    obj.label79:setHeight(8);
    obj.label79:setFontSize(10);
    lfm_setPropAsString(obj.label79, "fontStyle",  "bold");
    obj.label79:setFontColor("white");
    obj.label79:setText("Funções");
    obj.label79:setName("label79");

    obj.rectangle83 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle83:setParent(obj.layout30);
    obj.rectangle83:setLeft(3);
    obj.rectangle83:setTop(131);
    obj.rectangle83:setColor("#ffffff");
    obj.rectangle83:setWidth(119);
    obj.rectangle83:setHeight(25);
    obj.rectangle83:setName("rectangle83");

    obj.calculos = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.calculos:setParent(obj.layout30);
    obj.calculos:setName("calculos");
    obj.calculos:setField("calculos");
    obj.calculos:setLeft(24);
    obj.calculos:setTop(136);
    obj.calculos:setImageChecked("/TRPG/img/xis.png");
    obj.calculos:setImageUnchecked("/TRPG/img/Cal.png");
    obj.calculos:setWidth(15);
    obj.calculos:setHeight(15);
    obj.calculos:setHint("Desabilita os cálculos automáticos da ficha.");

    obj.acuidade = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acuidade:setParent(obj.layout30);
    obj.acuidade:setName("acuidade");
    obj.acuidade:setField("acuidade");
    obj.acuidade:setLeft(44);
    obj.acuidade:setTop(136);
    obj.acuidade:setImageChecked("/TRPG/img/hand.png");
    obj.acuidade:setImageUnchecked("/TRPG/img/closedhand.png");
    obj.acuidade:setHint("Muda o modificador em jogadas de ataque corpo-a-corpo. FOR ou DES.");
    obj.acuidade:setWidth(15);
    obj.acuidade:setHeight(15);

    obj.pontaria = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.pontaria:setParent(obj.layout30);
    obj.pontaria:setName("pontaria");
    obj.pontaria:setField("pontaria");
    obj.pontaria:setLeft(64);
    obj.pontaria:setTop(136);
    obj.pontaria:setImageChecked("/TRPG/img/wisdom.png");
    obj.pontaria:setImageUnchecked("/TRPG/img/bow.png");
    obj.pontaria:setHint("Muda o modificador em jogadas de ataque à distância. DES ou SAB.");
    obj.pontaria:setWidth(15);
    obj.pontaria:setHeight(15);

    obj.update = gui.fromHandle(_obj_newObject("image"));
    obj.update:setParent(obj.layout30);
    obj.update:setLeft(84);
    obj.update:setTop(136);
    obj.update:setName("update");
    obj.update:setSRC("/TRPG/img/update.gif");
    obj.update:setWidth(15);
    obj.update:setHeight(15);

    obj.button15 = gui.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.layout30);
    obj.button15:setLeft(84);
    obj.button15:setTop(136);
    obj.button15:setWidth(15);
    obj.button15:setHeight(15);
    obj.button15:setOpacity(0.0);
    obj.button15:setCanFocus(false);
    obj.button15:setCursor("handPoint");
    obj.button15:setHint("Baixa a versão mais recente da ficha. Versão instalada: 1.5");
    obj.button15:setName("button15");

    obj.label80 = gui.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout30);
    obj.label80:setLeft(10);
    obj.label80:setTop(690);
    obj.label80:setWidth(990);
    obj.label80:setHeight(20);
    obj.label80:setFontSize(10);
    obj.label80:setFontColor("black");
    obj.label80:setText("$(debugMsg)");
    obj.label80:setName("label80");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.Tormenta01);
    obj.dataLink1:setFields({'calculos','forca','destreza','constituicao','inteligencia','sabedoria','carisma', 'ca3','ca4','ca5','fort3','ref3','von3','acuidade','pontaria','bba','dis3','dis4','cac3','cac4', 'nvclasse1','nvclasse2','nvclasse3','nvclasse4','nvclasse5','nvclasse6','nvclasse7','nvclasse8','nvclasse9','nvclasse10', 'hab_fort','hab_ref','hab_von','__recalc'});
    obj.dataLink1:setName("dataLink1");



			-- garante que as funções existam sempre
			if TRPG_getMod == nil then
				function TRPG_getMod(sheet, habCode, defaultValue)
					local c = tostring(habCode or ""):upper()
					if c == "FOR" then return sheet.modforca or 0 end
					if c == "DES" then return sheet.moddestreza or 0 end
					if c == "CON" then return sheet.modconstituicao or 0 end
					if c == "INT" then return sheet.modinteligencia or 0 end
					if c == "SAB" then return sheet.modsabedoria or 0 end
					if c == "CAR" then return sheet.modcarisma or 0 end
					return defaultValue or 0
				end
			end

			-- normaliza o retorno do Dialogs.choose (compatível com variações)
			local function normalizeChooseResult(a, b)
				-- casos comuns:
				-- 1) callback(idx)
				-- 2) callback(text, idx)
				-- 3) callback(idx, text)
				-- 4) callback({index=..., text=...})
				if type(a) == "number" then return a end
				if type(b) == "number" then return b end

				if type(a) == "table" then
					return tonumber(a.index or a.selectedIndex or a.idx or a[1])
				end

				-- se vier só string, não dá pra garantir índice
				return nil
			end

			function TRPG_chooseHab(sheet, fieldName, defaultCode)
				if sheet == nil then return end

				local items  = {"FOR", "DES", "CON", "INT", "SAB", "CAR", "DEFAULT"}
				local labels = {
					"Força (FOR)",
					"Destreza (DES)",
					"Constituição (CON)",
					"Inteligência (INT)",
					"Sabedoria (SAB)",
					"Carisma (CAR)",
					"Padrão (" .. tostring(defaultCode) .. ")"
				}

				-- defaultIndex (1..n)
				local current = tostring(sheet[fieldName] or ""):upper()
				local defaultIndex = 1
				for i = 1, #items do
					if items[i] == current then
						defaultIndex = i
						break
					end
				end

				Dialogs.choose("Habilidade", labels,
					function(a, b)
						local idx = normalizeChooseResult(a, b)

						if idx == nil then
							-- alguns firecasts retornam o texto apenas; tenta mapear pelo texto
							if type(a) == "string" then
								local u = a:upper()
								if u:find("FOR") then idx = 1
								elseif u:find("DES") then idx = 2
								elseif u:find("CON") then idx = 3
								elseif u:find("INT") then idx = 4
								elseif u:find("SAB") then idx = 5
								elseif u:find("CAR") then idx = 6
								else idx = 7 end
							else
								-- cancelado / retorno inesperado
								return
							end
						end

						local chosenCode = items[idx] or "DEFAULT"

						if chosenCode == "DEFAULT" then
							sheet[fieldName] = defaultCode
						else
							sheet[fieldName] = chosenCode
						end

						-- força recalc mesmo com calculos marcado
						sheet.__forceRecalc = true
						recalcAll()
						sheet.__forceRecalc = false

						sheet.__recalc = (tonumber(sheet.__recalc) or 0) + 1
					end,
					defaultIndex
				)

				if sheet[fieldName] == nil or sheet[fieldName] == "" then
					sheet[fieldName] = defaultCode
				end
			end

			function recalcAll()
				if sheet == nil then return end

				if sheet.calculos == true and sheet.__forceRecalc ~= true then
					return
				end

				local function N(v, d)
					local n = tonumber(v)
					if n == nil then return d or 0 end
					return n
				end

				if sheet.hab_fort == nil or sheet.hab_fort == "" then sheet.hab_fort = "CON" end
				if sheet.hab_ref  == nil or sheet.hab_ref  == "" then sheet.hab_ref  = "DES" end
				if sheet.hab_von  == nil or sheet.hab_von  == "" then sheet.hab_von  = "SAB" end

				sheet.modforca        = math.floor((N(sheet.forca, 10) / 2) - 5)
				sheet.moddestreza     = math.floor((N(sheet.destreza, 10) / 2) - 5)
				sheet.modconstituicao = math.floor((N(sheet.constituicao, 10) / 2) - 5)
				sheet.modinteligencia = math.floor((N(sheet.inteligencia, 10) / 2) - 5)
				sheet.modsabedoria    = math.floor((N(sheet.sabedoria, 10) / 2) - 5)
				sheet.modcarisma      = math.floor((N(sheet.carisma, 10) / 2) - 5)

				sheet.nivel =
					math.floor(N(sheet.nvclasse1)) + math.floor(N(sheet.nvclasse2)) + math.floor(N(sheet.nvclasse3)) +
					math.floor(N(sheet.nvclasse4)) + math.floor(N(sheet.nvclasse5)) + math.floor(N(sheet.nvclasse6)) +
					math.floor(N(sheet.nvclasse7)) + math.floor(N(sheet.nvclasse8)) + math.floor(N(sheet.nvclasse9)) +
					math.floor(N(sheet.nvclasse10))

				sheet.metadenivel = math.floor(N(sheet.nivel) / 2)

				sheet.ca1 = N(sheet.metadenivel) + 10
				sheet.ca2 = N(sheet.moddestreza)
				sheet.totalca =
					math.floor(N(sheet.ca1)) + math.floor(N(sheet.ca2)) + math.floor(N(sheet.ca3)) +
					math.floor(N(sheet.ca4)) + math.floor(N(sheet.ca5))

				sheet.fort1 = N(sheet.metadenivel)
				sheet.fort2 = TRPG_getMod(sheet, sheet.hab_fort, N(sheet.modconstituicao))
				sheet.totalfort = math.floor(N(sheet.fort1)) + math.floor(N(sheet.fort2)) + math.floor(N(sheet.fort3))

				sheet.ref1 = N(sheet.metadenivel)
				sheet.ref2 = TRPG_getMod(sheet, sheet.hab_ref, N(sheet.moddestreza))
				sheet.totalref = math.floor(N(sheet.ref1)) + math.floor(N(sheet.ref2)) + math.floor(N(sheet.ref3))

				sheet.von1 = N(sheet.metadenivel)
				sheet.von2 = TRPG_getMod(sheet, sheet.hab_von, N(sheet.modsabedoria))
				sheet.totalvon = math.floor(N(sheet.von1)) + math.floor(N(sheet.von2)) + math.floor(N(sheet.von3))

				if sheet.acuidade == true then
					sheet.cac2 = N(sheet.moddestreza)
				else
					sheet.cac2 = N(sheet.modforca)
				end
				sheet.totalcac =
					math.floor(N(sheet.bba)) + math.floor(N(sheet.cac2)) + math.floor(N(sheet.cac3)) + math.floor(N(sheet.cac4))

				if sheet.pontaria == true then
					sheet.dis2 = N(sheet.modsabedoria)
				else
					sheet.dis2 = N(sheet.moddestreza)
				end
				sheet.totaldis =
					math.floor(N(sheet.bba)) + math.floor(N(sheet.dis2)) + math.floor(N(sheet.dis3)) + math.floor(N(sheet.dis4))
			end

			if TRPG_rollValue == nil then
				function TRPG_rollValue(nodeOrSheet, value, label)
					if nodeOrSheet == nil then return end

					local v = tonumber(value) or 0
					local expr = tostring(v)  -- pode ser "12" ou "-3" etc.

					local rolagem = rrpg.interpretarRolagem(expr)
					if rolagem == nil then
						showMessage("Rolagem inválida: " .. expr)
						return
					end

					-- se não tiver dado, prefixa 1d20
					if not rolagem.possuiAlgumDado then
						rolagem = rrpg.interpretarRolagem("1d20"):concatenar(rolagem)
					end

					local mesa = rrpg.getMesaDe(nodeOrSheet)
					local titulo = tostring(label or "Teste")

					if mesa ~= nil then
						local chat = mesa.activeChat or mesa.chat
						if chat ~= nil then
							chat:rolarDados(rolagem, titulo)
							return
						end
					end

					rolagem:rolarLocalmente()
					showMessage(titulo .. " = " .. tostring(rolagem.resultado) .. "\n(" .. tostring(rolagem.asString) .. ")")
				end
			end

		


    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Perícias e Talentos");
    obj.tab2:setName("tab2");

    obj.Tormenta02 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta02:setParent(obj.tab2);
    obj.Tormenta02:setName("Tormenta02");
    obj.Tormenta02:setAlign("client");
    obj.Tormenta02:setTheme("light");
    obj.Tormenta02:setLockWhileNodeIsLoading(true);

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.Tormenta02);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle84 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle84:setParent(obj.scrollBox2);
    obj.rectangle84:setWidth(1010);
    obj.rectangle84:setHeight(700);
    obj.rectangle84:setColor("LightGray");
    obj.rectangle84:setXradius(10);
    obj.rectangle84:setYradius(10);
    obj.rectangle84:setName("rectangle84");

    obj.layout31 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.scrollBox2);
    obj.layout31:setLeft(3);
    obj.layout31:setTop(10);
    obj.layout31:setWidth(480);
    obj.layout31:setHeight(700);
    obj.layout31:setName("layout31");

    obj.rectangle85 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle85:setParent(obj.layout31);
    obj.rectangle85:setLeft(249);
    obj.rectangle85:setTop(10);
    obj.rectangle85:setColor("Black");
    obj.rectangle85:setWidth(38);
    obj.rectangle85:setHeight(15);
    obj.rectangle85:setXradius(2);
    obj.rectangle85:setYradius(2);
    obj.rectangle85:setName("rectangle85");

    obj.label81 = gui.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout31);
    obj.label81:setLeft(256);
    obj.label81:setTop(11);
    obj.label81:setWidth(48);
    obj.label81:setHeight(8);
    obj.label81:setFontSize(10);
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setFontColor("white");
    obj.label81:setText("Total");
    obj.label81:setName("label81");

    obj.rectangle86 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle86:setParent(obj.layout31);
    obj.rectangle86:setLeft(308);
    obj.rectangle86:setTop(10);
    obj.rectangle86:setColor("Black");
    obj.rectangle86:setWidth(38);
    obj.rectangle86:setHeight(15);
    obj.rectangle86:setXradius(2);
    obj.rectangle86:setYradius(2);
    obj.rectangle86:setName("rectangle86");

    obj.label82 = gui.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout31);
    obj.label82:setLeft(316);
    obj.label82:setTop(11);
    obj.label82:setWidth(48);
    obj.label82:setHeight(8);
    obj.label82:setFontSize(10);
    lfm_setPropAsString(obj.label82, "fontStyle",  "bold");
    obj.label82:setFontColor("white");
    obj.label82:setText("Grad");
    obj.label82:setName("label82");

    obj.rectangle87 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle87:setParent(obj.layout31);
    obj.rectangle87:setLeft(374);
    obj.rectangle87:setTop(10);
    obj.rectangle87:setColor("Black");
    obj.rectangle87:setWidth(38);
    obj.rectangle87:setHeight(15);
    obj.rectangle87:setXradius(2);
    obj.rectangle87:setYradius(2);
    obj.rectangle87:setName("rectangle87");

    obj.label83 = gui.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout31);
    obj.label83:setLeft(378);
    obj.label83:setTop(11);
    obj.label83:setWidth(48);
    obj.label83:setHeight(8);
    obj.label83:setFontSize(10);
    lfm_setPropAsString(obj.label83, "fontStyle",  "bold");
    obj.label83:setFontColor("white");
    obj.label83:setText("Mod H");
    obj.label83:setName("label83");

    obj.rectangle88 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle88:setParent(obj.layout31);
    obj.rectangle88:setLeft(440);
    obj.rectangle88:setTop(10);
    obj.rectangle88:setColor("Black");
    obj.rectangle88:setWidth(38);
    obj.rectangle88:setHeight(15);
    obj.rectangle88:setXradius(2);
    obj.rectangle88:setYradius(2);
    obj.rectangle88:setName("rectangle88");

    obj.label84 = gui.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout31);
    obj.label84:setLeft(443);
    obj.label84:setTop(11);
    obj.label84:setWidth(48);
    obj.label84:setHeight(8);
    obj.label84:setFontSize(10);
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setFontColor("white");
    obj.label84:setText("Outros");
    obj.label84:setName("label84");

    obj.layout32 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout31);
    obj.layout32:setLeft(0);
    obj.layout32:setTop(17);
    obj.layout32:setWidth(480);
    obj.layout32:setHeight(700);
    obj.layout32:setName("layout32");

    obj.layout33 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout32);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(0);
    obj.layout33:setWidth(480);
    obj.layout33:setHeight(32);
    obj.layout33:setName("layout33");

    obj.rectangle89 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle89:setParent(obj.layout33);
    obj.rectangle89:setLeft(3);
    obj.rectangle89:setTop(3);
    obj.rectangle89:setColor("Black");
    obj.rectangle89:setWidth(244);
    obj.rectangle89:setHeight(25);
    obj.rectangle89:setXradius(2);
    obj.rectangle89:setYradius(2);
    obj.rectangle89:setName("rectangle89");

    obj.imageCheckBox1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout33);
    obj.imageCheckBox1:setLeft(3);
    obj.imageCheckBox1:setTop(5);
    obj.imageCheckBox1:setWidth(20);
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox1:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox1:setField("cbxacrobacia");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.button16 = gui.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.layout33);
    obj.button16:setLeft(27);
    obj.button16:setTop(5);
    obj.button16:setWidth(20);
    obj.button16:setHeight(20);
    obj.button16:setText("H");
    obj.button16:setHint("Escolher habilidade base");
    obj.button16:setName("button16");

    obj.label85 = gui.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout33);
    obj.label85:setLeft(50);
    obj.label85:setTop(5);
    obj.label85:setWidth(150);
    obj.label85:setHeight(20);
    obj.label85:setText("Acrobacia");
    obj.label85:setHorzTextAlign("leading");
    obj.label85:setFontSize(15.0);
    lfm_setPropAsString(obj.label85, "fontStyle",  "bold");
    obj.label85:setFontColor("white");
    obj.label85:setName("label85");

    obj.button17 = gui.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.layout33);
    obj.button17:setLeft(50);
    obj.button17:setTop(5);
    obj.button17:setWidth(150);
    obj.button17:setHeight(20);
    obj.button17:setOpacity(0.0);
    obj.button17:setCanFocus(false);
    obj.button17:setCursor("handPoint");
    obj.button17:setHint("Rolar 1d20 + Acrobacia");
    obj.button17:setName("button17");

    obj.totalacrobacia = gui.fromHandle(_obj_newObject("edit"));
    obj.totalacrobacia:setParent(obj.layout33);
    obj.totalacrobacia:setLeft(249);
    obj.totalacrobacia:setTop(3);
    obj.totalacrobacia:setWidth(40);
    obj.totalacrobacia:setHeight(25);
    obj.totalacrobacia:setName("totalacrobacia");
    obj.totalacrobacia:setField("totalacrobacia");
    obj.totalacrobacia:setType("number");
    obj.totalacrobacia:setMin(-999);
    obj.totalacrobacia:setMax(999);
    obj.totalacrobacia:setHorzTextAlign("center");
    obj.totalacrobacia:setFontColor("black");
    obj.totalacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalacrobacia, "fontStyle",  "bold");
    obj.totalacrobacia:setHitTest(false);

    obj.rectangle90 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle90:setParent(obj.layout33);
    obj.rectangle90:setLeft(290);
    obj.rectangle90:setTop(8);
    obj.rectangle90:setColor("Black");
    obj.rectangle90:setWidth(20);
    obj.rectangle90:setHeight(15);
    obj.rectangle90:setXradius(2);
    obj.rectangle90:setYradius(2);
    obj.rectangle90:setName("rectangle90");

    obj.label86 = gui.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout33);
    obj.label86:setLeft(292);
    obj.label86:setTop(6);
    obj.label86:setWidth(20);
    obj.label86:setHeight(15);
    obj.label86:setFontSize(18);
    lfm_setPropAsString(obj.label86, "fontStyle",  "bold");
    obj.label86:setFontColor("white");
    obj.label86:setText("=");
    obj.label86:setName("label86");

    obj.gradacrobacia = gui.fromHandle(_obj_newObject("edit"));
    obj.gradacrobacia:setParent(obj.layout33);
    obj.gradacrobacia:setLeft(306);
    obj.gradacrobacia:setTop(3);
    obj.gradacrobacia:setWidth(40);
    obj.gradacrobacia:setHeight(25);
    obj.gradacrobacia:setName("gradacrobacia");
    obj.gradacrobacia:setField("gradacrobacia");
    obj.gradacrobacia:setType("number");
    obj.gradacrobacia:setMin(-999);
    obj.gradacrobacia:setMax(999);
    obj.gradacrobacia:setHorzTextAlign("center");
    obj.gradacrobacia:setFontColor("black");
    obj.gradacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradacrobacia, "fontStyle",  "bold");
    obj.gradacrobacia:setHitTest(false);

    obj.rectangle91 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle91:setParent(obj.layout33);
    obj.rectangle91:setLeft(350);
    obj.rectangle91:setTop(8);
    obj.rectangle91:setColor("Black");
    obj.rectangle91:setWidth(20);
    obj.rectangle91:setHeight(15);
    obj.rectangle91:setXradius(2);
    obj.rectangle91:setYradius(2);
    obj.rectangle91:setName("rectangle91");

    obj.label87 = gui.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout33);
    obj.label87:setLeft(353);
    obj.label87:setTop(6);
    obj.label87:setWidth(20);
    obj.label87:setHeight(15);
    obj.label87:setFontSize(18);
    lfm_setPropAsString(obj.label87, "fontStyle",  "bold");
    obj.label87:setFontColor("white");
    obj.label87:setText("+");
    obj.label87:setName("label87");

    obj.modacrobacia = gui.fromHandle(_obj_newObject("edit"));
    obj.modacrobacia:setParent(obj.layout33);
    obj.modacrobacia:setLeft(373);
    obj.modacrobacia:setTop(3);
    obj.modacrobacia:setWidth(40);
    obj.modacrobacia:setHeight(25);
    obj.modacrobacia:setName("modacrobacia");
    obj.modacrobacia:setField("modacrobacia");
    obj.modacrobacia:setType("number");
    obj.modacrobacia:setMin(-999);
    obj.modacrobacia:setMax(999);
    obj.modacrobacia:setHorzTextAlign("center");
    obj.modacrobacia:setFontColor("black");
    obj.modacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.modacrobacia, "fontStyle",  "bold");
    obj.modacrobacia:setHitTest(false);

    obj.rectangle92 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle92:setParent(obj.layout33);
    obj.rectangle92:setLeft(416);
    obj.rectangle92:setTop(8);
    obj.rectangle92:setColor("Black");
    obj.rectangle92:setWidth(20);
    obj.rectangle92:setHeight(15);
    obj.rectangle92:setXradius(2);
    obj.rectangle92:setYradius(2);
    obj.rectangle92:setName("rectangle92");

    obj.label88 = gui.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout33);
    obj.label88:setLeft(419);
    obj.label88:setTop(6);
    obj.label88:setWidth(20);
    obj.label88:setHeight(15);
    obj.label88:setFontSize(18);
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setFontColor("white");
    obj.label88:setText("+");
    obj.label88:setName("label88");

    obj.outrosacrobacia = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosacrobacia:setParent(obj.layout33);
    obj.outrosacrobacia:setLeft(439);
    obj.outrosacrobacia:setTop(3);
    obj.outrosacrobacia:setWidth(40);
    obj.outrosacrobacia:setHeight(25);
    obj.outrosacrobacia:setName("outrosacrobacia");
    obj.outrosacrobacia:setField("outrosacrobacia");
    obj.outrosacrobacia:setType("number");
    obj.outrosacrobacia:setMin(-999);
    obj.outrosacrobacia:setMax(999);
    obj.outrosacrobacia:setHorzTextAlign("center");
    obj.outrosacrobacia:setFontColor("black");
    obj.outrosacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosacrobacia, "fontStyle",  "bold");

    obj.layout34 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout32);
    obj.layout34:setLeft(0);
    obj.layout34:setTop(28);
    obj.layout34:setWidth(480);
    obj.layout34:setHeight(32);
    obj.layout34:setName("layout34");

    obj.rectangle93 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle93:setParent(obj.layout34);
    obj.rectangle93:setLeft(3);
    obj.rectangle93:setTop(3);
    obj.rectangle93:setColor("Black");
    obj.rectangle93:setWidth(244);
    obj.rectangle93:setHeight(25);
    obj.rectangle93:setXradius(2);
    obj.rectangle93:setYradius(2);
    obj.rectangle93:setName("rectangle93");

    obj.imageCheckBox2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout34);
    obj.imageCheckBox2:setLeft(3);
    obj.imageCheckBox2:setTop(5);
    obj.imageCheckBox2:setWidth(20);
    obj.imageCheckBox2:setHeight(20);
    obj.imageCheckBox2:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox2:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox2:setField("cbxadestrar");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.button18 = gui.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.layout34);
    obj.button18:setLeft(27);
    obj.button18:setTop(5);
    obj.button18:setWidth(20);
    obj.button18:setHeight(20);
    obj.button18:setText("H");
    obj.button18:setHint("Escolher habilidade base");
    obj.button18:setName("button18");

    obj.label89 = gui.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout34);
    obj.label89:setLeft(50);
    obj.label89:setTop(5);
    obj.label89:setWidth(150);
    obj.label89:setHeight(20);
    obj.label89:setText("Adestrar Animais");
    obj.label89:setHorzTextAlign("leading");
    obj.label89:setFontSize(15.0);
    lfm_setPropAsString(obj.label89, "fontStyle",  "bold");
    obj.label89:setFontColor("white");
    obj.label89:setName("label89");

    obj.button19 = gui.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.layout34);
    obj.button19:setLeft(50);
    obj.button19:setTop(5);
    obj.button19:setWidth(150);
    obj.button19:setHeight(20);
    obj.button19:setOpacity(0.0);
    obj.button19:setCanFocus(false);
    obj.button19:setCursor("handPoint");
    obj.button19:setHint("Rolar 1d20 + Adestrar Animais");
    obj.button19:setName("button19");

    obj.totaladestrar = gui.fromHandle(_obj_newObject("edit"));
    obj.totaladestrar:setParent(obj.layout34);
    obj.totaladestrar:setLeft(249);
    obj.totaladestrar:setTop(3);
    obj.totaladestrar:setWidth(40);
    obj.totaladestrar:setHeight(25);
    obj.totaladestrar:setName("totaladestrar");
    obj.totaladestrar:setField("totaladestrar");
    obj.totaladestrar:setType("number");
    obj.totaladestrar:setMin(-999);
    obj.totaladestrar:setMax(999);
    obj.totaladestrar:setHorzTextAlign("center");
    obj.totaladestrar:setFontColor("black");
    obj.totaladestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.totaladestrar, "fontStyle",  "bold");
    obj.totaladestrar:setHitTest(false);

    obj.rectangle94 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle94:setParent(obj.layout34);
    obj.rectangle94:setLeft(290);
    obj.rectangle94:setTop(8);
    obj.rectangle94:setColor("Black");
    obj.rectangle94:setWidth(20);
    obj.rectangle94:setHeight(15);
    obj.rectangle94:setXradius(2);
    obj.rectangle94:setYradius(2);
    obj.rectangle94:setName("rectangle94");

    obj.label90 = gui.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout34);
    obj.label90:setLeft(292);
    obj.label90:setTop(6);
    obj.label90:setWidth(20);
    obj.label90:setHeight(15);
    obj.label90:setFontSize(18);
    lfm_setPropAsString(obj.label90, "fontStyle",  "bold");
    obj.label90:setFontColor("white");
    obj.label90:setText("=");
    obj.label90:setName("label90");

    obj.gradadestrar = gui.fromHandle(_obj_newObject("edit"));
    obj.gradadestrar:setParent(obj.layout34);
    obj.gradadestrar:setLeft(306);
    obj.gradadestrar:setTop(3);
    obj.gradadestrar:setWidth(40);
    obj.gradadestrar:setHeight(25);
    obj.gradadestrar:setName("gradadestrar");
    obj.gradadestrar:setField("gradadestrar");
    obj.gradadestrar:setType("number");
    obj.gradadestrar:setMin(-999);
    obj.gradadestrar:setMax(999);
    obj.gradadestrar:setHorzTextAlign("center");
    obj.gradadestrar:setFontColor("black");
    obj.gradadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.gradadestrar, "fontStyle",  "bold");
    obj.gradadestrar:setHitTest(false);

    obj.rectangle95 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle95:setParent(obj.layout34);
    obj.rectangle95:setLeft(350);
    obj.rectangle95:setTop(8);
    obj.rectangle95:setColor("Black");
    obj.rectangle95:setWidth(20);
    obj.rectangle95:setHeight(15);
    obj.rectangle95:setXradius(2);
    obj.rectangle95:setYradius(2);
    obj.rectangle95:setName("rectangle95");

    obj.label91 = gui.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout34);
    obj.label91:setLeft(353);
    obj.label91:setTop(6);
    obj.label91:setWidth(20);
    obj.label91:setHeight(15);
    obj.label91:setFontSize(18);
    lfm_setPropAsString(obj.label91, "fontStyle",  "bold");
    obj.label91:setFontColor("white");
    obj.label91:setText("+");
    obj.label91:setName("label91");

    obj.modadestrar = gui.fromHandle(_obj_newObject("edit"));
    obj.modadestrar:setParent(obj.layout34);
    obj.modadestrar:setLeft(373);
    obj.modadestrar:setTop(3);
    obj.modadestrar:setWidth(40);
    obj.modadestrar:setHeight(25);
    obj.modadestrar:setName("modadestrar");
    obj.modadestrar:setField("modadestrar");
    obj.modadestrar:setType("number");
    obj.modadestrar:setMin(-999);
    obj.modadestrar:setMax(999);
    obj.modadestrar:setHorzTextAlign("center");
    obj.modadestrar:setFontColor("black");
    obj.modadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.modadestrar, "fontStyle",  "bold");
    obj.modadestrar:setHitTest(false);

    obj.rectangle96 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle96:setParent(obj.layout34);
    obj.rectangle96:setLeft(416);
    obj.rectangle96:setTop(8);
    obj.rectangle96:setColor("Black");
    obj.rectangle96:setWidth(20);
    obj.rectangle96:setHeight(15);
    obj.rectangle96:setXradius(2);
    obj.rectangle96:setYradius(2);
    obj.rectangle96:setName("rectangle96");

    obj.label92 = gui.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout34);
    obj.label92:setLeft(419);
    obj.label92:setTop(6);
    obj.label92:setWidth(20);
    obj.label92:setHeight(15);
    obj.label92:setFontSize(18);
    lfm_setPropAsString(obj.label92, "fontStyle",  "bold");
    obj.label92:setFontColor("white");
    obj.label92:setText("+");
    obj.label92:setName("label92");

    obj.outrosadestrar = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosadestrar:setParent(obj.layout34);
    obj.outrosadestrar:setLeft(439);
    obj.outrosadestrar:setTop(3);
    obj.outrosadestrar:setWidth(40);
    obj.outrosadestrar:setHeight(25);
    obj.outrosadestrar:setName("outrosadestrar");
    obj.outrosadestrar:setField("outrosadestrar");
    obj.outrosadestrar:setType("number");
    obj.outrosadestrar:setMin(-999);
    obj.outrosadestrar:setMax(999);
    obj.outrosadestrar:setHorzTextAlign("center");
    obj.outrosadestrar:setFontColor("black");
    obj.outrosadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosadestrar, "fontStyle",  "bold");

    obj.layout35 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout32);
    obj.layout35:setLeft(0);
    obj.layout35:setTop(56);
    obj.layout35:setWidth(480);
    obj.layout35:setHeight(32);
    obj.layout35:setName("layout35");

    obj.rectangle97 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle97:setParent(obj.layout35);
    obj.rectangle97:setLeft(3);
    obj.rectangle97:setTop(3);
    obj.rectangle97:setColor("Black");
    obj.rectangle97:setWidth(244);
    obj.rectangle97:setHeight(25);
    obj.rectangle97:setXradius(2);
    obj.rectangle97:setYradius(2);
    obj.rectangle97:setName("rectangle97");

    obj.imageCheckBox3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout35);
    obj.imageCheckBox3:setLeft(3);
    obj.imageCheckBox3:setTop(5);
    obj.imageCheckBox3:setWidth(20);
    obj.imageCheckBox3:setHeight(20);
    obj.imageCheckBox3:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox3:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox3:setField("cbxatletismo");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.button20 = gui.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.layout35);
    obj.button20:setLeft(27);
    obj.button20:setTop(5);
    obj.button20:setWidth(20);
    obj.button20:setHeight(20);
    obj.button20:setText("H");
    obj.button20:setHint("Escolher habilidade base");
    obj.button20:setName("button20");

    obj.label93 = gui.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout35);
    obj.label93:setLeft(50);
    obj.label93:setTop(5);
    obj.label93:setWidth(150);
    obj.label93:setHeight(20);
    obj.label93:setText("Atletismo");
    obj.label93:setHorzTextAlign("leading");
    obj.label93:setFontSize(15.0);
    lfm_setPropAsString(obj.label93, "fontStyle",  "bold");
    obj.label93:setFontColor("white");
    obj.label93:setName("label93");

    obj.button21 = gui.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.layout35);
    obj.button21:setLeft(50);
    obj.button21:setTop(5);
    obj.button21:setWidth(150);
    obj.button21:setHeight(20);
    obj.button21:setOpacity(0.0);
    obj.button21:setCanFocus(false);
    obj.button21:setCursor("handPoint");
    obj.button21:setHint("Rolar 1d20 + Atletismo");
    obj.button21:setName("button21");

    obj.totalatletismo = gui.fromHandle(_obj_newObject("edit"));
    obj.totalatletismo:setParent(obj.layout35);
    obj.totalatletismo:setLeft(249);
    obj.totalatletismo:setTop(3);
    obj.totalatletismo:setWidth(40);
    obj.totalatletismo:setHeight(25);
    obj.totalatletismo:setName("totalatletismo");
    obj.totalatletismo:setField("totalatletismo");
    obj.totalatletismo:setType("number");
    obj.totalatletismo:setMin(-999);
    obj.totalatletismo:setMax(999);
    obj.totalatletismo:setHorzTextAlign("center");
    obj.totalatletismo:setFontColor("black");
    obj.totalatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatletismo, "fontStyle",  "bold");
    obj.totalatletismo:setHitTest(false);

    obj.rectangle98 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle98:setParent(obj.layout35);
    obj.rectangle98:setLeft(290);
    obj.rectangle98:setTop(8);
    obj.rectangle98:setColor("Black");
    obj.rectangle98:setWidth(20);
    obj.rectangle98:setHeight(15);
    obj.rectangle98:setXradius(2);
    obj.rectangle98:setYradius(2);
    obj.rectangle98:setName("rectangle98");

    obj.label94 = gui.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout35);
    obj.label94:setLeft(292);
    obj.label94:setTop(6);
    obj.label94:setWidth(20);
    obj.label94:setHeight(15);
    obj.label94:setFontSize(18);
    lfm_setPropAsString(obj.label94, "fontStyle",  "bold");
    obj.label94:setFontColor("white");
    obj.label94:setText("=");
    obj.label94:setName("label94");

    obj.gradatletismo = gui.fromHandle(_obj_newObject("edit"));
    obj.gradatletismo:setParent(obj.layout35);
    obj.gradatletismo:setLeft(306);
    obj.gradatletismo:setTop(3);
    obj.gradatletismo:setWidth(40);
    obj.gradatletismo:setHeight(25);
    obj.gradatletismo:setName("gradatletismo");
    obj.gradatletismo:setField("gradatletismo");
    obj.gradatletismo:setType("number");
    obj.gradatletismo:setMin(-999);
    obj.gradatletismo:setMax(999);
    obj.gradatletismo:setHorzTextAlign("center");
    obj.gradatletismo:setFontColor("black");
    obj.gradatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatletismo, "fontStyle",  "bold");
    obj.gradatletismo:setHitTest(false);

    obj.rectangle99 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle99:setParent(obj.layout35);
    obj.rectangle99:setLeft(350);
    obj.rectangle99:setTop(8);
    obj.rectangle99:setColor("Black");
    obj.rectangle99:setWidth(20);
    obj.rectangle99:setHeight(15);
    obj.rectangle99:setXradius(2);
    obj.rectangle99:setYradius(2);
    obj.rectangle99:setName("rectangle99");

    obj.label95 = gui.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout35);
    obj.label95:setLeft(353);
    obj.label95:setTop(6);
    obj.label95:setWidth(20);
    obj.label95:setHeight(15);
    obj.label95:setFontSize(18);
    lfm_setPropAsString(obj.label95, "fontStyle",  "bold");
    obj.label95:setFontColor("white");
    obj.label95:setText("+");
    obj.label95:setName("label95");

    obj.modatletismo = gui.fromHandle(_obj_newObject("edit"));
    obj.modatletismo:setParent(obj.layout35);
    obj.modatletismo:setLeft(373);
    obj.modatletismo:setTop(3);
    obj.modatletismo:setWidth(40);
    obj.modatletismo:setHeight(25);
    obj.modatletismo:setName("modatletismo");
    obj.modatletismo:setField("modatletismo");
    obj.modatletismo:setType("number");
    obj.modatletismo:setMin(-999);
    obj.modatletismo:setMax(999);
    obj.modatletismo:setHorzTextAlign("center");
    obj.modatletismo:setFontColor("black");
    obj.modatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.modatletismo, "fontStyle",  "bold");
    obj.modatletismo:setHitTest(false);

    obj.rectangle100 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle100:setParent(obj.layout35);
    obj.rectangle100:setLeft(416);
    obj.rectangle100:setTop(8);
    obj.rectangle100:setColor("Black");
    obj.rectangle100:setWidth(20);
    obj.rectangle100:setHeight(15);
    obj.rectangle100:setXradius(2);
    obj.rectangle100:setYradius(2);
    obj.rectangle100:setName("rectangle100");

    obj.label96 = gui.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout35);
    obj.label96:setLeft(419);
    obj.label96:setTop(6);
    obj.label96:setWidth(20);
    obj.label96:setHeight(15);
    obj.label96:setFontSize(18);
    lfm_setPropAsString(obj.label96, "fontStyle",  "bold");
    obj.label96:setFontColor("white");
    obj.label96:setText("+");
    obj.label96:setName("label96");

    obj.outrosatletismo = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosatletismo:setParent(obj.layout35);
    obj.outrosatletismo:setLeft(439);
    obj.outrosatletismo:setTop(3);
    obj.outrosatletismo:setWidth(40);
    obj.outrosatletismo:setHeight(25);
    obj.outrosatletismo:setName("outrosatletismo");
    obj.outrosatletismo:setField("outrosatletismo");
    obj.outrosatletismo:setType("number");
    obj.outrosatletismo:setMin(-999);
    obj.outrosatletismo:setMax(999);
    obj.outrosatletismo:setHorzTextAlign("center");
    obj.outrosatletismo:setFontColor("black");
    obj.outrosatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatletismo, "fontStyle",  "bold");

    obj.layout36 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout32);
    obj.layout36:setLeft(0);
    obj.layout36:setTop(84);
    obj.layout36:setWidth(480);
    obj.layout36:setHeight(32);
    obj.layout36:setName("layout36");

    obj.rectangle101 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle101:setParent(obj.layout36);
    obj.rectangle101:setLeft(3);
    obj.rectangle101:setTop(3);
    obj.rectangle101:setColor("Black");
    obj.rectangle101:setWidth(244);
    obj.rectangle101:setHeight(25);
    obj.rectangle101:setXradius(2);
    obj.rectangle101:setYradius(2);
    obj.rectangle101:setName("rectangle101");

    obj.imageCheckBox4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout36);
    obj.imageCheckBox4:setLeft(3);
    obj.imageCheckBox4:setTop(5);
    obj.imageCheckBox4:setWidth(20);
    obj.imageCheckBox4:setHeight(20);
    obj.imageCheckBox4:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox4:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox4:setField("cbxatuacao1");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.button22 = gui.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.layout36);
    obj.button22:setLeft(27);
    obj.button22:setTop(5);
    obj.button22:setWidth(20);
    obj.button22:setHeight(20);
    obj.button22:setText("H");
    obj.button22:setHint("Escolher habilidade base");
    obj.button22:setName("button22");

    obj.label97 = gui.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout36);
    obj.label97:setLeft(50);
    obj.label97:setTop(5);
    obj.label97:setWidth(150);
    obj.label97:setHeight(20);
    obj.label97:setText("Atuação");
    obj.label97:setHorzTextAlign("leading");
    obj.label97:setFontSize(15.0);
    lfm_setPropAsString(obj.label97, "fontStyle",  "bold");
    obj.label97:setFontColor("white");
    obj.label97:setName("label97");

    obj.button23 = gui.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.layout36);
    obj.button23:setLeft(50);
    obj.button23:setTop(5);
    obj.button23:setWidth(150);
    obj.button23:setHeight(20);
    obj.button23:setOpacity(0.0);
    obj.button23:setCanFocus(false);
    obj.button23:setCursor("handPoint");
    obj.button23:setHint("Rolar 1d20 + Atuação");
    obj.button23:setName("button23");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout36);
    obj.edit55:setField("atuacao1");
    obj.edit55:setLeft(167);
    obj.edit55:setTop(3);
    obj.edit55:setWidth(80);
    obj.edit55:setHeight(25);
    obj.edit55:setFontSize(13.0);
    obj.edit55:setHorzTextAlign("center");
    lfm_setPropAsString(obj.edit55, "fontStyle",  "bold");
    obj.edit55:setFontColor("black");
    obj.edit55:setName("edit55");

    obj.totalatuacao1 = gui.fromHandle(_obj_newObject("edit"));
    obj.totalatuacao1:setParent(obj.layout36);
    obj.totalatuacao1:setLeft(249);
    obj.totalatuacao1:setTop(3);
    obj.totalatuacao1:setWidth(40);
    obj.totalatuacao1:setHeight(25);
    obj.totalatuacao1:setName("totalatuacao1");
    obj.totalatuacao1:setField("totalatuacao1");
    obj.totalatuacao1:setType("number");
    obj.totalatuacao1:setMin(-999);
    obj.totalatuacao1:setMax(999);
    obj.totalatuacao1:setHorzTextAlign("center");
    obj.totalatuacao1:setFontColor("black");
    obj.totalatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatuacao1, "fontStyle",  "bold");
    obj.totalatuacao1:setHitTest(false);

    obj.rectangle102 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle102:setParent(obj.layout36);
    obj.rectangle102:setLeft(290);
    obj.rectangle102:setTop(8);
    obj.rectangle102:setColor("Black");
    obj.rectangle102:setWidth(20);
    obj.rectangle102:setHeight(15);
    obj.rectangle102:setXradius(2);
    obj.rectangle102:setYradius(2);
    obj.rectangle102:setName("rectangle102");

    obj.label98 = gui.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout36);
    obj.label98:setLeft(292);
    obj.label98:setTop(6);
    obj.label98:setWidth(20);
    obj.label98:setHeight(15);
    obj.label98:setFontSize(18);
    lfm_setPropAsString(obj.label98, "fontStyle",  "bold");
    obj.label98:setFontColor("white");
    obj.label98:setText("=");
    obj.label98:setName("label98");

    obj.gradatuacao1 = gui.fromHandle(_obj_newObject("edit"));
    obj.gradatuacao1:setParent(obj.layout36);
    obj.gradatuacao1:setLeft(306);
    obj.gradatuacao1:setTop(3);
    obj.gradatuacao1:setWidth(40);
    obj.gradatuacao1:setHeight(25);
    obj.gradatuacao1:setName("gradatuacao1");
    obj.gradatuacao1:setField("gradatuacao1");
    obj.gradatuacao1:setType("number");
    obj.gradatuacao1:setMin(-999);
    obj.gradatuacao1:setMax(999);
    obj.gradatuacao1:setHorzTextAlign("center");
    obj.gradatuacao1:setFontColor("black");
    obj.gradatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatuacao1, "fontStyle",  "bold");
    obj.gradatuacao1:setHitTest(false);

    obj.rectangle103 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle103:setParent(obj.layout36);
    obj.rectangle103:setLeft(350);
    obj.rectangle103:setTop(8);
    obj.rectangle103:setColor("Black");
    obj.rectangle103:setWidth(20);
    obj.rectangle103:setHeight(15);
    obj.rectangle103:setXradius(2);
    obj.rectangle103:setYradius(2);
    obj.rectangle103:setName("rectangle103");

    obj.label99 = gui.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout36);
    obj.label99:setLeft(353);
    obj.label99:setTop(6);
    obj.label99:setWidth(20);
    obj.label99:setHeight(15);
    obj.label99:setFontSize(18);
    lfm_setPropAsString(obj.label99, "fontStyle",  "bold");
    obj.label99:setFontColor("white");
    obj.label99:setText("+");
    obj.label99:setName("label99");

    obj.modatuacao1 = gui.fromHandle(_obj_newObject("edit"));
    obj.modatuacao1:setParent(obj.layout36);
    obj.modatuacao1:setLeft(373);
    obj.modatuacao1:setTop(3);
    obj.modatuacao1:setWidth(40);
    obj.modatuacao1:setHeight(25);
    obj.modatuacao1:setName("modatuacao1");
    obj.modatuacao1:setField("modatuacao1");
    obj.modatuacao1:setType("number");
    obj.modatuacao1:setMin(-999);
    obj.modatuacao1:setMax(999);
    obj.modatuacao1:setHorzTextAlign("center");
    obj.modatuacao1:setFontColor("black");
    obj.modatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.modatuacao1, "fontStyle",  "bold");
    obj.modatuacao1:setHitTest(false);

    obj.rectangle104 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle104:setParent(obj.layout36);
    obj.rectangle104:setLeft(416);
    obj.rectangle104:setTop(8);
    obj.rectangle104:setColor("Black");
    obj.rectangle104:setWidth(20);
    obj.rectangle104:setHeight(15);
    obj.rectangle104:setXradius(2);
    obj.rectangle104:setYradius(2);
    obj.rectangle104:setName("rectangle104");

    obj.label100 = gui.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout36);
    obj.label100:setLeft(419);
    obj.label100:setTop(6);
    obj.label100:setWidth(20);
    obj.label100:setHeight(15);
    obj.label100:setFontSize(18);
    lfm_setPropAsString(obj.label100, "fontStyle",  "bold");
    obj.label100:setFontColor("white");
    obj.label100:setText("+");
    obj.label100:setName("label100");

    obj.outrosatuacao1 = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosatuacao1:setParent(obj.layout36);
    obj.outrosatuacao1:setLeft(439);
    obj.outrosatuacao1:setTop(3);
    obj.outrosatuacao1:setWidth(40);
    obj.outrosatuacao1:setHeight(25);
    obj.outrosatuacao1:setName("outrosatuacao1");
    obj.outrosatuacao1:setField("outrosatuacao1");
    obj.outrosatuacao1:setType("number");
    obj.outrosatuacao1:setMin(-999);
    obj.outrosatuacao1:setMax(999);
    obj.outrosatuacao1:setHorzTextAlign("center");
    obj.outrosatuacao1:setFontColor("black");
    obj.outrosatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatuacao1, "fontStyle",  "bold");

    obj.layout37 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout32);
    obj.layout37:setLeft(0);
    obj.layout37:setTop(112);
    obj.layout37:setWidth(480);
    obj.layout37:setHeight(32);
    obj.layout37:setName("layout37");

    obj.rectangle105 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle105:setParent(obj.layout37);
    obj.rectangle105:setLeft(3);
    obj.rectangle105:setTop(3);
    obj.rectangle105:setColor("Black");
    obj.rectangle105:setWidth(244);
    obj.rectangle105:setHeight(25);
    obj.rectangle105:setXradius(2);
    obj.rectangle105:setYradius(2);
    obj.rectangle105:setName("rectangle105");

    obj.imageCheckBox5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout37);
    obj.imageCheckBox5:setLeft(3);
    obj.imageCheckBox5:setTop(5);
    obj.imageCheckBox5:setWidth(20);
    obj.imageCheckBox5:setHeight(20);
    obj.imageCheckBox5:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox5:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox5:setField("cbxatuacao2");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.button24 = gui.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.layout37);
    obj.button24:setLeft(27);
    obj.button24:setTop(5);
    obj.button24:setWidth(20);
    obj.button24:setHeight(20);
    obj.button24:setText("H");
    obj.button24:setHint("Escolher habilidade base");
    obj.button24:setName("button24");

    obj.label101 = gui.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout37);
    obj.label101:setLeft(50);
    obj.label101:setTop(5);
    obj.label101:setWidth(150);
    obj.label101:setHeight(20);
    obj.label101:setText("Atuação");
    obj.label101:setHorzTextAlign("leading");
    obj.label101:setFontSize(15.0);
    lfm_setPropAsString(obj.label101, "fontStyle",  "bold");
    obj.label101:setFontColor("white");
    obj.label101:setName("label101");

    obj.button25 = gui.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.layout37);
    obj.button25:setLeft(50);
    obj.button25:setTop(5);
    obj.button25:setWidth(150);
    obj.button25:setHeight(20);
    obj.button25:setOpacity(0.0);
    obj.button25:setCanFocus(false);
    obj.button25:setCursor("handPoint");
    obj.button25:setHint("Rolar 1d20 + Atuação");
    obj.button25:setName("button25");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout37);
    obj.edit56:setField("atuacao2");
    obj.edit56:setLeft(167);
    obj.edit56:setTop(3);
    obj.edit56:setWidth(80);
    obj.edit56:setHeight(25);
    obj.edit56:setFontSize(13.0);
    obj.edit56:setHorzTextAlign("center");
    lfm_setPropAsString(obj.edit56, "fontStyle",  "bold");
    obj.edit56:setFontColor("black");
    obj.edit56:setName("edit56");

    obj.totalatuacao2 = gui.fromHandle(_obj_newObject("edit"));
    obj.totalatuacao2:setParent(obj.layout37);
    obj.totalatuacao2:setLeft(249);
    obj.totalatuacao2:setTop(3);
    obj.totalatuacao2:setWidth(40);
    obj.totalatuacao2:setHeight(25);
    obj.totalatuacao2:setName("totalatuacao2");
    obj.totalatuacao2:setField("totalatuacao2");
    obj.totalatuacao2:setType("number");
    obj.totalatuacao2:setMin(-999);
    obj.totalatuacao2:setMax(999);
    obj.totalatuacao2:setHorzTextAlign("center");
    obj.totalatuacao2:setFontColor("black");
    obj.totalatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatuacao2, "fontStyle",  "bold");
    obj.totalatuacao2:setHitTest(false);

    obj.rectangle106 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle106:setParent(obj.layout37);
    obj.rectangle106:setLeft(290);
    obj.rectangle106:setTop(8);
    obj.rectangle106:setColor("Black");
    obj.rectangle106:setWidth(20);
    obj.rectangle106:setHeight(15);
    obj.rectangle106:setXradius(2);
    obj.rectangle106:setYradius(2);
    obj.rectangle106:setName("rectangle106");

    obj.label102 = gui.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout37);
    obj.label102:setLeft(292);
    obj.label102:setTop(6);
    obj.label102:setWidth(20);
    obj.label102:setHeight(15);
    obj.label102:setFontSize(18);
    lfm_setPropAsString(obj.label102, "fontStyle",  "bold");
    obj.label102:setFontColor("white");
    obj.label102:setText("=");
    obj.label102:setName("label102");

    obj.gradatuacao2 = gui.fromHandle(_obj_newObject("edit"));
    obj.gradatuacao2:setParent(obj.layout37);
    obj.gradatuacao2:setLeft(306);
    obj.gradatuacao2:setTop(3);
    obj.gradatuacao2:setWidth(40);
    obj.gradatuacao2:setHeight(25);
    obj.gradatuacao2:setName("gradatuacao2");
    obj.gradatuacao2:setField("gradatuacao2");
    obj.gradatuacao2:setType("number");
    obj.gradatuacao2:setMin(-999);
    obj.gradatuacao2:setMax(999);
    obj.gradatuacao2:setHorzTextAlign("center");
    obj.gradatuacao2:setFontColor("black");
    obj.gradatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatuacao2, "fontStyle",  "bold");
    obj.gradatuacao2:setHitTest(false);

    obj.rectangle107 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle107:setParent(obj.layout37);
    obj.rectangle107:setLeft(350);
    obj.rectangle107:setTop(8);
    obj.rectangle107:setColor("Black");
    obj.rectangle107:setWidth(20);
    obj.rectangle107:setHeight(15);
    obj.rectangle107:setXradius(2);
    obj.rectangle107:setYradius(2);
    obj.rectangle107:setName("rectangle107");

    obj.label103 = gui.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout37);
    obj.label103:setLeft(353);
    obj.label103:setTop(6);
    obj.label103:setWidth(20);
    obj.label103:setHeight(15);
    obj.label103:setFontSize(18);
    lfm_setPropAsString(obj.label103, "fontStyle",  "bold");
    obj.label103:setFontColor("white");
    obj.label103:setText("+");
    obj.label103:setName("label103");

    obj.modatuacao2 = gui.fromHandle(_obj_newObject("edit"));
    obj.modatuacao2:setParent(obj.layout37);
    obj.modatuacao2:setLeft(373);
    obj.modatuacao2:setTop(3);
    obj.modatuacao2:setWidth(40);
    obj.modatuacao2:setHeight(25);
    obj.modatuacao2:setName("modatuacao2");
    obj.modatuacao2:setField("modatuacao2");
    obj.modatuacao2:setType("number");
    obj.modatuacao2:setMin(-999);
    obj.modatuacao2:setMax(999);
    obj.modatuacao2:setHorzTextAlign("center");
    obj.modatuacao2:setFontColor("black");
    obj.modatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.modatuacao2, "fontStyle",  "bold");
    obj.modatuacao2:setHitTest(false);

    obj.rectangle108 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle108:setParent(obj.layout37);
    obj.rectangle108:setLeft(416);
    obj.rectangle108:setTop(8);
    obj.rectangle108:setColor("Black");
    obj.rectangle108:setWidth(20);
    obj.rectangle108:setHeight(15);
    obj.rectangle108:setXradius(2);
    obj.rectangle108:setYradius(2);
    obj.rectangle108:setName("rectangle108");

    obj.label104 = gui.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout37);
    obj.label104:setLeft(419);
    obj.label104:setTop(6);
    obj.label104:setWidth(20);
    obj.label104:setHeight(15);
    obj.label104:setFontSize(18);
    lfm_setPropAsString(obj.label104, "fontStyle",  "bold");
    obj.label104:setFontColor("white");
    obj.label104:setText("+");
    obj.label104:setName("label104");

    obj.outrosatuacao2 = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosatuacao2:setParent(obj.layout37);
    obj.outrosatuacao2:setLeft(439);
    obj.outrosatuacao2:setTop(3);
    obj.outrosatuacao2:setWidth(40);
    obj.outrosatuacao2:setHeight(25);
    obj.outrosatuacao2:setName("outrosatuacao2");
    obj.outrosatuacao2:setField("outrosatuacao2");
    obj.outrosatuacao2:setType("number");
    obj.outrosatuacao2:setMin(-999);
    obj.outrosatuacao2:setMax(999);
    obj.outrosatuacao2:setHorzTextAlign("center");
    obj.outrosatuacao2:setFontColor("black");
    obj.outrosatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatuacao2, "fontStyle",  "bold");

    obj.layout38 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout32);
    obj.layout38:setLeft(0);
    obj.layout38:setTop(140);
    obj.layout38:setWidth(480);
    obj.layout38:setHeight(32);
    obj.layout38:setName("layout38");

    obj.rectangle109 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle109:setParent(obj.layout38);
    obj.rectangle109:setLeft(3);
    obj.rectangle109:setTop(3);
    obj.rectangle109:setColor("Black");
    obj.rectangle109:setWidth(244);
    obj.rectangle109:setHeight(25);
    obj.rectangle109:setXradius(2);
    obj.rectangle109:setYradius(2);
    obj.rectangle109:setName("rectangle109");

    obj.imageCheckBox6 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout38);
    obj.imageCheckBox6:setLeft(3);
    obj.imageCheckBox6:setTop(5);
    obj.imageCheckBox6:setWidth(20);
    obj.imageCheckBox6:setHeight(20);
    obj.imageCheckBox6:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox6:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox6:setField("cbxcavalgar");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.button26 = gui.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.layout38);
    obj.button26:setLeft(27);
    obj.button26:setTop(5);
    obj.button26:setWidth(20);
    obj.button26:setHeight(20);
    obj.button26:setText("H");
    obj.button26:setHint("Escolher habilidade base");
    obj.button26:setName("button26");

    obj.label105 = gui.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout38);
    obj.label105:setLeft(50);
    obj.label105:setTop(5);
    obj.label105:setWidth(150);
    obj.label105:setHeight(20);
    obj.label105:setText("Cavalgar");
    obj.label105:setHorzTextAlign("leading");
    obj.label105:setFontSize(15.0);
    lfm_setPropAsString(obj.label105, "fontStyle",  "bold");
    obj.label105:setFontColor("white");
    obj.label105:setName("label105");

    obj.button27 = gui.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.layout38);
    obj.button27:setLeft(50);
    obj.button27:setTop(5);
    obj.button27:setWidth(150);
    obj.button27:setHeight(20);
    obj.button27:setOpacity(0.0);
    obj.button27:setCanFocus(false);
    obj.button27:setCursor("handPoint");
    obj.button27:setHint("Rolar 1d20 + Cavalgar");
    obj.button27:setName("button27");

    obj.totalcavalgar = gui.fromHandle(_obj_newObject("edit"));
    obj.totalcavalgar:setParent(obj.layout38);
    obj.totalcavalgar:setLeft(249);
    obj.totalcavalgar:setTop(3);
    obj.totalcavalgar:setWidth(40);
    obj.totalcavalgar:setHeight(25);
    obj.totalcavalgar:setName("totalcavalgar");
    obj.totalcavalgar:setField("totalcavalgar");
    obj.totalcavalgar:setType("number");
    obj.totalcavalgar:setMin(-999);
    obj.totalcavalgar:setMax(999);
    obj.totalcavalgar:setHorzTextAlign("center");
    obj.totalcavalgar:setFontColor("black");
    obj.totalcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.totalcavalgar, "fontStyle",  "bold");
    obj.totalcavalgar:setHitTest(false);

    obj.rectangle110 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle110:setParent(obj.layout38);
    obj.rectangle110:setLeft(290);
    obj.rectangle110:setTop(8);
    obj.rectangle110:setColor("Black");
    obj.rectangle110:setWidth(20);
    obj.rectangle110:setHeight(15);
    obj.rectangle110:setXradius(2);
    obj.rectangle110:setYradius(2);
    obj.rectangle110:setName("rectangle110");

    obj.label106 = gui.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout38);
    obj.label106:setLeft(292);
    obj.label106:setTop(6);
    obj.label106:setWidth(20);
    obj.label106:setHeight(15);
    obj.label106:setFontSize(18);
    lfm_setPropAsString(obj.label106, "fontStyle",  "bold");
    obj.label106:setFontColor("white");
    obj.label106:setText("=");
    obj.label106:setName("label106");

    obj.gradcavalgar = gui.fromHandle(_obj_newObject("edit"));
    obj.gradcavalgar:setParent(obj.layout38);
    obj.gradcavalgar:setLeft(306);
    obj.gradcavalgar:setTop(3);
    obj.gradcavalgar:setWidth(40);
    obj.gradcavalgar:setHeight(25);
    obj.gradcavalgar:setName("gradcavalgar");
    obj.gradcavalgar:setField("gradcavalgar");
    obj.gradcavalgar:setType("number");
    obj.gradcavalgar:setMin(-999);
    obj.gradcavalgar:setMax(999);
    obj.gradcavalgar:setHorzTextAlign("center");
    obj.gradcavalgar:setFontColor("black");
    obj.gradcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.gradcavalgar, "fontStyle",  "bold");
    obj.gradcavalgar:setHitTest(false);

    obj.rectangle111 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle111:setParent(obj.layout38);
    obj.rectangle111:setLeft(350);
    obj.rectangle111:setTop(8);
    obj.rectangle111:setColor("Black");
    obj.rectangle111:setWidth(20);
    obj.rectangle111:setHeight(15);
    obj.rectangle111:setXradius(2);
    obj.rectangle111:setYradius(2);
    obj.rectangle111:setName("rectangle111");

    obj.label107 = gui.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout38);
    obj.label107:setLeft(353);
    obj.label107:setTop(6);
    obj.label107:setWidth(20);
    obj.label107:setHeight(15);
    obj.label107:setFontSize(18);
    lfm_setPropAsString(obj.label107, "fontStyle",  "bold");
    obj.label107:setFontColor("white");
    obj.label107:setText("+");
    obj.label107:setName("label107");

    obj.modcavalgar = gui.fromHandle(_obj_newObject("edit"));
    obj.modcavalgar:setParent(obj.layout38);
    obj.modcavalgar:setLeft(373);
    obj.modcavalgar:setTop(3);
    obj.modcavalgar:setWidth(40);
    obj.modcavalgar:setHeight(25);
    obj.modcavalgar:setName("modcavalgar");
    obj.modcavalgar:setField("modcavalgar");
    obj.modcavalgar:setType("number");
    obj.modcavalgar:setMin(-999);
    obj.modcavalgar:setMax(999);
    obj.modcavalgar:setHorzTextAlign("center");
    obj.modcavalgar:setFontColor("black");
    obj.modcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.modcavalgar, "fontStyle",  "bold");
    obj.modcavalgar:setHitTest(false);

    obj.rectangle112 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle112:setParent(obj.layout38);
    obj.rectangle112:setLeft(416);
    obj.rectangle112:setTop(8);
    obj.rectangle112:setColor("Black");
    obj.rectangle112:setWidth(20);
    obj.rectangle112:setHeight(15);
    obj.rectangle112:setXradius(2);
    obj.rectangle112:setYradius(2);
    obj.rectangle112:setName("rectangle112");

    obj.label108 = gui.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout38);
    obj.label108:setLeft(419);
    obj.label108:setTop(6);
    obj.label108:setWidth(20);
    obj.label108:setHeight(15);
    obj.label108:setFontSize(18);
    lfm_setPropAsString(obj.label108, "fontStyle",  "bold");
    obj.label108:setFontColor("white");
    obj.label108:setText("+");
    obj.label108:setName("label108");

    obj.outroscavalgar = gui.fromHandle(_obj_newObject("edit"));
    obj.outroscavalgar:setParent(obj.layout38);
    obj.outroscavalgar:setLeft(439);
    obj.outroscavalgar:setTop(3);
    obj.outroscavalgar:setWidth(40);
    obj.outroscavalgar:setHeight(25);
    obj.outroscavalgar:setName("outroscavalgar");
    obj.outroscavalgar:setField("outroscavalgar");
    obj.outroscavalgar:setType("number");
    obj.outroscavalgar:setMin(-999);
    obj.outroscavalgar:setMax(999);
    obj.outroscavalgar:setHorzTextAlign("center");
    obj.outroscavalgar:setFontColor("black");
    obj.outroscavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.outroscavalgar, "fontStyle",  "bold");

    obj.layout39 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout32);
    obj.layout39:setLeft(0);
    obj.layout39:setTop(168);
    obj.layout39:setWidth(480);
    obj.layout39:setHeight(32);
    obj.layout39:setName("layout39");

    obj.rectangle113 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle113:setParent(obj.layout39);
    obj.rectangle113:setLeft(3);
    obj.rectangle113:setTop(3);
    obj.rectangle113:setColor("Black");
    obj.rectangle113:setWidth(244);
    obj.rectangle113:setHeight(25);
    obj.rectangle113:setXradius(2);
    obj.rectangle113:setYradius(2);
    obj.rectangle113:setName("rectangle113");

    obj.imageCheckBox7 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout39);
    obj.imageCheckBox7:setLeft(3);
    obj.imageCheckBox7:setTop(5);
    obj.imageCheckBox7:setWidth(20);
    obj.imageCheckBox7:setHeight(20);
    obj.imageCheckBox7:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox7:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox7:setField("cbxconhecimento1");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.button28 = gui.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.layout39);
    obj.button28:setLeft(27);
    obj.button28:setTop(5);
    obj.button28:setWidth(20);
    obj.button28:setHeight(20);
    obj.button28:setText("H");
    obj.button28:setHint("Escolher habilidade base");
    obj.button28:setName("button28");

    obj.label109 = gui.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout39);
    obj.label109:setLeft(50);
    obj.label109:setTop(5);
    obj.label109:setWidth(150);
    obj.label109:setHeight(20);
    obj.label109:setText("Conhecimento");
    obj.label109:setHorzTextAlign("leading");
    obj.label109:setFontSize(15.0);
    lfm_setPropAsString(obj.label109, "fontStyle",  "bold");
    obj.label109:setFontColor("white");
    obj.label109:setName("label109");

    obj.button29 = gui.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.layout39);
    obj.button29:setLeft(50);
    obj.button29:setTop(5);
    obj.button29:setWidth(150);
    obj.button29:setHeight(20);
    obj.button29:setOpacity(0.0);
    obj.button29:setCanFocus(false);
    obj.button29:setCursor("handPoint");
    obj.button29:setHint("Rolar 1d20 + Conhecimento");
    obj.button29:setName("button29");

    obj.edit57 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout39);
    obj.edit57:setField("conhecimento1");
    obj.edit57:setLeft(167);
    obj.edit57:setTop(3);
    obj.edit57:setWidth(80);
    obj.edit57:setHeight(25);
    obj.edit57:setFontSize(13.0);
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setFontColor("black");
    lfm_setPropAsString(obj.edit57, "fontStyle",  "bold");
    obj.edit57:setName("edit57");

    obj.totalconhecimento1 = gui.fromHandle(_obj_newObject("edit"));
    obj.totalconhecimento1:setParent(obj.layout39);
    obj.totalconhecimento1:setLeft(249);
    obj.totalconhecimento1:setTop(3);
    obj.totalconhecimento1:setWidth(40);
    obj.totalconhecimento1:setHeight(25);
    obj.totalconhecimento1:setName("totalconhecimento1");
    obj.totalconhecimento1:setField("totalconhecimento1");
    obj.totalconhecimento1:setType("number");
    obj.totalconhecimento1:setMin(-999);
    obj.totalconhecimento1:setMax(999);
    obj.totalconhecimento1:setHorzTextAlign("center");
    obj.totalconhecimento1:setFontColor("black");
    obj.totalconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.totalconhecimento1, "fontStyle",  "bold");
    obj.totalconhecimento1:setHitTest(false);

    obj.rectangle114 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle114:setParent(obj.layout39);
    obj.rectangle114:setLeft(290);
    obj.rectangle114:setTop(8);
    obj.rectangle114:setColor("Black");
    obj.rectangle114:setWidth(20);
    obj.rectangle114:setHeight(15);
    obj.rectangle114:setXradius(2);
    obj.rectangle114:setYradius(2);
    obj.rectangle114:setName("rectangle114");

    obj.label110 = gui.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout39);
    obj.label110:setLeft(292);
    obj.label110:setTop(6);
    obj.label110:setWidth(20);
    obj.label110:setHeight(15);
    obj.label110:setFontSize(18);
    lfm_setPropAsString(obj.label110, "fontStyle",  "bold");
    obj.label110:setFontColor("white");
    obj.label110:setText("=");
    obj.label110:setName("label110");

    obj.gradconhecimento1 = gui.fromHandle(_obj_newObject("edit"));
    obj.gradconhecimento1:setParent(obj.layout39);
    obj.gradconhecimento1:setLeft(306);
    obj.gradconhecimento1:setTop(3);
    obj.gradconhecimento1:setWidth(40);
    obj.gradconhecimento1:setHeight(25);
    obj.gradconhecimento1:setName("gradconhecimento1");
    obj.gradconhecimento1:setField("gradconhecimento1");
    obj.gradconhecimento1:setType("number");
    obj.gradconhecimento1:setMin(-999);
    obj.gradconhecimento1:setMax(999);
    obj.gradconhecimento1:setHorzTextAlign("center");
    obj.gradconhecimento1:setFontColor("black");
    obj.gradconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradconhecimento1, "fontStyle",  "bold");
    obj.gradconhecimento1:setHitTest(false);

    obj.rectangle115 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle115:setParent(obj.layout39);
    obj.rectangle115:setLeft(350);
    obj.rectangle115:setTop(8);
    obj.rectangle115:setColor("Black");
    obj.rectangle115:setWidth(20);
    obj.rectangle115:setHeight(15);
    obj.rectangle115:setXradius(2);
    obj.rectangle115:setYradius(2);
    obj.rectangle115:setName("rectangle115");

    obj.label111 = gui.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout39);
    obj.label111:setLeft(353);
    obj.label111:setTop(6);
    obj.label111:setWidth(20);
    obj.label111:setHeight(15);
    obj.label111:setFontSize(18);
    lfm_setPropAsString(obj.label111, "fontStyle",  "bold");
    obj.label111:setFontColor("white");
    obj.label111:setText("+");
    obj.label111:setName("label111");

    obj.modconhecimento1 = gui.fromHandle(_obj_newObject("edit"));
    obj.modconhecimento1:setParent(obj.layout39);
    obj.modconhecimento1:setLeft(373);
    obj.modconhecimento1:setTop(3);
    obj.modconhecimento1:setWidth(40);
    obj.modconhecimento1:setHeight(25);
    obj.modconhecimento1:setName("modconhecimento1");
    obj.modconhecimento1:setField("modconhecimento1");
    obj.modconhecimento1:setType("number");
    obj.modconhecimento1:setMin(-999);
    obj.modconhecimento1:setMax(999);
    obj.modconhecimento1:setHorzTextAlign("center");
    obj.modconhecimento1:setFontColor("black");
    obj.modconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.modconhecimento1, "fontStyle",  "bold");
    obj.modconhecimento1:setHitTest(false);

    obj.rectangle116 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle116:setParent(obj.layout39);
    obj.rectangle116:setLeft(416);
    obj.rectangle116:setTop(8);
    obj.rectangle116:setColor("Black");
    obj.rectangle116:setWidth(20);
    obj.rectangle116:setHeight(15);
    obj.rectangle116:setXradius(2);
    obj.rectangle116:setYradius(2);
    obj.rectangle116:setName("rectangle116");

    obj.label112 = gui.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout39);
    obj.label112:setLeft(419);
    obj.label112:setTop(6);
    obj.label112:setWidth(20);
    obj.label112:setHeight(15);
    obj.label112:setFontSize(18);
    lfm_setPropAsString(obj.label112, "fontStyle",  "bold");
    obj.label112:setFontColor("white");
    obj.label112:setText("+");
    obj.label112:setName("label112");

    obj.outrosconhecimento1 = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosconhecimento1:setParent(obj.layout39);
    obj.outrosconhecimento1:setLeft(439);
    obj.outrosconhecimento1:setTop(3);
    obj.outrosconhecimento1:setWidth(40);
    obj.outrosconhecimento1:setHeight(25);
    obj.outrosconhecimento1:setName("outrosconhecimento1");
    obj.outrosconhecimento1:setField("outrosconhecimento1");
    obj.outrosconhecimento1:setType("number");
    obj.outrosconhecimento1:setMin(-999);
    obj.outrosconhecimento1:setMax(999);
    obj.outrosconhecimento1:setHorzTextAlign("center");
    obj.outrosconhecimento1:setFontColor("black");
    obj.outrosconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosconhecimento1, "fontStyle",  "bold");

    obj.layout40 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout32);
    obj.layout40:setLeft(0);
    obj.layout40:setTop(196);
    obj.layout40:setWidth(480);
    obj.layout40:setHeight(32);
    obj.layout40:setName("layout40");

    obj.rectangle117 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle117:setParent(obj.layout40);
    obj.rectangle117:setLeft(3);
    obj.rectangle117:setTop(3);
    obj.rectangle117:setColor("Black");
    obj.rectangle117:setWidth(244);
    obj.rectangle117:setHeight(25);
    obj.rectangle117:setXradius(2);
    obj.rectangle117:setYradius(2);
    obj.rectangle117:setName("rectangle117");

    obj.imageCheckBox8 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout40);
    obj.imageCheckBox8:setLeft(3);
    obj.imageCheckBox8:setTop(5);
    obj.imageCheckBox8:setWidth(20);
    obj.imageCheckBox8:setHeight(20);
    obj.imageCheckBox8:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox8:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox8:setField("cbxconhecimento2");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.button30 = gui.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.layout40);
    obj.button30:setLeft(27);
    obj.button30:setTop(5);
    obj.button30:setWidth(20);
    obj.button30:setHeight(20);
    obj.button30:setText("H");
    obj.button30:setHint("Escolher habilidade base");
    obj.button30:setName("button30");

    obj.label113 = gui.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout40);
    obj.label113:setLeft(50);
    obj.label113:setTop(5);
    obj.label113:setWidth(150);
    obj.label113:setHeight(20);
    obj.label113:setText("Conhecimento");
    obj.label113:setHorzTextAlign("leading");
    obj.label113:setFontSize(15.0);
    lfm_setPropAsString(obj.label113, "fontStyle",  "bold");
    obj.label113:setFontColor("white");
    obj.label113:setName("label113");

    obj.button31 = gui.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.layout40);
    obj.button31:setLeft(50);
    obj.button31:setTop(5);
    obj.button31:setWidth(150);
    obj.button31:setHeight(20);
    obj.button31:setOpacity(0.0);
    obj.button31:setCanFocus(false);
    obj.button31:setCursor("handPoint");
    obj.button31:setHint("Rolar 1d20 + Conhecimento");
    obj.button31:setName("button31");

    obj.edit58 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout40);
    obj.edit58:setField("conhecimento2");
    obj.edit58:setLeft(167);
    obj.edit58:setTop(3);
    obj.edit58:setWidth(80);
    obj.edit58:setHeight(25);
    obj.edit58:setFontSize(13.0);
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setFontColor("black");
    lfm_setPropAsString(obj.edit58, "fontStyle",  "bold");
    obj.edit58:setName("edit58");

    obj.totalconhecimento2 = gui.fromHandle(_obj_newObject("edit"));
    obj.totalconhecimento2:setParent(obj.layout40);
    obj.totalconhecimento2:setLeft(249);
    obj.totalconhecimento2:setTop(3);
    obj.totalconhecimento2:setWidth(40);
    obj.totalconhecimento2:setHeight(25);
    obj.totalconhecimento2:setName("totalconhecimento2");
    obj.totalconhecimento2:setField("totalconhecimento2");
    obj.totalconhecimento2:setType("number");
    obj.totalconhecimento2:setMin(-999);
    obj.totalconhecimento2:setMax(999);
    obj.totalconhecimento2:setHorzTextAlign("center");
    obj.totalconhecimento2:setFontColor("black");
    obj.totalconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.totalconhecimento2, "fontStyle",  "bold");
    obj.totalconhecimento2:setHitTest(false);

    obj.rectangle118 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle118:setParent(obj.layout40);
    obj.rectangle118:setLeft(290);
    obj.rectangle118:setTop(8);
    obj.rectangle118:setColor("Black");
    obj.rectangle118:setWidth(20);
    obj.rectangle118:setHeight(15);
    obj.rectangle118:setXradius(2);
    obj.rectangle118:setYradius(2);
    obj.rectangle118:setName("rectangle118");

    obj.label114 = gui.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.layout40);
    obj.label114:setLeft(292);
    obj.label114:setTop(6);
    obj.label114:setWidth(20);
    obj.label114:setHeight(15);
    obj.label114:setFontSize(18);
    lfm_setPropAsString(obj.label114, "fontStyle",  "bold");
    obj.label114:setFontColor("white");
    obj.label114:setText("=");
    obj.label114:setName("label114");

    obj.gradconhecimento2 = gui.fromHandle(_obj_newObject("edit"));
    obj.gradconhecimento2:setParent(obj.layout40);
    obj.gradconhecimento2:setLeft(306);
    obj.gradconhecimento2:setTop(3);
    obj.gradconhecimento2:setWidth(40);
    obj.gradconhecimento2:setHeight(25);
    obj.gradconhecimento2:setName("gradconhecimento2");
    obj.gradconhecimento2:setField("gradconhecimento2");
    obj.gradconhecimento2:setType("number");
    obj.gradconhecimento2:setMin(-999);
    obj.gradconhecimento2:setMax(999);
    obj.gradconhecimento2:setHorzTextAlign("center");
    obj.gradconhecimento2:setFontColor("black");
    obj.gradconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradconhecimento2, "fontStyle",  "bold");
    obj.gradconhecimento2:setHitTest(false);

    obj.rectangle119 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle119:setParent(obj.layout40);
    obj.rectangle119:setLeft(350);
    obj.rectangle119:setTop(8);
    obj.rectangle119:setColor("Black");
    obj.rectangle119:setWidth(20);
    obj.rectangle119:setHeight(15);
    obj.rectangle119:setXradius(2);
    obj.rectangle119:setYradius(2);
    obj.rectangle119:setName("rectangle119");

    obj.label115 = gui.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout40);
    obj.label115:setLeft(353);
    obj.label115:setTop(6);
    obj.label115:setWidth(20);
    obj.label115:setHeight(15);
    obj.label115:setFontSize(18);
    lfm_setPropAsString(obj.label115, "fontStyle",  "bold");
    obj.label115:setFontColor("white");
    obj.label115:setText("+");
    obj.label115:setName("label115");

    obj.modconhecimento2 = gui.fromHandle(_obj_newObject("edit"));
    obj.modconhecimento2:setParent(obj.layout40);
    obj.modconhecimento2:setLeft(373);
    obj.modconhecimento2:setTop(3);
    obj.modconhecimento2:setWidth(40);
    obj.modconhecimento2:setHeight(25);
    obj.modconhecimento2:setName("modconhecimento2");
    obj.modconhecimento2:setField("modconhecimento2");
    obj.modconhecimento2:setType("number");
    obj.modconhecimento2:setMin(-999);
    obj.modconhecimento2:setMax(999);
    obj.modconhecimento2:setHorzTextAlign("center");
    obj.modconhecimento2:setFontColor("black");
    obj.modconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.modconhecimento2, "fontStyle",  "bold");
    obj.modconhecimento2:setHitTest(false);

    obj.rectangle120 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle120:setParent(obj.layout40);
    obj.rectangle120:setLeft(416);
    obj.rectangle120:setTop(8);
    obj.rectangle120:setColor("Black");
    obj.rectangle120:setWidth(20);
    obj.rectangle120:setHeight(15);
    obj.rectangle120:setXradius(2);
    obj.rectangle120:setYradius(2);
    obj.rectangle120:setName("rectangle120");

    obj.label116 = gui.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout40);
    obj.label116:setLeft(419);
    obj.label116:setTop(6);
    obj.label116:setWidth(20);
    obj.label116:setHeight(15);
    obj.label116:setFontSize(18);
    lfm_setPropAsString(obj.label116, "fontStyle",  "bold");
    obj.label116:setFontColor("white");
    obj.label116:setText("+");
    obj.label116:setName("label116");

    obj.outrosconhecimento2 = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosconhecimento2:setParent(obj.layout40);
    obj.outrosconhecimento2:setLeft(439);
    obj.outrosconhecimento2:setTop(3);
    obj.outrosconhecimento2:setWidth(40);
    obj.outrosconhecimento2:setHeight(25);
    obj.outrosconhecimento2:setName("outrosconhecimento2");
    obj.outrosconhecimento2:setField("outrosconhecimento2");
    obj.outrosconhecimento2:setType("number");
    obj.outrosconhecimento2:setMin(-999);
    obj.outrosconhecimento2:setMax(999);
    obj.outrosconhecimento2:setHorzTextAlign("center");
    obj.outrosconhecimento2:setFontColor("black");
    obj.outrosconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosconhecimento2, "fontStyle",  "bold");

    obj.layout41 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout32);
    obj.layout41:setLeft(0);
    obj.layout41:setTop(224);
    obj.layout41:setWidth(480);
    obj.layout41:setHeight(32);
    obj.layout41:setName("layout41");

    obj.rectangle121 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle121:setParent(obj.layout41);
    obj.rectangle121:setLeft(3);
    obj.rectangle121:setTop(3);
    obj.rectangle121:setColor("Black");
    obj.rectangle121:setWidth(244);
    obj.rectangle121:setHeight(25);
    obj.rectangle121:setXradius(2);
    obj.rectangle121:setYradius(2);
    obj.rectangle121:setName("rectangle121");

    obj.imageCheckBox9 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout41);
    obj.imageCheckBox9:setLeft(3);
    obj.imageCheckBox9:setTop(5);
    obj.imageCheckBox9:setWidth(20);
    obj.imageCheckBox9:setHeight(20);
    obj.imageCheckBox9:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox9:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox9:setField("cbxcura");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.button32 = gui.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.layout41);
    obj.button32:setLeft(27);
    obj.button32:setTop(5);
    obj.button32:setWidth(20);
    obj.button32:setHeight(20);
    obj.button32:setText("H");
    obj.button32:setHint("Escolher habilidade base");
    obj.button32:setName("button32");

    obj.label117 = gui.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout41);
    obj.label117:setLeft(50);
    obj.label117:setTop(5);
    obj.label117:setWidth(150);
    obj.label117:setHeight(20);
    obj.label117:setText("Cura");
    obj.label117:setHorzTextAlign("leading");
    obj.label117:setFontSize(15.0);
    lfm_setPropAsString(obj.label117, "fontStyle",  "bold");
    obj.label117:setFontColor("white");
    obj.label117:setName("label117");

    obj.button33 = gui.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.layout41);
    obj.button33:setLeft(50);
    obj.button33:setTop(5);
    obj.button33:setWidth(150);
    obj.button33:setHeight(20);
    obj.button33:setOpacity(0.0);
    obj.button33:setCanFocus(false);
    obj.button33:setCursor("handPoint");
    obj.button33:setHint("Rolar 1d20 + Cura");
    obj.button33:setName("button33");

    obj.totalcura = gui.fromHandle(_obj_newObject("edit"));
    obj.totalcura:setParent(obj.layout41);
    obj.totalcura:setLeft(249);
    obj.totalcura:setTop(3);
    obj.totalcura:setWidth(40);
    obj.totalcura:setHeight(25);
    obj.totalcura:setName("totalcura");
    obj.totalcura:setField("totalcura");
    obj.totalcura:setType("number");
    obj.totalcura:setMin(-999);
    obj.totalcura:setMax(999);
    obj.totalcura:setHorzTextAlign("center");
    obj.totalcura:setFontSize(15.0);
    obj.totalcura:setFontColor("black");
    lfm_setPropAsString(obj.totalcura, "fontStyle",  "bold");
    obj.totalcura:setHitTest(false);

    obj.rectangle122 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle122:setParent(obj.layout41);
    obj.rectangle122:setLeft(290);
    obj.rectangle122:setTop(8);
    obj.rectangle122:setColor("Black");
    obj.rectangle122:setWidth(20);
    obj.rectangle122:setHeight(15);
    obj.rectangle122:setXradius(2);
    obj.rectangle122:setYradius(2);
    obj.rectangle122:setName("rectangle122");

    obj.label118 = gui.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout41);
    obj.label118:setLeft(292);
    obj.label118:setTop(6);
    obj.label118:setWidth(20);
    obj.label118:setHeight(15);
    obj.label118:setFontSize(18);
    lfm_setPropAsString(obj.label118, "fontStyle",  "bold");
    obj.label118:setFontColor("white");
    obj.label118:setText("=");
    obj.label118:setName("label118");

    obj.gradcura = gui.fromHandle(_obj_newObject("edit"));
    obj.gradcura:setParent(obj.layout41);
    obj.gradcura:setLeft(306);
    obj.gradcura:setTop(3);
    obj.gradcura:setWidth(40);
    obj.gradcura:setHeight(25);
    obj.gradcura:setName("gradcura");
    obj.gradcura:setField("gradcura");
    obj.gradcura:setType("number");
    obj.gradcura:setMin(-999);
    obj.gradcura:setMax(999);
    obj.gradcura:setHorzTextAlign("center");
    obj.gradcura:setFontSize(15.0);
    obj.gradcura:setFontColor("black");
    lfm_setPropAsString(obj.gradcura, "fontStyle",  "bold");
    obj.gradcura:setHitTest(false);

    obj.rectangle123 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle123:setParent(obj.layout41);
    obj.rectangle123:setLeft(350);
    obj.rectangle123:setTop(8);
    obj.rectangle123:setColor("Black");
    obj.rectangle123:setWidth(20);
    obj.rectangle123:setHeight(15);
    obj.rectangle123:setXradius(2);
    obj.rectangle123:setYradius(2);
    obj.rectangle123:setName("rectangle123");

    obj.label119 = gui.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout41);
    obj.label119:setLeft(353);
    obj.label119:setTop(6);
    obj.label119:setWidth(20);
    obj.label119:setHeight(15);
    obj.label119:setFontSize(18);
    lfm_setPropAsString(obj.label119, "fontStyle",  "bold");
    obj.label119:setFontColor("white");
    obj.label119:setText("+");
    obj.label119:setName("label119");

    obj.modcura = gui.fromHandle(_obj_newObject("edit"));
    obj.modcura:setParent(obj.layout41);
    obj.modcura:setLeft(373);
    obj.modcura:setTop(3);
    obj.modcura:setWidth(40);
    obj.modcura:setHeight(25);
    obj.modcura:setName("modcura");
    obj.modcura:setField("modcura");
    obj.modcura:setType("number");
    obj.modcura:setMin(-999);
    obj.modcura:setMax(999);
    obj.modcura:setHorzTextAlign("center");
    obj.modcura:setFontSize(15.0);
    obj.modcura:setFontColor("black");
    lfm_setPropAsString(obj.modcura, "fontStyle",  "bold");
    obj.modcura:setHitTest(false);

    obj.rectangle124 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle124:setParent(obj.layout41);
    obj.rectangle124:setLeft(416);
    obj.rectangle124:setTop(8);
    obj.rectangle124:setColor("Black");
    obj.rectangle124:setWidth(20);
    obj.rectangle124:setHeight(15);
    obj.rectangle124:setXradius(2);
    obj.rectangle124:setYradius(2);
    obj.rectangle124:setName("rectangle124");

    obj.label120 = gui.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout41);
    obj.label120:setLeft(419);
    obj.label120:setTop(6);
    obj.label120:setWidth(20);
    obj.label120:setHeight(15);
    obj.label120:setFontSize(18);
    lfm_setPropAsString(obj.label120, "fontStyle",  "bold");
    obj.label120:setFontColor("white");
    obj.label120:setText("+");
    obj.label120:setName("label120");

    obj.outroscura = gui.fromHandle(_obj_newObject("edit"));
    obj.outroscura:setParent(obj.layout41);
    obj.outroscura:setLeft(439);
    obj.outroscura:setTop(3);
    obj.outroscura:setWidth(40);
    obj.outroscura:setHeight(25);
    obj.outroscura:setName("outroscura");
    obj.outroscura:setField("outroscura");
    obj.outroscura:setType("number");
    obj.outroscura:setMin(-999);
    obj.outroscura:setMax(999);
    obj.outroscura:setHorzTextAlign("center");
    obj.outroscura:setFontSize(15.0);
    obj.outroscura:setFontColor("black");
    lfm_setPropAsString(obj.outroscura, "fontStyle",  "bold");

    obj.layout42 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout32);
    obj.layout42:setLeft(0);
    obj.layout42:setTop(252);
    obj.layout42:setWidth(480);
    obj.layout42:setHeight(32);
    obj.layout42:setName("layout42");

    obj.rectangle125 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle125:setParent(obj.layout42);
    obj.rectangle125:setLeft(3);
    obj.rectangle125:setTop(3);
    obj.rectangle125:setColor("Black");
    obj.rectangle125:setWidth(244);
    obj.rectangle125:setHeight(25);
    obj.rectangle125:setXradius(2);
    obj.rectangle125:setYradius(2);
    obj.rectangle125:setName("rectangle125");

    obj.imageCheckBox10 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout42);
    obj.imageCheckBox10:setLeft(3);
    obj.imageCheckBox10:setTop(5);
    obj.imageCheckBox10:setWidth(20);
    obj.imageCheckBox10:setHeight(20);
    obj.imageCheckBox10:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox10:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox10:setField("cbxdiplomacia");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.button34 = gui.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.layout42);
    obj.button34:setLeft(27);
    obj.button34:setTop(5);
    obj.button34:setWidth(20);
    obj.button34:setHeight(20);
    obj.button34:setText("H");
    obj.button34:setHint("Escolher habilidade base");
    obj.button34:setName("button34");

    obj.label121 = gui.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout42);
    obj.label121:setLeft(50);
    obj.label121:setTop(5);
    obj.label121:setWidth(150);
    obj.label121:setHeight(20);
    obj.label121:setText("Diplomacia");
    obj.label121:setHorzTextAlign("leading");
    obj.label121:setFontSize(15.0);
    lfm_setPropAsString(obj.label121, "fontStyle",  "bold");
    obj.label121:setFontColor("white");
    obj.label121:setName("label121");

    obj.button35 = gui.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.layout42);
    obj.button35:setLeft(50);
    obj.button35:setTop(5);
    obj.button35:setWidth(150);
    obj.button35:setHeight(20);
    obj.button35:setOpacity(0.0);
    obj.button35:setCanFocus(false);
    obj.button35:setCursor("handPoint");
    obj.button35:setHint("Rolar 1d20 + Diplomacia");
    obj.button35:setName("button35");

    obj.totaldiplomacia = gui.fromHandle(_obj_newObject("edit"));
    obj.totaldiplomacia:setParent(obj.layout42);
    obj.totaldiplomacia:setLeft(249);
    obj.totaldiplomacia:setTop(3);
    obj.totaldiplomacia:setWidth(40);
    obj.totaldiplomacia:setHeight(25);
    obj.totaldiplomacia:setName("totaldiplomacia");
    obj.totaldiplomacia:setField("totaldiplomacia");
    obj.totaldiplomacia:setType("number");
    obj.totaldiplomacia:setMin(-999);
    obj.totaldiplomacia:setMax(999);
    obj.totaldiplomacia:setHorzTextAlign("center");
    obj.totaldiplomacia:setFontColor("black");
    obj.totaldiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.totaldiplomacia, "fontStyle",  "bold");
    obj.totaldiplomacia:setHitTest(false);

    obj.rectangle126 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle126:setParent(obj.layout42);
    obj.rectangle126:setLeft(290);
    obj.rectangle126:setTop(8);
    obj.rectangle126:setColor("Black");
    obj.rectangle126:setWidth(20);
    obj.rectangle126:setHeight(15);
    obj.rectangle126:setXradius(2);
    obj.rectangle126:setYradius(2);
    obj.rectangle126:setName("rectangle126");

    obj.label122 = gui.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout42);
    obj.label122:setLeft(292);
    obj.label122:setTop(6);
    obj.label122:setWidth(20);
    obj.label122:setHeight(15);
    obj.label122:setFontSize(18);
    lfm_setPropAsString(obj.label122, "fontStyle",  "bold");
    obj.label122:setFontColor("white");
    obj.label122:setText("=");
    obj.label122:setName("label122");

    obj.graddiplomacia = gui.fromHandle(_obj_newObject("edit"));
    obj.graddiplomacia:setParent(obj.layout42);
    obj.graddiplomacia:setLeft(306);
    obj.graddiplomacia:setTop(3);
    obj.graddiplomacia:setWidth(40);
    obj.graddiplomacia:setHeight(25);
    obj.graddiplomacia:setName("graddiplomacia");
    obj.graddiplomacia:setField("graddiplomacia");
    obj.graddiplomacia:setType("number");
    obj.graddiplomacia:setMin(-999);
    obj.graddiplomacia:setMax(999);
    obj.graddiplomacia:setHorzTextAlign("center");
    obj.graddiplomacia:setFontColor("black");
    obj.graddiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.graddiplomacia, "fontStyle",  "bold");
    obj.graddiplomacia:setHitTest(false);

    obj.rectangle127 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle127:setParent(obj.layout42);
    obj.rectangle127:setLeft(350);
    obj.rectangle127:setTop(8);
    obj.rectangle127:setColor("Black");
    obj.rectangle127:setWidth(20);
    obj.rectangle127:setHeight(15);
    obj.rectangle127:setXradius(2);
    obj.rectangle127:setYradius(2);
    obj.rectangle127:setName("rectangle127");

    obj.label123 = gui.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout42);
    obj.label123:setLeft(353);
    obj.label123:setTop(6);
    obj.label123:setWidth(20);
    obj.label123:setHeight(15);
    obj.label123:setFontSize(18);
    lfm_setPropAsString(obj.label123, "fontStyle",  "bold");
    obj.label123:setFontColor("white");
    obj.label123:setText("+");
    obj.label123:setName("label123");

    obj.moddiplomacia = gui.fromHandle(_obj_newObject("edit"));
    obj.moddiplomacia:setParent(obj.layout42);
    obj.moddiplomacia:setLeft(373);
    obj.moddiplomacia:setTop(3);
    obj.moddiplomacia:setWidth(40);
    obj.moddiplomacia:setHeight(25);
    obj.moddiplomacia:setName("moddiplomacia");
    obj.moddiplomacia:setField("moddiplomacia");
    obj.moddiplomacia:setType("number");
    obj.moddiplomacia:setMin(-999);
    obj.moddiplomacia:setMax(999);
    obj.moddiplomacia:setHorzTextAlign("center");
    obj.moddiplomacia:setFontColor("black");
    obj.moddiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.moddiplomacia, "fontStyle",  "bold");
    obj.moddiplomacia:setHitTest(false);

    obj.rectangle128 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle128:setParent(obj.layout42);
    obj.rectangle128:setLeft(416);
    obj.rectangle128:setTop(8);
    obj.rectangle128:setColor("Black");
    obj.rectangle128:setWidth(20);
    obj.rectangle128:setHeight(15);
    obj.rectangle128:setXradius(2);
    obj.rectangle128:setYradius(2);
    obj.rectangle128:setName("rectangle128");

    obj.label124 = gui.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout42);
    obj.label124:setLeft(419);
    obj.label124:setTop(6);
    obj.label124:setWidth(20);
    obj.label124:setHeight(15);
    obj.label124:setFontSize(18);
    lfm_setPropAsString(obj.label124, "fontStyle",  "bold");
    obj.label124:setFontColor("white");
    obj.label124:setText("+");
    obj.label124:setName("label124");

    obj.outrosdiplomacia = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosdiplomacia:setParent(obj.layout42);
    obj.outrosdiplomacia:setLeft(439);
    obj.outrosdiplomacia:setTop(3);
    obj.outrosdiplomacia:setWidth(40);
    obj.outrosdiplomacia:setHeight(25);
    obj.outrosdiplomacia:setName("outrosdiplomacia");
    obj.outrosdiplomacia:setField("outrosdiplomacia");
    obj.outrosdiplomacia:setType("number");
    obj.outrosdiplomacia:setMin(-999);
    obj.outrosdiplomacia:setMax(999);
    obj.outrosdiplomacia:setHorzTextAlign("center");
    obj.outrosdiplomacia:setFontColor("black");
    obj.outrosdiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosdiplomacia, "fontStyle",  "bold");

    obj.layout43 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout32);
    obj.layout43:setLeft(0);
    obj.layout43:setTop(280);
    obj.layout43:setWidth(480);
    obj.layout43:setHeight(32);
    obj.layout43:setName("layout43");

    obj.rectangle129 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle129:setParent(obj.layout43);
    obj.rectangle129:setLeft(3);
    obj.rectangle129:setTop(3);
    obj.rectangle129:setColor("Black");
    obj.rectangle129:setWidth(244);
    obj.rectangle129:setHeight(25);
    obj.rectangle129:setXradius(2);
    obj.rectangle129:setYradius(2);
    obj.rectangle129:setName("rectangle129");

    obj.imageCheckBox11 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout43);
    obj.imageCheckBox11:setLeft(3);
    obj.imageCheckBox11:setTop(5);
    obj.imageCheckBox11:setWidth(20);
    obj.imageCheckBox11:setHeight(20);
    obj.imageCheckBox11:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox11:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox11:setField("cbxenganacao");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.button36 = gui.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.layout43);
    obj.button36:setLeft(27);
    obj.button36:setTop(5);
    obj.button36:setWidth(20);
    obj.button36:setHeight(20);
    obj.button36:setText("H");
    obj.button36:setHint("Escolher habilidade base");
    obj.button36:setName("button36");

    obj.label125 = gui.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout43);
    obj.label125:setLeft(50);
    obj.label125:setTop(5);
    obj.label125:setWidth(150);
    obj.label125:setHeight(20);
    obj.label125:setText("Enganação");
    obj.label125:setHorzTextAlign("leading");
    obj.label125:setFontSize(15.0);
    lfm_setPropAsString(obj.label125, "fontStyle",  "bold");
    obj.label125:setFontColor("white");
    obj.label125:setName("label125");

    obj.button37 = gui.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.layout43);
    obj.button37:setLeft(50);
    obj.button37:setTop(5);
    obj.button37:setWidth(150);
    obj.button37:setHeight(20);
    obj.button37:setOpacity(0.0);
    obj.button37:setCanFocus(false);
    obj.button37:setCursor("handPoint");
    obj.button37:setHint("Rolar 1d20 + Enganação");
    obj.button37:setName("button37");

    obj.totalenganacao = gui.fromHandle(_obj_newObject("edit"));
    obj.totalenganacao:setParent(obj.layout43);
    obj.totalenganacao:setLeft(249);
    obj.totalenganacao:setTop(3);
    obj.totalenganacao:setWidth(40);
    obj.totalenganacao:setHeight(25);
    obj.totalenganacao:setName("totalenganacao");
    obj.totalenganacao:setField("totalenganacao");
    obj.totalenganacao:setType("number");
    obj.totalenganacao:setMin(-999);
    obj.totalenganacao:setMax(999);
    obj.totalenganacao:setHorzTextAlign("center");
    obj.totalenganacao:setFontColor("black");
    obj.totalenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalenganacao, "fontStyle",  "bold");
    obj.totalenganacao:setHitTest(false);

    obj.rectangle130 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle130:setParent(obj.layout43);
    obj.rectangle130:setLeft(290);
    obj.rectangle130:setTop(8);
    obj.rectangle130:setColor("Black");
    obj.rectangle130:setWidth(20);
    obj.rectangle130:setHeight(15);
    obj.rectangle130:setXradius(2);
    obj.rectangle130:setYradius(2);
    obj.rectangle130:setName("rectangle130");

    obj.label126 = gui.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout43);
    obj.label126:setLeft(292);
    obj.label126:setTop(6);
    obj.label126:setWidth(20);
    obj.label126:setHeight(15);
    obj.label126:setFontSize(18);
    lfm_setPropAsString(obj.label126, "fontStyle",  "bold");
    obj.label126:setFontColor("white");
    obj.label126:setText("=");
    obj.label126:setName("label126");

    obj.gradenganacao = gui.fromHandle(_obj_newObject("edit"));
    obj.gradenganacao:setParent(obj.layout43);
    obj.gradenganacao:setLeft(306);
    obj.gradenganacao:setTop(3);
    obj.gradenganacao:setWidth(40);
    obj.gradenganacao:setHeight(25);
    obj.gradenganacao:setName("gradenganacao");
    obj.gradenganacao:setField("gradenganacao");
    obj.gradenganacao:setType("number");
    obj.gradenganacao:setMin(-999);
    obj.gradenganacao:setMax(999);
    obj.gradenganacao:setHorzTextAlign("center");
    obj.gradenganacao:setFontColor("black");
    obj.gradenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradenganacao, "fontStyle",  "bold");
    obj.gradenganacao:setHitTest(false);

    obj.rectangle131 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle131:setParent(obj.layout43);
    obj.rectangle131:setLeft(350);
    obj.rectangle131:setTop(8);
    obj.rectangle131:setColor("Black");
    obj.rectangle131:setWidth(20);
    obj.rectangle131:setHeight(15);
    obj.rectangle131:setXradius(2);
    obj.rectangle131:setYradius(2);
    obj.rectangle131:setName("rectangle131");

    obj.label127 = gui.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout43);
    obj.label127:setLeft(353);
    obj.label127:setTop(6);
    obj.label127:setWidth(20);
    obj.label127:setHeight(15);
    obj.label127:setFontSize(18);
    lfm_setPropAsString(obj.label127, "fontStyle",  "bold");
    obj.label127:setFontColor("white");
    obj.label127:setText("+");
    obj.label127:setName("label127");

    obj.modenganacao = gui.fromHandle(_obj_newObject("edit"));
    obj.modenganacao:setParent(obj.layout43);
    obj.modenganacao:setLeft(373);
    obj.modenganacao:setTop(3);
    obj.modenganacao:setWidth(40);
    obj.modenganacao:setHeight(25);
    obj.modenganacao:setName("modenganacao");
    obj.modenganacao:setField("modenganacao");
    obj.modenganacao:setType("number");
    obj.modenganacao:setMin(-999);
    obj.modenganacao:setMax(999);
    obj.modenganacao:setHorzTextAlign("center");
    obj.modenganacao:setFontColor("black");
    obj.modenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modenganacao, "fontStyle",  "bold");
    obj.modenganacao:setHitTest(false);

    obj.rectangle132 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle132:setParent(obj.layout43);
    obj.rectangle132:setLeft(416);
    obj.rectangle132:setTop(8);
    obj.rectangle132:setColor("Black");
    obj.rectangle132:setWidth(20);
    obj.rectangle132:setHeight(15);
    obj.rectangle132:setXradius(2);
    obj.rectangle132:setYradius(2);
    obj.rectangle132:setName("rectangle132");

    obj.label128 = gui.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout43);
    obj.label128:setLeft(419);
    obj.label128:setTop(6);
    obj.label128:setWidth(20);
    obj.label128:setHeight(15);
    obj.label128:setFontSize(18);
    lfm_setPropAsString(obj.label128, "fontStyle",  "bold");
    obj.label128:setFontColor("white");
    obj.label128:setText("+");
    obj.label128:setName("label128");

    obj.outrosenganacao = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosenganacao:setParent(obj.layout43);
    obj.outrosenganacao:setLeft(439);
    obj.outrosenganacao:setTop(3);
    obj.outrosenganacao:setWidth(40);
    obj.outrosenganacao:setHeight(25);
    obj.outrosenganacao:setName("outrosenganacao");
    obj.outrosenganacao:setField("outrosenganacao");
    obj.outrosenganacao:setType("number");
    obj.outrosenganacao:setMin(-999);
    obj.outrosenganacao:setMax(999);
    obj.outrosenganacao:setHorzTextAlign("center");
    obj.outrosenganacao:setFontColor("black");
    obj.outrosenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosenganacao, "fontStyle",  "bold");

    obj.layout44 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout32);
    obj.layout44:setLeft(0);
    obj.layout44:setTop(308);
    obj.layout44:setWidth(480);
    obj.layout44:setHeight(32);
    obj.layout44:setName("layout44");

    obj.rectangle133 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle133:setParent(obj.layout44);
    obj.rectangle133:setLeft(3);
    obj.rectangle133:setTop(3);
    obj.rectangle133:setColor("Black");
    obj.rectangle133:setWidth(244);
    obj.rectangle133:setHeight(25);
    obj.rectangle133:setXradius(2);
    obj.rectangle133:setYradius(2);
    obj.rectangle133:setName("rectangle133");

    obj.imageCheckBox12 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout44);
    obj.imageCheckBox12:setLeft(3);
    obj.imageCheckBox12:setTop(5);
    obj.imageCheckBox12:setWidth(20);
    obj.imageCheckBox12:setHeight(20);
    obj.imageCheckBox12:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox12:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox12:setField("cbxfurtividade");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.button38 = gui.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.layout44);
    obj.button38:setLeft(27);
    obj.button38:setTop(5);
    obj.button38:setWidth(20);
    obj.button38:setHeight(20);
    obj.button38:setText("H");
    obj.button38:setHint("Escolher habilidade base");
    obj.button38:setName("button38");

    obj.label129 = gui.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout44);
    obj.label129:setLeft(50);
    obj.label129:setTop(5);
    obj.label129:setWidth(150);
    obj.label129:setHeight(20);
    obj.label129:setText("Furtividade");
    obj.label129:setHorzTextAlign("leading");
    obj.label129:setFontSize(15.0);
    lfm_setPropAsString(obj.label129, "fontStyle",  "bold");
    obj.label129:setFontColor("white");
    obj.label129:setName("label129");

    obj.button39 = gui.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.layout44);
    obj.button39:setLeft(50);
    obj.button39:setTop(5);
    obj.button39:setWidth(150);
    obj.button39:setHeight(20);
    obj.button39:setOpacity(0.0);
    obj.button39:setCanFocus(false);
    obj.button39:setCursor("handPoint");
    obj.button39:setHint("Rolar 1d20 + Furtividade");
    obj.button39:setName("button39");

    obj.totalfurtividade = gui.fromHandle(_obj_newObject("edit"));
    obj.totalfurtividade:setParent(obj.layout44);
    obj.totalfurtividade:setLeft(249);
    obj.totalfurtividade:setTop(3);
    obj.totalfurtividade:setWidth(40);
    obj.totalfurtividade:setHeight(25);
    obj.totalfurtividade:setName("totalfurtividade");
    obj.totalfurtividade:setField("totalfurtividade");
    obj.totalfurtividade:setType("number");
    obj.totalfurtividade:setMin(-999);
    obj.totalfurtividade:setMax(999);
    obj.totalfurtividade:setHorzTextAlign("center");
    obj.totalfurtividade:setFontColor("black");
    obj.totalfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.totalfurtividade, "fontStyle",  "bold");
    obj.totalfurtividade:setHitTest(false);

    obj.rectangle134 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle134:setParent(obj.layout44);
    obj.rectangle134:setLeft(290);
    obj.rectangle134:setTop(8);
    obj.rectangle134:setColor("Black");
    obj.rectangle134:setWidth(20);
    obj.rectangle134:setHeight(15);
    obj.rectangle134:setXradius(2);
    obj.rectangle134:setYradius(2);
    obj.rectangle134:setName("rectangle134");

    obj.label130 = gui.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout44);
    obj.label130:setLeft(292);
    obj.label130:setTop(6);
    obj.label130:setWidth(20);
    obj.label130:setHeight(15);
    obj.label130:setFontSize(18);
    lfm_setPropAsString(obj.label130, "fontStyle",  "bold");
    obj.label130:setFontColor("white");
    obj.label130:setText("=");
    obj.label130:setName("label130");

    obj.gradfurtividade = gui.fromHandle(_obj_newObject("edit"));
    obj.gradfurtividade:setParent(obj.layout44);
    obj.gradfurtividade:setLeft(306);
    obj.gradfurtividade:setTop(3);
    obj.gradfurtividade:setWidth(40);
    obj.gradfurtividade:setHeight(25);
    obj.gradfurtividade:setName("gradfurtividade");
    obj.gradfurtividade:setField("gradfurtividade");
    obj.gradfurtividade:setType("number");
    obj.gradfurtividade:setMin(-999);
    obj.gradfurtividade:setMax(999);
    obj.gradfurtividade:setHorzTextAlign("center");
    obj.gradfurtividade:setFontColor("black");
    obj.gradfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.gradfurtividade, "fontStyle",  "bold");
    obj.gradfurtividade:setHitTest(false);

    obj.rectangle135 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle135:setParent(obj.layout44);
    obj.rectangle135:setLeft(350);
    obj.rectangle135:setTop(8);
    obj.rectangle135:setColor("Black");
    obj.rectangle135:setWidth(20);
    obj.rectangle135:setHeight(15);
    obj.rectangle135:setXradius(2);
    obj.rectangle135:setYradius(2);
    obj.rectangle135:setName("rectangle135");

    obj.label131 = gui.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout44);
    obj.label131:setLeft(353);
    obj.label131:setTop(6);
    obj.label131:setWidth(20);
    obj.label131:setHeight(15);
    obj.label131:setFontSize(18);
    lfm_setPropAsString(obj.label131, "fontStyle",  "bold");
    obj.label131:setFontColor("white");
    obj.label131:setText("+");
    obj.label131:setName("label131");

    obj.modfurtividade = gui.fromHandle(_obj_newObject("edit"));
    obj.modfurtividade:setParent(obj.layout44);
    obj.modfurtividade:setLeft(373);
    obj.modfurtividade:setTop(3);
    obj.modfurtividade:setWidth(40);
    obj.modfurtividade:setHeight(25);
    obj.modfurtividade:setName("modfurtividade");
    obj.modfurtividade:setField("modfurtividade");
    obj.modfurtividade:setType("number");
    obj.modfurtividade:setMin(-999);
    obj.modfurtividade:setMax(999);
    obj.modfurtividade:setHorzTextAlign("center");
    obj.modfurtividade:setFontColor("black");
    obj.modfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.modfurtividade, "fontStyle",  "bold");
    obj.modfurtividade:setHitTest(false);

    obj.rectangle136 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle136:setParent(obj.layout44);
    obj.rectangle136:setLeft(416);
    obj.rectangle136:setTop(8);
    obj.rectangle136:setColor("Black");
    obj.rectangle136:setWidth(20);
    obj.rectangle136:setHeight(15);
    obj.rectangle136:setXradius(2);
    obj.rectangle136:setYradius(2);
    obj.rectangle136:setName("rectangle136");

    obj.label132 = gui.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout44);
    obj.label132:setLeft(419);
    obj.label132:setTop(6);
    obj.label132:setWidth(20);
    obj.label132:setHeight(15);
    obj.label132:setFontSize(18);
    lfm_setPropAsString(obj.label132, "fontStyle",  "bold");
    obj.label132:setFontColor("white");
    obj.label132:setText("+");
    obj.label132:setName("label132");

    obj.outrosfurtividade = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosfurtividade:setParent(obj.layout44);
    obj.outrosfurtividade:setLeft(439);
    obj.outrosfurtividade:setTop(3);
    obj.outrosfurtividade:setWidth(40);
    obj.outrosfurtividade:setHeight(25);
    obj.outrosfurtividade:setName("outrosfurtividade");
    obj.outrosfurtividade:setField("outrosfurtividade");
    obj.outrosfurtividade:setType("number");
    obj.outrosfurtividade:setMin(-999);
    obj.outrosfurtividade:setMax(999);
    obj.outrosfurtividade:setHorzTextAlign("center");
    obj.outrosfurtividade:setFontColor("black");
    obj.outrosfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosfurtividade, "fontStyle",  "bold");

    obj.layout45 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout32);
    obj.layout45:setLeft(0);
    obj.layout45:setTop(336);
    obj.layout45:setWidth(480);
    obj.layout45:setHeight(32);
    obj.layout45:setName("layout45");

    obj.rectangle137 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle137:setParent(obj.layout45);
    obj.rectangle137:setLeft(3);
    obj.rectangle137:setTop(3);
    obj.rectangle137:setColor("Black");
    obj.rectangle137:setWidth(244);
    obj.rectangle137:setHeight(25);
    obj.rectangle137:setXradius(2);
    obj.rectangle137:setYradius(2);
    obj.rectangle137:setName("rectangle137");

    obj.imageCheckBox13 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout45);
    obj.imageCheckBox13:setLeft(3);
    obj.imageCheckBox13:setTop(5);
    obj.imageCheckBox13:setWidth(20);
    obj.imageCheckBox13:setHeight(20);
    obj.imageCheckBox13:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox13:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox13:setField("cbximagia");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.button40 = gui.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.layout45);
    obj.button40:setLeft(27);
    obj.button40:setTop(5);
    obj.button40:setWidth(20);
    obj.button40:setHeight(20);
    obj.button40:setText("H");
    obj.button40:setHint("Escolher habilidade base");
    obj.button40:setName("button40");

    obj.label133 = gui.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout45);
    obj.label133:setLeft(50);
    obj.label133:setTop(5);
    obj.label133:setWidth(150);
    obj.label133:setHeight(20);
    obj.label133:setText("Identificar Magia");
    obj.label133:setHorzTextAlign("leading");
    obj.label133:setFontSize(15.0);
    lfm_setPropAsString(obj.label133, "fontStyle",  "bold");
    obj.label133:setFontColor("white");
    obj.label133:setName("label133");

    obj.button41 = gui.fromHandle(_obj_newObject("button"));
    obj.button41:setParent(obj.layout45);
    obj.button41:setLeft(50);
    obj.button41:setTop(5);
    obj.button41:setWidth(150);
    obj.button41:setHeight(20);
    obj.button41:setOpacity(0.0);
    obj.button41:setCanFocus(false);
    obj.button41:setCursor("handPoint");
    obj.button41:setHint("Rolar 1d20 + Identificar Magia");
    obj.button41:setName("button41");

    obj.totalimagia = gui.fromHandle(_obj_newObject("edit"));
    obj.totalimagia:setParent(obj.layout45);
    obj.totalimagia:setLeft(249);
    obj.totalimagia:setTop(3);
    obj.totalimagia:setWidth(40);
    obj.totalimagia:setHeight(25);
    obj.totalimagia:setName("totalimagia");
    obj.totalimagia:setField("totalimagia");
    obj.totalimagia:setType("number");
    obj.totalimagia:setMin(-999);
    obj.totalimagia:setMax(999);
    obj.totalimagia:setHorzTextAlign("center");
    obj.totalimagia:setFontSize(15.0);
    obj.totalimagia:setFontColor("black");
    lfm_setPropAsString(obj.totalimagia, "fontStyle",  "bold");
    obj.totalimagia:setHitTest(false);

    obj.rectangle138 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle138:setParent(obj.layout45);
    obj.rectangle138:setLeft(290);
    obj.rectangle138:setTop(8);
    obj.rectangle138:setColor("Black");
    obj.rectangle138:setWidth(20);
    obj.rectangle138:setHeight(15);
    obj.rectangle138:setXradius(2);
    obj.rectangle138:setYradius(2);
    obj.rectangle138:setName("rectangle138");

    obj.label134 = gui.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.layout45);
    obj.label134:setLeft(292);
    obj.label134:setTop(6);
    obj.label134:setWidth(20);
    obj.label134:setHeight(15);
    obj.label134:setFontSize(18);
    lfm_setPropAsString(obj.label134, "fontStyle",  "bold");
    obj.label134:setFontColor("white");
    obj.label134:setText("=");
    obj.label134:setName("label134");

    obj.gradimagia = gui.fromHandle(_obj_newObject("edit"));
    obj.gradimagia:setParent(obj.layout45);
    obj.gradimagia:setLeft(306);
    obj.gradimagia:setTop(3);
    obj.gradimagia:setWidth(40);
    obj.gradimagia:setHeight(25);
    obj.gradimagia:setName("gradimagia");
    obj.gradimagia:setField("gradimagia");
    obj.gradimagia:setType("number");
    obj.gradimagia:setMin(-999);
    obj.gradimagia:setMax(999);
    obj.gradimagia:setHorzTextAlign("center");
    obj.gradimagia:setFontSize(15.0);
    obj.gradimagia:setFontColor("black");
    lfm_setPropAsString(obj.gradimagia, "fontStyle",  "bold");
    obj.gradimagia:setHitTest(false);

    obj.rectangle139 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle139:setParent(obj.layout45);
    obj.rectangle139:setLeft(350);
    obj.rectangle139:setTop(8);
    obj.rectangle139:setColor("Black");
    obj.rectangle139:setWidth(20);
    obj.rectangle139:setHeight(15);
    obj.rectangle139:setXradius(2);
    obj.rectangle139:setYradius(2);
    obj.rectangle139:setName("rectangle139");

    obj.label135 = gui.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.layout45);
    obj.label135:setLeft(353);
    obj.label135:setTop(6);
    obj.label135:setWidth(20);
    obj.label135:setHeight(15);
    obj.label135:setFontSize(18);
    lfm_setPropAsString(obj.label135, "fontStyle",  "bold");
    obj.label135:setFontColor("white");
    obj.label135:setText("+");
    obj.label135:setName("label135");

    obj.modimagia = gui.fromHandle(_obj_newObject("edit"));
    obj.modimagia:setParent(obj.layout45);
    obj.modimagia:setLeft(373);
    obj.modimagia:setTop(3);
    obj.modimagia:setWidth(40);
    obj.modimagia:setHeight(25);
    obj.modimagia:setName("modimagia");
    obj.modimagia:setField("modimagia");
    obj.modimagia:setType("number");
    obj.modimagia:setMin(-999);
    obj.modimagia:setMax(999);
    obj.modimagia:setHorzTextAlign("center");
    obj.modimagia:setFontSize(15.0);
    obj.modimagia:setFontColor("black");
    lfm_setPropAsString(obj.modimagia, "fontStyle",  "bold");
    obj.modimagia:setHitTest(false);

    obj.rectangle140 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle140:setParent(obj.layout45);
    obj.rectangle140:setLeft(416);
    obj.rectangle140:setTop(8);
    obj.rectangle140:setColor("Black");
    obj.rectangle140:setWidth(20);
    obj.rectangle140:setHeight(15);
    obj.rectangle140:setXradius(2);
    obj.rectangle140:setYradius(2);
    obj.rectangle140:setName("rectangle140");

    obj.label136 = gui.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.layout45);
    obj.label136:setLeft(419);
    obj.label136:setTop(6);
    obj.label136:setWidth(20);
    obj.label136:setHeight(15);
    obj.label136:setFontSize(18);
    lfm_setPropAsString(obj.label136, "fontStyle",  "bold");
    obj.label136:setFontColor("white");
    obj.label136:setText("+");
    obj.label136:setName("label136");

    obj.outrosimagia = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosimagia:setParent(obj.layout45);
    obj.outrosimagia:setLeft(439);
    obj.outrosimagia:setTop(3);
    obj.outrosimagia:setWidth(40);
    obj.outrosimagia:setHeight(25);
    obj.outrosimagia:setName("outrosimagia");
    obj.outrosimagia:setField("outrosimagia");
    obj.outrosimagia:setType("number");
    obj.outrosimagia:setMin(-999);
    obj.outrosimagia:setMax(999);
    obj.outrosimagia:setHorzTextAlign("center");
    obj.outrosimagia:setFontSize(15.0);
    obj.outrosimagia:setFontColor("black");
    lfm_setPropAsString(obj.outrosimagia, "fontStyle",  "bold");

    obj.layout46 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout32);
    obj.layout46:setLeft(0);
    obj.layout46:setTop(364);
    obj.layout46:setWidth(480);
    obj.layout46:setHeight(32);
    obj.layout46:setName("layout46");

    obj.rectangle141 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle141:setParent(obj.layout46);
    obj.rectangle141:setLeft(3);
    obj.rectangle141:setTop(3);
    obj.rectangle141:setColor("Black");
    obj.rectangle141:setWidth(244);
    obj.rectangle141:setHeight(25);
    obj.rectangle141:setXradius(2);
    obj.rectangle141:setYradius(2);
    obj.rectangle141:setName("rectangle141");

    obj.imageCheckBox14 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout46);
    obj.imageCheckBox14:setLeft(3);
    obj.imageCheckBox14:setTop(5);
    obj.imageCheckBox14:setWidth(20);
    obj.imageCheckBox14:setHeight(20);
    obj.imageCheckBox14:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox14:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox14:setField("cbxiniciativa");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.button42 = gui.fromHandle(_obj_newObject("button"));
    obj.button42:setParent(obj.layout46);
    obj.button42:setLeft(27);
    obj.button42:setTop(5);
    obj.button42:setWidth(20);
    obj.button42:setHeight(20);
    obj.button42:setText("H");
    obj.button42:setHint("Escolher habilidade base");
    obj.button42:setName("button42");

    obj.label137 = gui.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout46);
    obj.label137:setLeft(50);
    obj.label137:setTop(5);
    obj.label137:setWidth(150);
    obj.label137:setHeight(20);
    obj.label137:setText("Iniciativa");
    obj.label137:setHorzTextAlign("leading");
    obj.label137:setFontSize(15.0);
    lfm_setPropAsString(obj.label137, "fontStyle",  "bold");
    obj.label137:setFontColor("white");
    obj.label137:setName("label137");

    obj.button43 = gui.fromHandle(_obj_newObject("button"));
    obj.button43:setParent(obj.layout46);
    obj.button43:setLeft(50);
    obj.button43:setTop(5);
    obj.button43:setWidth(150);
    obj.button43:setHeight(20);
    obj.button43:setOpacity(0.0);
    obj.button43:setCanFocus(false);
    obj.button43:setCursor("handPoint");
    obj.button43:setHint("Rolar 1d20 + Iniciativa");
    obj.button43:setName("button43");

    obj.totaliniciativa = gui.fromHandle(_obj_newObject("edit"));
    obj.totaliniciativa:setParent(obj.layout46);
    obj.totaliniciativa:setLeft(249);
    obj.totaliniciativa:setTop(3);
    obj.totaliniciativa:setWidth(40);
    obj.totaliniciativa:setHeight(25);
    obj.totaliniciativa:setName("totaliniciativa");
    obj.totaliniciativa:setField("totaliniciativa");
    obj.totaliniciativa:setType("number");
    obj.totaliniciativa:setMin(-999);
    obj.totaliniciativa:setMax(999);
    obj.totaliniciativa:setHorzTextAlign("center");
    obj.totaliniciativa:setFontColor("black");
    obj.totaliniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.totaliniciativa, "fontStyle",  "bold");
    obj.totaliniciativa:setHitTest(false);

    obj.rectangle142 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle142:setParent(obj.layout46);
    obj.rectangle142:setLeft(290);
    obj.rectangle142:setTop(8);
    obj.rectangle142:setColor("Black");
    obj.rectangle142:setWidth(20);
    obj.rectangle142:setHeight(15);
    obj.rectangle142:setXradius(2);
    obj.rectangle142:setYradius(2);
    obj.rectangle142:setName("rectangle142");

    obj.label138 = gui.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout46);
    obj.label138:setLeft(292);
    obj.label138:setTop(6);
    obj.label138:setWidth(20);
    obj.label138:setHeight(15);
    obj.label138:setFontSize(18);
    lfm_setPropAsString(obj.label138, "fontStyle",  "bold");
    obj.label138:setFontColor("white");
    obj.label138:setText("=");
    obj.label138:setName("label138");

    obj.gradiniciativa = gui.fromHandle(_obj_newObject("edit"));
    obj.gradiniciativa:setParent(obj.layout46);
    obj.gradiniciativa:setLeft(306);
    obj.gradiniciativa:setTop(3);
    obj.gradiniciativa:setWidth(40);
    obj.gradiniciativa:setHeight(25);
    obj.gradiniciativa:setName("gradiniciativa");
    obj.gradiniciativa:setField("gradiniciativa");
    obj.gradiniciativa:setType("number");
    obj.gradiniciativa:setMin(-999);
    obj.gradiniciativa:setMax(999);
    obj.gradiniciativa:setHorzTextAlign("center");
    obj.gradiniciativa:setFontColor("black");
    obj.gradiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.gradiniciativa, "fontStyle",  "bold");
    obj.gradiniciativa:setHitTest(false);

    obj.rectangle143 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle143:setParent(obj.layout46);
    obj.rectangle143:setLeft(350);
    obj.rectangle143:setTop(8);
    obj.rectangle143:setColor("Black");
    obj.rectangle143:setWidth(20);
    obj.rectangle143:setHeight(15);
    obj.rectangle143:setXradius(2);
    obj.rectangle143:setYradius(2);
    obj.rectangle143:setName("rectangle143");

    obj.label139 = gui.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout46);
    obj.label139:setLeft(353);
    obj.label139:setTop(6);
    obj.label139:setWidth(20);
    obj.label139:setHeight(15);
    obj.label139:setFontSize(18);
    lfm_setPropAsString(obj.label139, "fontStyle",  "bold");
    obj.label139:setFontColor("white");
    obj.label139:setText("+");
    obj.label139:setName("label139");

    obj.modiniciativa = gui.fromHandle(_obj_newObject("edit"));
    obj.modiniciativa:setParent(obj.layout46);
    obj.modiniciativa:setLeft(373);
    obj.modiniciativa:setTop(3);
    obj.modiniciativa:setWidth(40);
    obj.modiniciativa:setHeight(25);
    obj.modiniciativa:setName("modiniciativa");
    obj.modiniciativa:setField("modiniciativa");
    obj.modiniciativa:setType("number");
    obj.modiniciativa:setMin(-999);
    obj.modiniciativa:setMax(999);
    obj.modiniciativa:setHorzTextAlign("center");
    obj.modiniciativa:setFontColor("black");
    obj.modiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.modiniciativa, "fontStyle",  "bold");
    obj.modiniciativa:setHitTest(false);

    obj.rectangle144 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle144:setParent(obj.layout46);
    obj.rectangle144:setLeft(416);
    obj.rectangle144:setTop(8);
    obj.rectangle144:setColor("Black");
    obj.rectangle144:setWidth(20);
    obj.rectangle144:setHeight(15);
    obj.rectangle144:setXradius(2);
    obj.rectangle144:setYradius(2);
    obj.rectangle144:setName("rectangle144");

    obj.label140 = gui.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout46);
    obj.label140:setLeft(419);
    obj.label140:setTop(6);
    obj.label140:setWidth(20);
    obj.label140:setHeight(15);
    obj.label140:setFontSize(18);
    lfm_setPropAsString(obj.label140, "fontStyle",  "bold");
    obj.label140:setFontColor("white");
    obj.label140:setText("+");
    obj.label140:setName("label140");

    obj.outrosiniciativa = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosiniciativa:setParent(obj.layout46);
    obj.outrosiniciativa:setLeft(439);
    obj.outrosiniciativa:setTop(3);
    obj.outrosiniciativa:setWidth(40);
    obj.outrosiniciativa:setHeight(25);
    obj.outrosiniciativa:setName("outrosiniciativa");
    obj.outrosiniciativa:setField("outrosiniciativa");
    obj.outrosiniciativa:setType("number");
    obj.outrosiniciativa:setMin(-999);
    obj.outrosiniciativa:setMax(999);
    obj.outrosiniciativa:setHorzTextAlign("center");
    obj.outrosiniciativa:setFontColor("black");
    obj.outrosiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosiniciativa, "fontStyle",  "bold");

    obj.layout47 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout32);
    obj.layout47:setLeft(0);
    obj.layout47:setTop(392);
    obj.layout47:setWidth(480);
    obj.layout47:setHeight(32);
    obj.layout47:setName("layout47");

    obj.rectangle145 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle145:setParent(obj.layout47);
    obj.rectangle145:setLeft(3);
    obj.rectangle145:setTop(3);
    obj.rectangle145:setColor("Black");
    obj.rectangle145:setWidth(244);
    obj.rectangle145:setHeight(25);
    obj.rectangle145:setXradius(2);
    obj.rectangle145:setYradius(2);
    obj.rectangle145:setName("rectangle145");

    obj.imageCheckBox15 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout47);
    obj.imageCheckBox15:setLeft(3);
    obj.imageCheckBox15:setTop(5);
    obj.imageCheckBox15:setWidth(20);
    obj.imageCheckBox15:setHeight(20);
    obj.imageCheckBox15:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox15:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox15:setField("cbxintimidacao");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.button44 = gui.fromHandle(_obj_newObject("button"));
    obj.button44:setParent(obj.layout47);
    obj.button44:setLeft(27);
    obj.button44:setTop(5);
    obj.button44:setWidth(20);
    obj.button44:setHeight(20);
    obj.button44:setText("H");
    obj.button44:setHint("Escolher habilidade base");
    obj.button44:setName("button44");

    obj.label141 = gui.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout47);
    obj.label141:setLeft(50);
    obj.label141:setTop(5);
    obj.label141:setWidth(150);
    obj.label141:setHeight(20);
    obj.label141:setText("Intimidação");
    obj.label141:setHorzTextAlign("leading");
    obj.label141:setFontSize(15.0);
    lfm_setPropAsString(obj.label141, "fontStyle",  "bold");
    obj.label141:setFontColor("white");
    obj.label141:setName("label141");

    obj.button45 = gui.fromHandle(_obj_newObject("button"));
    obj.button45:setParent(obj.layout47);
    obj.button45:setLeft(50);
    obj.button45:setTop(5);
    obj.button45:setWidth(150);
    obj.button45:setHeight(20);
    obj.button45:setOpacity(0.0);
    obj.button45:setCanFocus(false);
    obj.button45:setCursor("handPoint");
    obj.button45:setHint("Rolar 1d20 + Intimidação");
    obj.button45:setName("button45");

    obj.totalintimidacao = gui.fromHandle(_obj_newObject("edit"));
    obj.totalintimidacao:setParent(obj.layout47);
    obj.totalintimidacao:setLeft(249);
    obj.totalintimidacao:setTop(3);
    obj.totalintimidacao:setWidth(40);
    obj.totalintimidacao:setHeight(25);
    obj.totalintimidacao:setName("totalintimidacao");
    obj.totalintimidacao:setField("totalintimidacao");
    obj.totalintimidacao:setType("number");
    obj.totalintimidacao:setMin(-999);
    obj.totalintimidacao:setMax(999);
    obj.totalintimidacao:setHorzTextAlign("center");
    obj.totalintimidacao:setFontColor("black");
    obj.totalintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalintimidacao, "fontStyle",  "bold");
    obj.totalintimidacao:setHitTest(false);

    obj.rectangle146 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle146:setParent(obj.layout47);
    obj.rectangle146:setLeft(290);
    obj.rectangle146:setTop(8);
    obj.rectangle146:setColor("Black");
    obj.rectangle146:setWidth(20);
    obj.rectangle146:setHeight(15);
    obj.rectangle146:setXradius(2);
    obj.rectangle146:setYradius(2);
    obj.rectangle146:setName("rectangle146");

    obj.label142 = gui.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.layout47);
    obj.label142:setLeft(292);
    obj.label142:setTop(6);
    obj.label142:setWidth(20);
    obj.label142:setHeight(15);
    obj.label142:setFontSize(18);
    lfm_setPropAsString(obj.label142, "fontStyle",  "bold");
    obj.label142:setFontColor("white");
    obj.label142:setText("=");
    obj.label142:setName("label142");

    obj.gradintimidacao = gui.fromHandle(_obj_newObject("edit"));
    obj.gradintimidacao:setParent(obj.layout47);
    obj.gradintimidacao:setLeft(306);
    obj.gradintimidacao:setTop(3);
    obj.gradintimidacao:setWidth(40);
    obj.gradintimidacao:setHeight(25);
    obj.gradintimidacao:setName("gradintimidacao");
    obj.gradintimidacao:setField("gradintimidacao");
    obj.gradintimidacao:setType("number");
    obj.gradintimidacao:setMin(-999);
    obj.gradintimidacao:setMax(999);
    obj.gradintimidacao:setHorzTextAlign("center");
    obj.gradintimidacao:setFontColor("black");
    obj.gradintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradintimidacao, "fontStyle",  "bold");
    obj.gradintimidacao:setHitTest(false);

    obj.rectangle147 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle147:setParent(obj.layout47);
    obj.rectangle147:setLeft(350);
    obj.rectangle147:setTop(8);
    obj.rectangle147:setColor("Black");
    obj.rectangle147:setWidth(20);
    obj.rectangle147:setHeight(15);
    obj.rectangle147:setXradius(2);
    obj.rectangle147:setYradius(2);
    obj.rectangle147:setName("rectangle147");

    obj.label143 = gui.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.layout47);
    obj.label143:setLeft(353);
    obj.label143:setTop(6);
    obj.label143:setWidth(20);
    obj.label143:setHeight(15);
    obj.label143:setFontSize(18);
    lfm_setPropAsString(obj.label143, "fontStyle",  "bold");
    obj.label143:setFontColor("white");
    obj.label143:setText("+");
    obj.label143:setName("label143");

    obj.modintimidacao = gui.fromHandle(_obj_newObject("edit"));
    obj.modintimidacao:setParent(obj.layout47);
    obj.modintimidacao:setLeft(373);
    obj.modintimidacao:setTop(3);
    obj.modintimidacao:setWidth(40);
    obj.modintimidacao:setHeight(25);
    obj.modintimidacao:setName("modintimidacao");
    obj.modintimidacao:setField("modintimidacao");
    obj.modintimidacao:setType("number");
    obj.modintimidacao:setMin(-999);
    obj.modintimidacao:setMax(999);
    obj.modintimidacao:setHorzTextAlign("center");
    obj.modintimidacao:setFontColor("black");
    obj.modintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modintimidacao, "fontStyle",  "bold");
    obj.modintimidacao:setHitTest(false);

    obj.rectangle148 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle148:setParent(obj.layout47);
    obj.rectangle148:setLeft(416);
    obj.rectangle148:setTop(8);
    obj.rectangle148:setColor("Black");
    obj.rectangle148:setWidth(20);
    obj.rectangle148:setHeight(15);
    obj.rectangle148:setXradius(2);
    obj.rectangle148:setYradius(2);
    obj.rectangle148:setName("rectangle148");

    obj.label144 = gui.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout47);
    obj.label144:setLeft(419);
    obj.label144:setTop(6);
    obj.label144:setWidth(20);
    obj.label144:setHeight(15);
    obj.label144:setFontSize(18);
    lfm_setPropAsString(obj.label144, "fontStyle",  "bold");
    obj.label144:setFontColor("white");
    obj.label144:setText("+");
    obj.label144:setName("label144");

    obj.outrosintimidacao = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosintimidacao:setParent(obj.layout47);
    obj.outrosintimidacao:setLeft(439);
    obj.outrosintimidacao:setTop(3);
    obj.outrosintimidacao:setWidth(40);
    obj.outrosintimidacao:setHeight(25);
    obj.outrosintimidacao:setName("outrosintimidacao");
    obj.outrosintimidacao:setField("outrosintimidacao");
    obj.outrosintimidacao:setType("number");
    obj.outrosintimidacao:setMin(-999);
    obj.outrosintimidacao:setMax(999);
    obj.outrosintimidacao:setHorzTextAlign("center");
    obj.outrosintimidacao:setFontColor("black");
    obj.outrosintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosintimidacao, "fontStyle",  "bold");

    obj.layout48 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout32);
    obj.layout48:setLeft(0);
    obj.layout48:setTop(420);
    obj.layout48:setWidth(480);
    obj.layout48:setHeight(32);
    obj.layout48:setName("layout48");

    obj.rectangle149 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle149:setParent(obj.layout48);
    obj.rectangle149:setLeft(3);
    obj.rectangle149:setTop(3);
    obj.rectangle149:setColor("Black");
    obj.rectangle149:setWidth(244);
    obj.rectangle149:setHeight(25);
    obj.rectangle149:setXradius(2);
    obj.rectangle149:setYradius(2);
    obj.rectangle149:setName("rectangle149");

    obj.imageCheckBox16 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout48);
    obj.imageCheckBox16:setLeft(3);
    obj.imageCheckBox16:setTop(5);
    obj.imageCheckBox16:setWidth(20);
    obj.imageCheckBox16:setHeight(20);
    obj.imageCheckBox16:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox16:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox16:setField("cbxintuicao");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.button46 = gui.fromHandle(_obj_newObject("button"));
    obj.button46:setParent(obj.layout48);
    obj.button46:setLeft(27);
    obj.button46:setTop(5);
    obj.button46:setWidth(20);
    obj.button46:setHeight(20);
    obj.button46:setText("H");
    obj.button46:setHint("Escolher habilidade base");
    obj.button46:setName("button46");

    obj.label145 = gui.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout48);
    obj.label145:setLeft(50);
    obj.label145:setTop(5);
    obj.label145:setWidth(150);
    obj.label145:setHeight(20);
    obj.label145:setText("Intuição");
    obj.label145:setHorzTextAlign("leading");
    obj.label145:setFontSize(15.0);
    lfm_setPropAsString(obj.label145, "fontStyle",  "bold");
    obj.label145:setFontColor("white");
    obj.label145:setName("label145");

    obj.button47 = gui.fromHandle(_obj_newObject("button"));
    obj.button47:setParent(obj.layout48);
    obj.button47:setLeft(50);
    obj.button47:setTop(5);
    obj.button47:setWidth(150);
    obj.button47:setHeight(20);
    obj.button47:setOpacity(0.0);
    obj.button47:setCanFocus(false);
    obj.button47:setCursor("handPoint");
    obj.button47:setHint("Rolar 1d20 + Intuição");
    obj.button47:setName("button47");

    obj.totalintuicao = gui.fromHandle(_obj_newObject("edit"));
    obj.totalintuicao:setParent(obj.layout48);
    obj.totalintuicao:setLeft(249);
    obj.totalintuicao:setTop(3);
    obj.totalintuicao:setWidth(40);
    obj.totalintuicao:setHeight(25);
    obj.totalintuicao:setName("totalintuicao");
    obj.totalintuicao:setField("totalintuicao");
    obj.totalintuicao:setType("number");
    obj.totalintuicao:setMin(-999);
    obj.totalintuicao:setMax(999);
    obj.totalintuicao:setHorzTextAlign("center");
    obj.totalintuicao:setFontSize(15.0);
    obj.totalintuicao:setFontColor("black");
    lfm_setPropAsString(obj.totalintuicao, "fontStyle",  "bold");
    obj.totalintuicao:setHitTest(false);

    obj.rectangle150 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle150:setParent(obj.layout48);
    obj.rectangle150:setLeft(290);
    obj.rectangle150:setTop(8);
    obj.rectangle150:setColor("Black");
    obj.rectangle150:setWidth(20);
    obj.rectangle150:setHeight(15);
    obj.rectangle150:setXradius(2);
    obj.rectangle150:setYradius(2);
    obj.rectangle150:setName("rectangle150");

    obj.label146 = gui.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.layout48);
    obj.label146:setLeft(292);
    obj.label146:setTop(6);
    obj.label146:setWidth(20);
    obj.label146:setHeight(15);
    obj.label146:setFontSize(18);
    lfm_setPropAsString(obj.label146, "fontStyle",  "bold");
    obj.label146:setFontColor("white");
    obj.label146:setText("=");
    obj.label146:setName("label146");

    obj.gradintuicao = gui.fromHandle(_obj_newObject("edit"));
    obj.gradintuicao:setParent(obj.layout48);
    obj.gradintuicao:setLeft(306);
    obj.gradintuicao:setTop(3);
    obj.gradintuicao:setWidth(40);
    obj.gradintuicao:setHeight(25);
    obj.gradintuicao:setName("gradintuicao");
    obj.gradintuicao:setField("gradintuicao");
    obj.gradintuicao:setType("number");
    obj.gradintuicao:setMin(-999);
    obj.gradintuicao:setMax(999);
    obj.gradintuicao:setHorzTextAlign("center");
    obj.gradintuicao:setFontSize(15.0);
    obj.gradintuicao:setFontColor("black");
    lfm_setPropAsString(obj.gradintuicao, "fontStyle",  "bold");
    obj.gradintuicao:setHitTest(false);

    obj.rectangle151 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle151:setParent(obj.layout48);
    obj.rectangle151:setLeft(350);
    obj.rectangle151:setTop(8);
    obj.rectangle151:setColor("Black");
    obj.rectangle151:setWidth(20);
    obj.rectangle151:setHeight(15);
    obj.rectangle151:setXradius(2);
    obj.rectangle151:setYradius(2);
    obj.rectangle151:setName("rectangle151");

    obj.label147 = gui.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout48);
    obj.label147:setLeft(353);
    obj.label147:setTop(6);
    obj.label147:setWidth(20);
    obj.label147:setHeight(15);
    obj.label147:setFontSize(18);
    lfm_setPropAsString(obj.label147, "fontStyle",  "bold");
    obj.label147:setFontColor("white");
    obj.label147:setText("+");
    obj.label147:setName("label147");

    obj.modintuicao = gui.fromHandle(_obj_newObject("edit"));
    obj.modintuicao:setParent(obj.layout48);
    obj.modintuicao:setLeft(373);
    obj.modintuicao:setTop(3);
    obj.modintuicao:setWidth(40);
    obj.modintuicao:setHeight(25);
    obj.modintuicao:setName("modintuicao");
    obj.modintuicao:setField("modintuicao");
    obj.modintuicao:setType("number");
    obj.modintuicao:setMin(-999);
    obj.modintuicao:setMax(999);
    obj.modintuicao:setHorzTextAlign("center");
    obj.modintuicao:setFontSize(15.0);
    obj.modintuicao:setFontColor("black");
    lfm_setPropAsString(obj.modintuicao, "fontStyle",  "bold");
    obj.modintuicao:setHitTest(false);

    obj.rectangle152 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle152:setParent(obj.layout48);
    obj.rectangle152:setLeft(416);
    obj.rectangle152:setTop(8);
    obj.rectangle152:setColor("Black");
    obj.rectangle152:setWidth(20);
    obj.rectangle152:setHeight(15);
    obj.rectangle152:setXradius(2);
    obj.rectangle152:setYradius(2);
    obj.rectangle152:setName("rectangle152");

    obj.label148 = gui.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout48);
    obj.label148:setLeft(419);
    obj.label148:setTop(6);
    obj.label148:setWidth(20);
    obj.label148:setHeight(15);
    obj.label148:setFontSize(18);
    lfm_setPropAsString(obj.label148, "fontStyle",  "bold");
    obj.label148:setFontColor("white");
    obj.label148:setText("+");
    obj.label148:setName("label148");

    obj.outrosintuicao = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosintuicao:setParent(obj.layout48);
    obj.outrosintuicao:setLeft(439);
    obj.outrosintuicao:setTop(3);
    obj.outrosintuicao:setWidth(40);
    obj.outrosintuicao:setHeight(25);
    obj.outrosintuicao:setName("outrosintuicao");
    obj.outrosintuicao:setField("outrosintuicao");
    obj.outrosintuicao:setType("number");
    obj.outrosintuicao:setMin(-999);
    obj.outrosintuicao:setMax(999);
    obj.outrosintuicao:setHorzTextAlign("center");
    obj.outrosintuicao:setFontSize(15.0);
    obj.outrosintuicao:setFontColor("black");
    lfm_setPropAsString(obj.outrosintuicao, "fontStyle",  "bold");

    obj.layout49 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout32);
    obj.layout49:setLeft(0);
    obj.layout49:setTop(448);
    obj.layout49:setWidth(480);
    obj.layout49:setHeight(32);
    obj.layout49:setName("layout49");

    obj.rectangle153 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle153:setParent(obj.layout49);
    obj.rectangle153:setLeft(3);
    obj.rectangle153:setTop(3);
    obj.rectangle153:setColor("Black");
    obj.rectangle153:setWidth(244);
    obj.rectangle153:setHeight(25);
    obj.rectangle153:setXradius(2);
    obj.rectangle153:setYradius(2);
    obj.rectangle153:setName("rectangle153");

    obj.imageCheckBox17 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout49);
    obj.imageCheckBox17:setLeft(3);
    obj.imageCheckBox17:setTop(5);
    obj.imageCheckBox17:setWidth(20);
    obj.imageCheckBox17:setHeight(20);
    obj.imageCheckBox17:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox17:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox17:setField("cbxjogatina");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.button48 = gui.fromHandle(_obj_newObject("button"));
    obj.button48:setParent(obj.layout49);
    obj.button48:setLeft(27);
    obj.button48:setTop(5);
    obj.button48:setWidth(20);
    obj.button48:setHeight(20);
    obj.button48:setText("H");
    obj.button48:setHint("Escolher habilidade base");
    obj.button48:setName("button48");

    obj.label149 = gui.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.layout49);
    obj.label149:setLeft(50);
    obj.label149:setTop(5);
    obj.label149:setWidth(150);
    obj.label149:setHeight(20);
    obj.label149:setText("Jogatina");
    obj.label149:setHorzTextAlign("leading");
    obj.label149:setFontSize(15.0);
    lfm_setPropAsString(obj.label149, "fontStyle",  "bold");
    obj.label149:setFontColor("white");
    obj.label149:setName("label149");

    obj.button49 = gui.fromHandle(_obj_newObject("button"));
    obj.button49:setParent(obj.layout49);
    obj.button49:setLeft(50);
    obj.button49:setTop(5);
    obj.button49:setWidth(150);
    obj.button49:setHeight(20);
    obj.button49:setOpacity(0.0);
    obj.button49:setCanFocus(false);
    obj.button49:setCursor("handPoint");
    obj.button49:setHint("Rolar 1d20 + Jogatina");
    obj.button49:setName("button49");

    obj.totaljogatina = gui.fromHandle(_obj_newObject("edit"));
    obj.totaljogatina:setParent(obj.layout49);
    obj.totaljogatina:setLeft(249);
    obj.totaljogatina:setTop(3);
    obj.totaljogatina:setWidth(40);
    obj.totaljogatina:setHeight(25);
    obj.totaljogatina:setName("totaljogatina");
    obj.totaljogatina:setField("totaljogatina");
    obj.totaljogatina:setType("number");
    obj.totaljogatina:setMin(-999);
    obj.totaljogatina:setMax(999);
    obj.totaljogatina:setHorzTextAlign("center");
    obj.totaljogatina:setFontColor("black");
    obj.totaljogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.totaljogatina, "fontStyle",  "bold");
    obj.totaljogatina:setHitTest(false);

    obj.rectangle154 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle154:setParent(obj.layout49);
    obj.rectangle154:setLeft(290);
    obj.rectangle154:setTop(8);
    obj.rectangle154:setColor("Black");
    obj.rectangle154:setWidth(20);
    obj.rectangle154:setHeight(15);
    obj.rectangle154:setXradius(2);
    obj.rectangle154:setYradius(2);
    obj.rectangle154:setName("rectangle154");

    obj.label150 = gui.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.layout49);
    obj.label150:setLeft(292);
    obj.label150:setTop(6);
    obj.label150:setWidth(20);
    obj.label150:setHeight(15);
    obj.label150:setFontSize(18);
    lfm_setPropAsString(obj.label150, "fontStyle",  "bold");
    obj.label150:setFontColor("white");
    obj.label150:setText("=");
    obj.label150:setName("label150");

    obj.gradjogatina = gui.fromHandle(_obj_newObject("edit"));
    obj.gradjogatina:setParent(obj.layout49);
    obj.gradjogatina:setLeft(306);
    obj.gradjogatina:setTop(3);
    obj.gradjogatina:setWidth(40);
    obj.gradjogatina:setHeight(25);
    obj.gradjogatina:setName("gradjogatina");
    obj.gradjogatina:setField("gradjogatina");
    obj.gradjogatina:setType("number");
    obj.gradjogatina:setMin(-999);
    obj.gradjogatina:setMax(999);
    obj.gradjogatina:setHorzTextAlign("center");
    obj.gradjogatina:setFontColor("black");
    obj.gradjogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.gradjogatina, "fontStyle",  "bold");
    obj.gradjogatina:setHitTest(false);

    obj.rectangle155 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle155:setParent(obj.layout49);
    obj.rectangle155:setLeft(350);
    obj.rectangle155:setTop(8);
    obj.rectangle155:setColor("Black");
    obj.rectangle155:setWidth(20);
    obj.rectangle155:setHeight(15);
    obj.rectangle155:setXradius(2);
    obj.rectangle155:setYradius(2);
    obj.rectangle155:setName("rectangle155");

    obj.label151 = gui.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.layout49);
    obj.label151:setLeft(353);
    obj.label151:setTop(6);
    obj.label151:setWidth(20);
    obj.label151:setHeight(15);
    obj.label151:setFontSize(18);
    lfm_setPropAsString(obj.label151, "fontStyle",  "bold");
    obj.label151:setFontColor("white");
    obj.label151:setText("+");
    obj.label151:setName("label151");

    obj.modjogatina = gui.fromHandle(_obj_newObject("edit"));
    obj.modjogatina:setParent(obj.layout49);
    obj.modjogatina:setLeft(373);
    obj.modjogatina:setTop(3);
    obj.modjogatina:setWidth(40);
    obj.modjogatina:setHeight(25);
    obj.modjogatina:setName("modjogatina");
    obj.modjogatina:setField("modjogatina");
    obj.modjogatina:setType("number");
    obj.modjogatina:setMin(-999);
    obj.modjogatina:setMax(999);
    obj.modjogatina:setHorzTextAlign("center");
    obj.modjogatina:setFontColor("black");
    obj.modjogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.modjogatina, "fontStyle",  "bold");
    obj.modjogatina:setHitTest(false);

    obj.rectangle156 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle156:setParent(obj.layout49);
    obj.rectangle156:setLeft(416);
    obj.rectangle156:setTop(8);
    obj.rectangle156:setColor("Black");
    obj.rectangle156:setWidth(20);
    obj.rectangle156:setHeight(15);
    obj.rectangle156:setXradius(2);
    obj.rectangle156:setYradius(2);
    obj.rectangle156:setName("rectangle156");

    obj.label152 = gui.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.layout49);
    obj.label152:setLeft(419);
    obj.label152:setTop(6);
    obj.label152:setWidth(20);
    obj.label152:setHeight(15);
    obj.label152:setFontSize(18);
    lfm_setPropAsString(obj.label152, "fontStyle",  "bold");
    obj.label152:setFontColor("white");
    obj.label152:setText("+");
    obj.label152:setName("label152");

    obj.outrosjogatina = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosjogatina:setParent(obj.layout49);
    obj.outrosjogatina:setLeft(439);
    obj.outrosjogatina:setTop(3);
    obj.outrosjogatina:setWidth(40);
    obj.outrosjogatina:setHeight(25);
    obj.outrosjogatina:setName("outrosjogatina");
    obj.outrosjogatina:setField("outrosjogatina");
    obj.outrosjogatina:setType("number");
    obj.outrosjogatina:setMin(-999);
    obj.outrosjogatina:setMax(999);
    obj.outrosjogatina:setHorzTextAlign("center");
    obj.outrosjogatina:setFontColor("black");
    obj.outrosjogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosjogatina, "fontStyle",  "bold");

    obj.layout50 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout32);
    obj.layout50:setLeft(0);
    obj.layout50:setTop(476);
    obj.layout50:setWidth(480);
    obj.layout50:setHeight(32);
    obj.layout50:setName("layout50");

    obj.rectangle157 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle157:setParent(obj.layout50);
    obj.rectangle157:setLeft(3);
    obj.rectangle157:setTop(3);
    obj.rectangle157:setColor("Black");
    obj.rectangle157:setWidth(244);
    obj.rectangle157:setHeight(25);
    obj.rectangle157:setXradius(2);
    obj.rectangle157:setYradius(2);
    obj.rectangle157:setName("rectangle157");

    obj.imageCheckBox18 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout50);
    obj.imageCheckBox18:setLeft(3);
    obj.imageCheckBox18:setTop(5);
    obj.imageCheckBox18:setWidth(20);
    obj.imageCheckBox18:setHeight(20);
    obj.imageCheckBox18:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox18:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox18:setField("cbxladinagem");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.button50 = gui.fromHandle(_obj_newObject("button"));
    obj.button50:setParent(obj.layout50);
    obj.button50:setLeft(27);
    obj.button50:setTop(5);
    obj.button50:setWidth(20);
    obj.button50:setHeight(20);
    obj.button50:setText("H");
    obj.button50:setHint("Escolher habilidade base");
    obj.button50:setName("button50");

    obj.label153 = gui.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.layout50);
    obj.label153:setLeft(50);
    obj.label153:setTop(5);
    obj.label153:setWidth(150);
    obj.label153:setHeight(20);
    obj.label153:setText("Ladinagem");
    obj.label153:setHorzTextAlign("leading");
    obj.label153:setFontSize(15.0);
    lfm_setPropAsString(obj.label153, "fontStyle",  "bold");
    obj.label153:setFontColor("white");
    obj.label153:setName("label153");

    obj.button51 = gui.fromHandle(_obj_newObject("button"));
    obj.button51:setParent(obj.layout50);
    obj.button51:setLeft(50);
    obj.button51:setTop(5);
    obj.button51:setWidth(150);
    obj.button51:setHeight(20);
    obj.button51:setOpacity(0.0);
    obj.button51:setCanFocus(false);
    obj.button51:setCursor("handPoint");
    obj.button51:setHint("Rolar 1d20 + Ladinagem");
    obj.button51:setName("button51");

    obj.totalladinagem = gui.fromHandle(_obj_newObject("edit"));
    obj.totalladinagem:setParent(obj.layout50);
    obj.totalladinagem:setLeft(249);
    obj.totalladinagem:setTop(3);
    obj.totalladinagem:setWidth(40);
    obj.totalladinagem:setHeight(25);
    obj.totalladinagem:setName("totalladinagem");
    obj.totalladinagem:setField("totalladinagem");
    obj.totalladinagem:setType("number");
    obj.totalladinagem:setMin(-999);
    obj.totalladinagem:setMax(999);
    obj.totalladinagem:setHorzTextAlign("center");
    obj.totalladinagem:setFontSize(15.0);
    obj.totalladinagem:setFontColor("black");
    lfm_setPropAsString(obj.totalladinagem, "fontStyle",  "bold");
    obj.totalladinagem:setHitTest(false);

    obj.rectangle158 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle158:setParent(obj.layout50);
    obj.rectangle158:setLeft(290);
    obj.rectangle158:setTop(8);
    obj.rectangle158:setColor("Black");
    obj.rectangle158:setWidth(20);
    obj.rectangle158:setHeight(15);
    obj.rectangle158:setXradius(2);
    obj.rectangle158:setYradius(2);
    obj.rectangle158:setName("rectangle158");

    obj.label154 = gui.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.layout50);
    obj.label154:setLeft(292);
    obj.label154:setTop(6);
    obj.label154:setWidth(20);
    obj.label154:setHeight(15);
    obj.label154:setFontSize(18);
    lfm_setPropAsString(obj.label154, "fontStyle",  "bold");
    obj.label154:setFontColor("white");
    obj.label154:setText("=");
    obj.label154:setName("label154");

    obj.gradladinagem = gui.fromHandle(_obj_newObject("edit"));
    obj.gradladinagem:setParent(obj.layout50);
    obj.gradladinagem:setLeft(306);
    obj.gradladinagem:setTop(3);
    obj.gradladinagem:setWidth(40);
    obj.gradladinagem:setHeight(25);
    obj.gradladinagem:setName("gradladinagem");
    obj.gradladinagem:setField("gradladinagem");
    obj.gradladinagem:setType("number");
    obj.gradladinagem:setMin(-999);
    obj.gradladinagem:setMax(999);
    obj.gradladinagem:setHorzTextAlign("center");
    obj.gradladinagem:setFontSize(15.0);
    obj.gradladinagem:setFontColor("black");
    lfm_setPropAsString(obj.gradladinagem, "fontStyle",  "bold");
    obj.gradladinagem:setHitTest(false);

    obj.rectangle159 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle159:setParent(obj.layout50);
    obj.rectangle159:setLeft(350);
    obj.rectangle159:setTop(8);
    obj.rectangle159:setColor("Black");
    obj.rectangle159:setWidth(20);
    obj.rectangle159:setHeight(15);
    obj.rectangle159:setXradius(2);
    obj.rectangle159:setYradius(2);
    obj.rectangle159:setName("rectangle159");

    obj.label155 = gui.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.layout50);
    obj.label155:setLeft(353);
    obj.label155:setTop(6);
    obj.label155:setWidth(20);
    obj.label155:setHeight(15);
    obj.label155:setFontSize(18);
    lfm_setPropAsString(obj.label155, "fontStyle",  "bold");
    obj.label155:setFontColor("white");
    obj.label155:setText("+");
    obj.label155:setName("label155");

    obj.modladinagem = gui.fromHandle(_obj_newObject("edit"));
    obj.modladinagem:setParent(obj.layout50);
    obj.modladinagem:setLeft(373);
    obj.modladinagem:setTop(3);
    obj.modladinagem:setWidth(40);
    obj.modladinagem:setHeight(25);
    obj.modladinagem:setName("modladinagem");
    obj.modladinagem:setField("modladinagem");
    obj.modladinagem:setType("number");
    obj.modladinagem:setMin(-999);
    obj.modladinagem:setMax(999);
    obj.modladinagem:setHorzTextAlign("center");
    obj.modladinagem:setFontSize(15.0);
    obj.modladinagem:setFontColor("black");
    lfm_setPropAsString(obj.modladinagem, "fontStyle",  "bold");
    obj.modladinagem:setHitTest(false);

    obj.rectangle160 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle160:setParent(obj.layout50);
    obj.rectangle160:setLeft(416);
    obj.rectangle160:setTop(8);
    obj.rectangle160:setColor("Black");
    obj.rectangle160:setWidth(20);
    obj.rectangle160:setHeight(15);
    obj.rectangle160:setXradius(2);
    obj.rectangle160:setYradius(2);
    obj.rectangle160:setName("rectangle160");

    obj.label156 = gui.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.layout50);
    obj.label156:setLeft(419);
    obj.label156:setTop(6);
    obj.label156:setWidth(20);
    obj.label156:setHeight(15);
    obj.label156:setFontSize(18);
    lfm_setPropAsString(obj.label156, "fontStyle",  "bold");
    obj.label156:setFontColor("white");
    obj.label156:setText("+");
    obj.label156:setName("label156");

    obj.outrosladinagem = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosladinagem:setParent(obj.layout50);
    obj.outrosladinagem:setLeft(439);
    obj.outrosladinagem:setTop(3);
    obj.outrosladinagem:setWidth(40);
    obj.outrosladinagem:setHeight(25);
    obj.outrosladinagem:setName("outrosladinagem");
    obj.outrosladinagem:setField("outrosladinagem");
    obj.outrosladinagem:setType("number");
    obj.outrosladinagem:setMin(-999);
    obj.outrosladinagem:setMax(999);
    obj.outrosladinagem:setHorzTextAlign("center");
    obj.outrosladinagem:setFontSize(15.0);
    obj.outrosladinagem:setFontColor("black");
    lfm_setPropAsString(obj.outrosladinagem, "fontStyle",  "bold");

    obj.layout51 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layout32);
    obj.layout51:setLeft(0);
    obj.layout51:setTop(504);
    obj.layout51:setWidth(480);
    obj.layout51:setHeight(32);
    obj.layout51:setName("layout51");

    obj.rectangle161 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle161:setParent(obj.layout51);
    obj.rectangle161:setLeft(3);
    obj.rectangle161:setTop(3);
    obj.rectangle161:setColor("Black");
    obj.rectangle161:setWidth(244);
    obj.rectangle161:setHeight(25);
    obj.rectangle161:setXradius(2);
    obj.rectangle161:setYradius(2);
    obj.rectangle161:setName("rectangle161");

    obj.imageCheckBox19 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout51);
    obj.imageCheckBox19:setLeft(3);
    obj.imageCheckBox19:setTop(5);
    obj.imageCheckBox19:setWidth(20);
    obj.imageCheckBox19:setHeight(20);
    obj.imageCheckBox19:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox19:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox19:setField("cbxoinformacao");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.button52 = gui.fromHandle(_obj_newObject("button"));
    obj.button52:setParent(obj.layout51);
    obj.button52:setLeft(27);
    obj.button52:setTop(5);
    obj.button52:setWidth(20);
    obj.button52:setHeight(20);
    obj.button52:setText("H");
    obj.button52:setHint("Escolher habilidade base");
    obj.button52:setName("button52");

    obj.label157 = gui.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.layout51);
    obj.label157:setLeft(50);
    obj.label157:setTop(5);
    obj.label157:setWidth(150);
    obj.label157:setHeight(20);
    obj.label157:setText("Obter Informação");
    obj.label157:setHorzTextAlign("leading");
    obj.label157:setFontSize(15.0);
    lfm_setPropAsString(obj.label157, "fontStyle",  "bold");
    obj.label157:setFontColor("white");
    obj.label157:setName("label157");

    obj.button53 = gui.fromHandle(_obj_newObject("button"));
    obj.button53:setParent(obj.layout51);
    obj.button53:setLeft(50);
    obj.button53:setTop(5);
    obj.button53:setWidth(150);
    obj.button53:setHeight(20);
    obj.button53:setOpacity(0.0);
    obj.button53:setCanFocus(false);
    obj.button53:setCursor("handPoint");
    obj.button53:setHint("Rolar 1d20 + Obter Informação");
    obj.button53:setName("button53");

    obj.totaloinformacao = gui.fromHandle(_obj_newObject("edit"));
    obj.totaloinformacao:setParent(obj.layout51);
    obj.totaloinformacao:setLeft(249);
    obj.totaloinformacao:setTop(3);
    obj.totaloinformacao:setWidth(40);
    obj.totaloinformacao:setHeight(25);
    obj.totaloinformacao:setName("totaloinformacao");
    obj.totaloinformacao:setField("totaloinformacao");
    obj.totaloinformacao:setType("number");
    obj.totaloinformacao:setMin(-999);
    obj.totaloinformacao:setMax(999);
    obj.totaloinformacao:setHorzTextAlign("center");
    obj.totaloinformacao:setFontSize(15.0);
    obj.totaloinformacao:setFontColor("black");
    lfm_setPropAsString(obj.totaloinformacao, "fontStyle",  "bold");
    obj.totaloinformacao:setHitTest(false);

    obj.rectangle162 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle162:setParent(obj.layout51);
    obj.rectangle162:setLeft(290);
    obj.rectangle162:setTop(8);
    obj.rectangle162:setColor("Black");
    obj.rectangle162:setWidth(20);
    obj.rectangle162:setHeight(15);
    obj.rectangle162:setXradius(2);
    obj.rectangle162:setYradius(2);
    obj.rectangle162:setName("rectangle162");

    obj.label158 = gui.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.layout51);
    obj.label158:setLeft(292);
    obj.label158:setTop(6);
    obj.label158:setWidth(20);
    obj.label158:setHeight(15);
    obj.label158:setFontSize(18);
    lfm_setPropAsString(obj.label158, "fontStyle",  "bold");
    obj.label158:setFontColor("white");
    obj.label158:setText("=");
    obj.label158:setName("label158");

    obj.gradoinformacao = gui.fromHandle(_obj_newObject("edit"));
    obj.gradoinformacao:setParent(obj.layout51);
    obj.gradoinformacao:setLeft(306);
    obj.gradoinformacao:setTop(3);
    obj.gradoinformacao:setWidth(40);
    obj.gradoinformacao:setHeight(25);
    obj.gradoinformacao:setName("gradoinformacao");
    obj.gradoinformacao:setField("gradoinformacao");
    obj.gradoinformacao:setType("number");
    obj.gradoinformacao:setMin(-999);
    obj.gradoinformacao:setMax(999);
    obj.gradoinformacao:setHorzTextAlign("center");
    obj.gradoinformacao:setFontSize(15.0);
    obj.gradoinformacao:setFontColor("black");
    lfm_setPropAsString(obj.gradoinformacao, "fontStyle",  "bold");
    obj.gradoinformacao:setHitTest(false);

    obj.rectangle163 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle163:setParent(obj.layout51);
    obj.rectangle163:setLeft(350);
    obj.rectangle163:setTop(8);
    obj.rectangle163:setColor("Black");
    obj.rectangle163:setWidth(20);
    obj.rectangle163:setHeight(15);
    obj.rectangle163:setXradius(2);
    obj.rectangle163:setYradius(2);
    obj.rectangle163:setName("rectangle163");

    obj.label159 = gui.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.layout51);
    obj.label159:setLeft(353);
    obj.label159:setTop(6);
    obj.label159:setWidth(20);
    obj.label159:setHeight(15);
    obj.label159:setFontSize(18);
    lfm_setPropAsString(obj.label159, "fontStyle",  "bold");
    obj.label159:setFontColor("white");
    obj.label159:setText("+");
    obj.label159:setName("label159");

    obj.modoinformacao = gui.fromHandle(_obj_newObject("edit"));
    obj.modoinformacao:setParent(obj.layout51);
    obj.modoinformacao:setLeft(373);
    obj.modoinformacao:setTop(3);
    obj.modoinformacao:setWidth(40);
    obj.modoinformacao:setHeight(25);
    obj.modoinformacao:setName("modoinformacao");
    obj.modoinformacao:setField("modoinformacao");
    obj.modoinformacao:setType("number");
    obj.modoinformacao:setMin(-999);
    obj.modoinformacao:setMax(999);
    obj.modoinformacao:setHorzTextAlign("center");
    obj.modoinformacao:setFontSize(15.0);
    obj.modoinformacao:setFontColor("black");
    lfm_setPropAsString(obj.modoinformacao, "fontStyle",  "bold");
    obj.modoinformacao:setHitTest(false);

    obj.rectangle164 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle164:setParent(obj.layout51);
    obj.rectangle164:setLeft(416);
    obj.rectangle164:setTop(8);
    obj.rectangle164:setColor("Black");
    obj.rectangle164:setWidth(20);
    obj.rectangle164:setHeight(15);
    obj.rectangle164:setXradius(2);
    obj.rectangle164:setYradius(2);
    obj.rectangle164:setName("rectangle164");

    obj.label160 = gui.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.layout51);
    obj.label160:setLeft(419);
    obj.label160:setTop(6);
    obj.label160:setWidth(20);
    obj.label160:setHeight(15);
    obj.label160:setFontSize(18);
    lfm_setPropAsString(obj.label160, "fontStyle",  "bold");
    obj.label160:setFontColor("white");
    obj.label160:setText("+");
    obj.label160:setName("label160");

    obj.outrosoinformacao = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosoinformacao:setParent(obj.layout51);
    obj.outrosoinformacao:setLeft(439);
    obj.outrosoinformacao:setTop(3);
    obj.outrosoinformacao:setWidth(40);
    obj.outrosoinformacao:setHeight(25);
    obj.outrosoinformacao:setName("outrosoinformacao");
    obj.outrosoinformacao:setField("outrosoinformacao");
    obj.outrosoinformacao:setType("number");
    obj.outrosoinformacao:setMin(-999);
    obj.outrosoinformacao:setMax(999);
    obj.outrosoinformacao:setHorzTextAlign("center");
    obj.outrosoinformacao:setFontSize(15.0);
    obj.outrosoinformacao:setFontColor("black");
    lfm_setPropAsString(obj.outrosoinformacao, "fontStyle",  "bold");

    obj.layout52 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout32);
    obj.layout52:setLeft(0);
    obj.layout52:setTop(532);
    obj.layout52:setWidth(480);
    obj.layout52:setHeight(32);
    obj.layout52:setName("layout52");

    obj.rectangle165 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle165:setParent(obj.layout52);
    obj.rectangle165:setLeft(3);
    obj.rectangle165:setTop(3);
    obj.rectangle165:setColor("Black");
    obj.rectangle165:setWidth(244);
    obj.rectangle165:setHeight(25);
    obj.rectangle165:setXradius(2);
    obj.rectangle165:setYradius(2);
    obj.rectangle165:setName("rectangle165");

    obj.imageCheckBox20 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout52);
    obj.imageCheckBox20:setLeft(3);
    obj.imageCheckBox20:setTop(5);
    obj.imageCheckBox20:setWidth(20);
    obj.imageCheckBox20:setHeight(20);
    obj.imageCheckBox20:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox20:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox20:setField("cbxoficio1");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.button54 = gui.fromHandle(_obj_newObject("button"));
    obj.button54:setParent(obj.layout52);
    obj.button54:setLeft(27);
    obj.button54:setTop(5);
    obj.button54:setWidth(20);
    obj.button54:setHeight(20);
    obj.button54:setText("H");
    obj.button54:setHint("Escolher habilidade base");
    obj.button54:setName("button54");

    obj.label161 = gui.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.layout52);
    obj.label161:setLeft(50);
    obj.label161:setTop(5);
    obj.label161:setWidth(150);
    obj.label161:setHeight(20);
    obj.label161:setText("Ofício");
    obj.label161:setHorzTextAlign("leading");
    obj.label161:setFontSize(15.0);
    lfm_setPropAsString(obj.label161, "fontStyle",  "bold");
    obj.label161:setFontColor("white");
    obj.label161:setName("label161");

    obj.button55 = gui.fromHandle(_obj_newObject("button"));
    obj.button55:setParent(obj.layout52);
    obj.button55:setLeft(50);
    obj.button55:setTop(5);
    obj.button55:setWidth(150);
    obj.button55:setHeight(20);
    obj.button55:setOpacity(0.0);
    obj.button55:setCanFocus(false);
    obj.button55:setCursor("handPoint");
    obj.button55:setHint("Rolar 1d20 + Ofício");
    obj.button55:setName("button55");

    obj.edit59 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout52);
    obj.edit59:setField("oficio1");
    obj.edit59:setLeft(167);
    obj.edit59:setTop(3);
    obj.edit59:setWidth(80);
    obj.edit59:setHeight(25);
    obj.edit59:setFontSize(13.0);
    obj.edit59:setHorzTextAlign("center");
    lfm_setPropAsString(obj.edit59, "fontStyle",  "bold");
    obj.edit59:setFontColor("black");
    obj.edit59:setName("edit59");

    obj.totaloficio1 = gui.fromHandle(_obj_newObject("edit"));
    obj.totaloficio1:setParent(obj.layout52);
    obj.totaloficio1:setLeft(249);
    obj.totaloficio1:setTop(3);
    obj.totaloficio1:setWidth(40);
    obj.totaloficio1:setHeight(25);
    obj.totaloficio1:setName("totaloficio1");
    obj.totaloficio1:setField("totaloficio1");
    obj.totaloficio1:setType("number");
    obj.totaloficio1:setMin(-999);
    obj.totaloficio1:setMax(999);
    obj.totaloficio1:setHorzTextAlign("center");
    obj.totaloficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloficio1, "fontStyle",  "bold");
    obj.totaloficio1:setFontColor("black");
    obj.totaloficio1:setHitTest(false);

    obj.rectangle166 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle166:setParent(obj.layout52);
    obj.rectangle166:setLeft(290);
    obj.rectangle166:setTop(8);
    obj.rectangle166:setColor("Black");
    obj.rectangle166:setWidth(20);
    obj.rectangle166:setHeight(15);
    obj.rectangle166:setXradius(2);
    obj.rectangle166:setYradius(2);
    obj.rectangle166:setName("rectangle166");

    obj.label162 = gui.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.layout52);
    obj.label162:setLeft(292);
    obj.label162:setTop(6);
    obj.label162:setWidth(20);
    obj.label162:setHeight(15);
    obj.label162:setFontSize(18);
    lfm_setPropAsString(obj.label162, "fontStyle",  "bold");
    obj.label162:setFontColor("white");
    obj.label162:setText("=");
    obj.label162:setName("label162");

    obj.gradoficio1 = gui.fromHandle(_obj_newObject("edit"));
    obj.gradoficio1:setParent(obj.layout52);
    obj.gradoficio1:setLeft(306);
    obj.gradoficio1:setTop(3);
    obj.gradoficio1:setWidth(40);
    obj.gradoficio1:setHeight(25);
    obj.gradoficio1:setName("gradoficio1");
    obj.gradoficio1:setField("gradoficio1");
    obj.gradoficio1:setType("number");
    obj.gradoficio1:setMin(-999);
    obj.gradoficio1:setMax(999);
    obj.gradoficio1:setHorzTextAlign("center");
    obj.gradoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoficio1, "fontStyle",  "bold");
    obj.gradoficio1:setFontColor("black");
    obj.gradoficio1:setHitTest(false);

    obj.rectangle167 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle167:setParent(obj.layout52);
    obj.rectangle167:setLeft(350);
    obj.rectangle167:setTop(8);
    obj.rectangle167:setColor("Black");
    obj.rectangle167:setWidth(20);
    obj.rectangle167:setHeight(15);
    obj.rectangle167:setXradius(2);
    obj.rectangle167:setYradius(2);
    obj.rectangle167:setName("rectangle167");

    obj.label163 = gui.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.layout52);
    obj.label163:setLeft(353);
    obj.label163:setTop(6);
    obj.label163:setWidth(20);
    obj.label163:setHeight(15);
    obj.label163:setFontSize(18);
    lfm_setPropAsString(obj.label163, "fontStyle",  "bold");
    obj.label163:setFontColor("white");
    obj.label163:setText("+");
    obj.label163:setName("label163");

    obj.modoficio1 = gui.fromHandle(_obj_newObject("edit"));
    obj.modoficio1:setParent(obj.layout52);
    obj.modoficio1:setLeft(373);
    obj.modoficio1:setTop(3);
    obj.modoficio1:setWidth(40);
    obj.modoficio1:setHeight(25);
    obj.modoficio1:setName("modoficio1");
    obj.modoficio1:setField("modoficio1");
    obj.modoficio1:setType("number");
    obj.modoficio1:setMin(-999);
    obj.modoficio1:setMax(999);
    obj.modoficio1:setHorzTextAlign("center");
    obj.modoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.modoficio1, "fontStyle",  "bold");
    obj.modoficio1:setFontColor("black");
    obj.modoficio1:setHitTest(false);

    obj.rectangle168 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle168:setParent(obj.layout52);
    obj.rectangle168:setLeft(416);
    obj.rectangle168:setTop(8);
    obj.rectangle168:setColor("Black");
    obj.rectangle168:setWidth(20);
    obj.rectangle168:setHeight(15);
    obj.rectangle168:setXradius(2);
    obj.rectangle168:setYradius(2);
    obj.rectangle168:setName("rectangle168");

    obj.label164 = gui.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.layout52);
    obj.label164:setLeft(419);
    obj.label164:setTop(6);
    obj.label164:setWidth(20);
    obj.label164:setHeight(15);
    obj.label164:setFontSize(18);
    lfm_setPropAsString(obj.label164, "fontStyle",  "bold");
    obj.label164:setFontColor("white");
    obj.label164:setText("+");
    obj.label164:setName("label164");

    obj.outrosoficio1 = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosoficio1:setParent(obj.layout52);
    obj.outrosoficio1:setLeft(439);
    obj.outrosoficio1:setTop(3);
    obj.outrosoficio1:setWidth(40);
    obj.outrosoficio1:setHeight(25);
    obj.outrosoficio1:setName("outrosoficio1");
    obj.outrosoficio1:setField("outrosoficio1");
    obj.outrosoficio1:setType("number");
    obj.outrosoficio1:setMin(-999);
    obj.outrosoficio1:setMax(999);
    obj.outrosoficio1:setHorzTextAlign("center");
    obj.outrosoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoficio1, "fontStyle",  "bold");
    obj.outrosoficio1:setFontColor("black");

    obj.layout53 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.layout32);
    obj.layout53:setLeft(0);
    obj.layout53:setTop(560);
    obj.layout53:setWidth(480);
    obj.layout53:setHeight(32);
    obj.layout53:setName("layout53");

    obj.rectangle169 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle169:setParent(obj.layout53);
    obj.rectangle169:setLeft(3);
    obj.rectangle169:setTop(3);
    obj.rectangle169:setColor("Black");
    obj.rectangle169:setWidth(244);
    obj.rectangle169:setHeight(25);
    obj.rectangle169:setXradius(2);
    obj.rectangle169:setYradius(2);
    obj.rectangle169:setName("rectangle169");

    obj.imageCheckBox21 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout53);
    obj.imageCheckBox21:setLeft(3);
    obj.imageCheckBox21:setTop(5);
    obj.imageCheckBox21:setWidth(20);
    obj.imageCheckBox21:setHeight(20);
    obj.imageCheckBox21:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox21:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox21:setField("cbxoficio2");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.button56 = gui.fromHandle(_obj_newObject("button"));
    obj.button56:setParent(obj.layout53);
    obj.button56:setLeft(27);
    obj.button56:setTop(5);
    obj.button56:setWidth(20);
    obj.button56:setHeight(20);
    obj.button56:setText("H");
    obj.button56:setHint("Escolher habilidade base");
    obj.button56:setName("button56");

    obj.label165 = gui.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.layout53);
    obj.label165:setLeft(50);
    obj.label165:setTop(5);
    obj.label165:setWidth(150);
    obj.label165:setHeight(20);
    obj.label165:setText("Ofício");
    obj.label165:setHorzTextAlign("leading");
    obj.label165:setFontSize(15.0);
    lfm_setPropAsString(obj.label165, "fontStyle",  "bold");
    obj.label165:setFontColor("white");
    obj.label165:setName("label165");

    obj.button57 = gui.fromHandle(_obj_newObject("button"));
    obj.button57:setParent(obj.layout53);
    obj.button57:setLeft(50);
    obj.button57:setTop(5);
    obj.button57:setWidth(150);
    obj.button57:setHeight(20);
    obj.button57:setOpacity(0.0);
    obj.button57:setCanFocus(false);
    obj.button57:setCursor("handPoint");
    obj.button57:setHint("Rolar 1d20 + Ofício");
    obj.button57:setName("button57");

    obj.edit60 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout53);
    obj.edit60:setField("oficio2");
    obj.edit60:setLeft(167);
    obj.edit60:setTop(3);
    obj.edit60:setWidth(80);
    obj.edit60:setHeight(25);
    obj.edit60:setFontSize(13.0);
    obj.edit60:setHorzTextAlign("center");
    lfm_setPropAsString(obj.edit60, "fontStyle",  "bold");
    obj.edit60:setFontColor("black");
    obj.edit60:setName("edit60");

    obj.totaloficio2 = gui.fromHandle(_obj_newObject("edit"));
    obj.totaloficio2:setParent(obj.layout53);
    obj.totaloficio2:setLeft(249);
    obj.totaloficio2:setTop(3);
    obj.totaloficio2:setWidth(40);
    obj.totaloficio2:setHeight(25);
    obj.totaloficio2:setName("totaloficio2");
    obj.totaloficio2:setField("totaloficio2");
    obj.totaloficio2:setType("number");
    obj.totaloficio2:setMin(-999);
    obj.totaloficio2:setMax(999);
    obj.totaloficio2:setHorzTextAlign("center");
    obj.totaloficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloficio2, "fontStyle",  "bold");
    obj.totaloficio2:setFontColor("black");
    obj.totaloficio2:setHitTest(false);

    obj.rectangle170 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle170:setParent(obj.layout53);
    obj.rectangle170:setLeft(290);
    obj.rectangle170:setTop(8);
    obj.rectangle170:setColor("Black");
    obj.rectangle170:setWidth(20);
    obj.rectangle170:setHeight(15);
    obj.rectangle170:setXradius(2);
    obj.rectangle170:setYradius(2);
    obj.rectangle170:setName("rectangle170");

    obj.label166 = gui.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.layout53);
    obj.label166:setLeft(292);
    obj.label166:setTop(6);
    obj.label166:setWidth(20);
    obj.label166:setHeight(15);
    obj.label166:setFontSize(18);
    lfm_setPropAsString(obj.label166, "fontStyle",  "bold");
    obj.label166:setFontColor("white");
    obj.label166:setText("=");
    obj.label166:setName("label166");

    obj.gradoficio2 = gui.fromHandle(_obj_newObject("edit"));
    obj.gradoficio2:setParent(obj.layout53);
    obj.gradoficio2:setLeft(306);
    obj.gradoficio2:setTop(3);
    obj.gradoficio2:setWidth(40);
    obj.gradoficio2:setHeight(25);
    obj.gradoficio2:setName("gradoficio2");
    obj.gradoficio2:setField("gradoficio2");
    obj.gradoficio2:setType("number");
    obj.gradoficio2:setMin(-999);
    obj.gradoficio2:setMax(999);
    obj.gradoficio2:setHorzTextAlign("center");
    obj.gradoficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoficio2, "fontStyle",  "bold");
    obj.gradoficio2:setFontColor("black");
    obj.gradoficio2:setHitTest(false);

    obj.rectangle171 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle171:setParent(obj.layout53);
    obj.rectangle171:setLeft(350);
    obj.rectangle171:setTop(8);
    obj.rectangle171:setColor("Black");
    obj.rectangle171:setWidth(20);
    obj.rectangle171:setHeight(15);
    obj.rectangle171:setXradius(2);
    obj.rectangle171:setYradius(2);
    obj.rectangle171:setName("rectangle171");

    obj.label167 = gui.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.layout53);
    obj.label167:setLeft(353);
    obj.label167:setTop(6);
    obj.label167:setWidth(20);
    obj.label167:setHeight(15);
    obj.label167:setFontSize(18);
    lfm_setPropAsString(obj.label167, "fontStyle",  "bold");
    obj.label167:setFontColor("white");
    obj.label167:setText("+");
    obj.label167:setName("label167");

    obj.modoficio2 = gui.fromHandle(_obj_newObject("edit"));
    obj.modoficio2:setParent(obj.layout53);
    obj.modoficio2:setLeft(373);
    obj.modoficio2:setTop(3);
    obj.modoficio2:setWidth(40);
    obj.modoficio2:setHeight(25);
    obj.modoficio2:setName("modoficio2");
    obj.modoficio2:setField("modoficio2");
    obj.modoficio2:setType("number");
    obj.modoficio2:setMin(-999);
    obj.modoficio2:setMax(999);
    obj.modoficio2:setHorzTextAlign("center");
    obj.modoficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.modoficio2, "fontStyle",  "bold");
    obj.modoficio2:setFontColor("black");
    obj.modoficio2:setHitTest(false);

    obj.rectangle172 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle172:setParent(obj.layout53);
    obj.rectangle172:setLeft(416);
    obj.rectangle172:setTop(8);
    obj.rectangle172:setColor("Black");
    obj.rectangle172:setWidth(20);
    obj.rectangle172:setHeight(15);
    obj.rectangle172:setXradius(2);
    obj.rectangle172:setYradius(2);
    obj.rectangle172:setName("rectangle172");

    obj.label168 = gui.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.layout53);
    obj.label168:setLeft(419);
    obj.label168:setTop(6);
    obj.label168:setWidth(20);
    obj.label168:setHeight(15);
    obj.label168:setFontSize(18);
    lfm_setPropAsString(obj.label168, "fontStyle",  "bold");
    obj.label168:setFontColor("white");
    obj.label168:setText("+");
    obj.label168:setName("label168");

    obj.outrosoficio2 = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosoficio2:setParent(obj.layout53);
    obj.outrosoficio2:setLeft(439);
    obj.outrosoficio2:setTop(3);
    obj.outrosoficio2:setWidth(40);
    obj.outrosoficio2:setHeight(25);
    obj.outrosoficio2:setName("outrosoficio2");
    obj.outrosoficio2:setField("outrosoficio2");
    obj.outrosoficio2:setType("number");
    obj.outrosoficio2:setMin(-999);
    obj.outrosoficio2:setMax(999);
    obj.outrosoficio2:setHorzTextAlign("center");
    obj.outrosoficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoficio2, "fontStyle",  "bold");
    obj.outrosoficio2:setFontColor("black");

    obj.layout54 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout32);
    obj.layout54:setLeft(0);
    obj.layout54:setTop(588);
    obj.layout54:setWidth(480);
    obj.layout54:setHeight(32);
    obj.layout54:setName("layout54");

    obj.rectangle173 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle173:setParent(obj.layout54);
    obj.rectangle173:setLeft(3);
    obj.rectangle173:setTop(3);
    obj.rectangle173:setColor("Black");
    obj.rectangle173:setWidth(244);
    obj.rectangle173:setHeight(25);
    obj.rectangle173:setXradius(2);
    obj.rectangle173:setYradius(2);
    obj.rectangle173:setName("rectangle173");

    obj.imageCheckBox22 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout54);
    obj.imageCheckBox22:setLeft(3);
    obj.imageCheckBox22:setTop(5);
    obj.imageCheckBox22:setWidth(20);
    obj.imageCheckBox22:setHeight(20);
    obj.imageCheckBox22:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox22:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox22:setField("cbxmeditacao");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.button58 = gui.fromHandle(_obj_newObject("button"));
    obj.button58:setParent(obj.layout54);
    obj.button58:setLeft(27);
    obj.button58:setTop(5);
    obj.button58:setWidth(20);
    obj.button58:setHeight(20);
    obj.button58:setText("H");
    obj.button58:setHint("Escolher habilidade base");
    obj.button58:setName("button58");

    obj.label169 = gui.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.layout54);
    obj.label169:setLeft(50);
    obj.label169:setTop(5);
    obj.label169:setWidth(150);
    obj.label169:setHeight(20);
    obj.label169:setText("Meditação");
    obj.label169:setHorzTextAlign("leading");
    obj.label169:setFontSize(15.0);
    lfm_setPropAsString(obj.label169, "fontStyle",  "bold");
    obj.label169:setFontColor("white");
    obj.label169:setName("label169");

    obj.button59 = gui.fromHandle(_obj_newObject("button"));
    obj.button59:setParent(obj.layout54);
    obj.button59:setLeft(50);
    obj.button59:setTop(5);
    obj.button59:setWidth(150);
    obj.button59:setHeight(20);
    obj.button59:setOpacity(0.0);
    obj.button59:setCanFocus(false);
    obj.button59:setCursor("handPoint");
    obj.button59:setHint("Rolar 1d20 + Meditação");
    obj.button59:setName("button59");

    obj.totalmeditacao = gui.fromHandle(_obj_newObject("edit"));
    obj.totalmeditacao:setParent(obj.layout54);
    obj.totalmeditacao:setLeft(249);
    obj.totalmeditacao:setTop(3);
    obj.totalmeditacao:setWidth(40);
    obj.totalmeditacao:setHeight(25);
    obj.totalmeditacao:setName("totalmeditacao");
    obj.totalmeditacao:setField("totalmeditacao");
    obj.totalmeditacao:setType("number");
    obj.totalmeditacao:setMin(-999);
    obj.totalmeditacao:setMax(999);
    obj.totalmeditacao:setHorzTextAlign("center");
    obj.totalmeditacao:setFontSize(15.0);
    obj.totalmeditacao:setFontColor("black");
    lfm_setPropAsString(obj.totalmeditacao, "fontStyle",  "bold");
    obj.totalmeditacao:setHitTest(false);

    obj.rectangle174 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle174:setParent(obj.layout54);
    obj.rectangle174:setLeft(290);
    obj.rectangle174:setTop(8);
    obj.rectangle174:setColor("Black");
    obj.rectangle174:setWidth(20);
    obj.rectangle174:setHeight(15);
    obj.rectangle174:setXradius(2);
    obj.rectangle174:setYradius(2);
    obj.rectangle174:setName("rectangle174");

    obj.label170 = gui.fromHandle(_obj_newObject("label"));
    obj.label170:setParent(obj.layout54);
    obj.label170:setLeft(292);
    obj.label170:setTop(6);
    obj.label170:setWidth(20);
    obj.label170:setHeight(15);
    obj.label170:setFontSize(18);
    lfm_setPropAsString(obj.label170, "fontStyle",  "bold");
    obj.label170:setFontColor("white");
    obj.label170:setText("=");
    obj.label170:setName("label170");

    obj.gradmeditacao = gui.fromHandle(_obj_newObject("edit"));
    obj.gradmeditacao:setParent(obj.layout54);
    obj.gradmeditacao:setLeft(306);
    obj.gradmeditacao:setTop(3);
    obj.gradmeditacao:setWidth(40);
    obj.gradmeditacao:setHeight(25);
    obj.gradmeditacao:setName("gradmeditacao");
    obj.gradmeditacao:setField("gradmeditacao");
    obj.gradmeditacao:setType("number");
    obj.gradmeditacao:setMin(-999);
    obj.gradmeditacao:setMax(999);
    obj.gradmeditacao:setHorzTextAlign("center");
    obj.gradmeditacao:setFontSize(15.0);
    obj.gradmeditacao:setFontColor("black");
    lfm_setPropAsString(obj.gradmeditacao, "fontStyle",  "bold");
    obj.gradmeditacao:setHitTest(false);

    obj.rectangle175 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle175:setParent(obj.layout54);
    obj.rectangle175:setLeft(350);
    obj.rectangle175:setTop(8);
    obj.rectangle175:setColor("Black");
    obj.rectangle175:setWidth(20);
    obj.rectangle175:setHeight(15);
    obj.rectangle175:setXradius(2);
    obj.rectangle175:setYradius(2);
    obj.rectangle175:setName("rectangle175");

    obj.label171 = gui.fromHandle(_obj_newObject("label"));
    obj.label171:setParent(obj.layout54);
    obj.label171:setLeft(353);
    obj.label171:setTop(6);
    obj.label171:setWidth(20);
    obj.label171:setHeight(15);
    obj.label171:setFontSize(18);
    lfm_setPropAsString(obj.label171, "fontStyle",  "bold");
    obj.label171:setFontColor("white");
    obj.label171:setText("+");
    obj.label171:setName("label171");

    obj.modmeditacao = gui.fromHandle(_obj_newObject("edit"));
    obj.modmeditacao:setParent(obj.layout54);
    obj.modmeditacao:setLeft(373);
    obj.modmeditacao:setTop(3);
    obj.modmeditacao:setWidth(40);
    obj.modmeditacao:setHeight(25);
    obj.modmeditacao:setName("modmeditacao");
    obj.modmeditacao:setField("modmeditacao");
    obj.modmeditacao:setType("number");
    obj.modmeditacao:setMin(-999);
    obj.modmeditacao:setMax(999);
    obj.modmeditacao:setHorzTextAlign("center");
    obj.modmeditacao:setFontSize(15.0);
    obj.modmeditacao:setFontColor("black");
    lfm_setPropAsString(obj.modmeditacao, "fontStyle",  "bold");
    obj.modmeditacao:setHitTest(false);

    obj.rectangle176 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle176:setParent(obj.layout54);
    obj.rectangle176:setLeft(416);
    obj.rectangle176:setTop(8);
    obj.rectangle176:setColor("Black");
    obj.rectangle176:setWidth(20);
    obj.rectangle176:setHeight(15);
    obj.rectangle176:setXradius(2);
    obj.rectangle176:setYradius(2);
    obj.rectangle176:setName("rectangle176");

    obj.label172 = gui.fromHandle(_obj_newObject("label"));
    obj.label172:setParent(obj.layout54);
    obj.label172:setLeft(419);
    obj.label172:setTop(6);
    obj.label172:setWidth(20);
    obj.label172:setHeight(15);
    obj.label172:setFontSize(18);
    lfm_setPropAsString(obj.label172, "fontStyle",  "bold");
    obj.label172:setFontColor("white");
    obj.label172:setText("+");
    obj.label172:setName("label172");

    obj.outrosmeditacao = gui.fromHandle(_obj_newObject("edit"));
    obj.outrosmeditacao:setParent(obj.layout54);
    obj.outrosmeditacao:setLeft(439);
    obj.outrosmeditacao:setTop(3);
    obj.outrosmeditacao:setWidth(40);
    obj.outrosmeditacao:setHeight(25);
    obj.outrosmeditacao:setName("outrosmeditacao");
    obj.outrosmeditacao:setField("outrosmeditacao");
    obj.outrosmeditacao:setType("number");
    obj.outrosmeditacao:setMin(-999);
    obj.outrosmeditacao:setMax(999);
    obj.outrosmeditacao:setHorzTextAlign("center");
    obj.outrosmeditacao:setFontSize(15.0);
    obj.outrosmeditacao:setFontColor("black");
    lfm_setPropAsString(obj.outrosmeditacao, "fontStyle",  "bold");

    obj.layout55 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout32);
    obj.layout55:setLeft(0);
    obj.layout55:setTop(616);
    obj.layout55:setWidth(480);
    obj.layout55:setHeight(32);
    obj.layout55:setName("layout55");

    obj.rectangle177 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle177:setParent(obj.layout55);
    obj.rectangle177:setLeft(3);
    obj.rectangle177:setTop(3);
    obj.rectangle177:setColor("Black");
    obj.rectangle177:setWidth(244);
    obj.rectangle177:setHeight(25);
    obj.rectangle177:setXradius(2);
    obj.rectangle177:setYradius(2);
    obj.rectangle177:setName("rectangle177");

    obj.imageCheckBox23 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout55);
    obj.imageCheckBox23:setLeft(3);
    obj.imageCheckBox23:setTop(5);
    obj.imageCheckBox23:setWidth(20);
    obj.imageCheckBox23:setHeight(20);
    obj.imageCheckBox23:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox23:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox23:setField("cbxpercepcao");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.button60 = gui.fromHandle(_obj_newObject("button"));
    obj.button60:setParent(obj.layout55);
    obj.button60:setLeft(27);
    obj.button60:setTop(5);
    obj.button60:setWidth(20);
    obj.button60:setHeight(20);
    obj.button60:setText("H");
    obj.button60:setHint("Escolher habilidade base");
    obj.button60:setName("button60");

    obj.label173 = gui.fromHandle(_obj_newObject("label"));
    obj.label173:setParent(obj.layout55);
    obj.label173:setLeft(50);
    obj.label173:setTop(5);
    obj.label173:setWidth(150);
    obj.label173:setHeight(20);
    obj.label173:setText("Percepção");
    obj.label173:setHorzTextAlign("leading");
    obj.label173:setFontSize(15.0);
    lfm_setPropAsString(obj.label173, "fontStyle",  "bold");
    obj.label173:setFontColor("white");
    obj.label173:setName("label173");

    obj.button61 = gui.fromHandle(_obj_newObject("button"));
    obj.button61:setParent(obj.layout55);
    obj.button61:setLeft(50);
    obj.button61:setTop(5);
    obj.button61:setWidth(150);
    obj.button61:setHeight(20);
    obj.button61:setOpacity(0.0);
    obj.button61:setCanFocus(false);
    obj.button61:setCursor("handPoint");
    obj.button61:setHint("Rolar 1d20 + Percepção");
    obj.button61:setName("button61");

    obj.totalpercepcao = gui.fromHandle(_obj_newObject("edit"));
    obj.totalpercepcao:setParent(obj.layout55);
    obj.totalpercepcao:setLeft(249);
    obj.totalpercepcao:setTop(3);
    obj.totalpercepcao:setWidth(40);
    obj.totalpercepcao:setHeight(25);
    obj.totalpercepcao:setName("totalpercepcao");
    obj.totalpercepcao:setField("totalpercepcao");
    obj.totalpercepcao:setType("number");
    obj.totalpercepcao:setMin(-999);
    obj.totalpercepcao:setMax(999);
    obj.totalpercepcao:setHorzTextAlign("center");
    obj.totalpercepcao:setFontSize(15.0);
    obj.totalpercepcao:setFontColor("black");
    lfm_setPropAsString(obj.totalpercepcao, "fontStyle",  "bold");
    obj.totalpercepcao:setHitTest(false);

    obj.rectangle178 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle178:setParent(obj.layout55);
    obj.rectangle178:setLeft(290);
    obj.rectangle178:setTop(8);
    obj.rectangle178:setColor("Black");
    obj.rectangle178:setWidth(20);
    obj.rectangle178:setHeight(15);
    obj.rectangle178:setXradius(2);
    obj.rectangle178:setYradius(2);
    obj.rectangle178:setName("rectangle178");

    obj.label174 = gui.fromHandle(_obj_newObject("label"));
    obj.label174:setParent(obj.layout55);
    obj.label174:setLeft(292);
    obj.label174:setTop(6);
    obj.label174:setWidth(20);
    obj.label174:setHeight(15);
    obj.label174:setFontSize(18);
    lfm_setPropAsString(obj.label174, "fontStyle",  "bold");
    obj.label174:setFontColor("white");
    obj.label174:setText("=");
    obj.label174:setName("label174");

    obj.gradpercepcao = gui.fromHandle(_obj_newObject("edit"));
    obj.gradpercepcao:setParent(obj.layout55);
    obj.gradpercepcao:setLeft(306);
    obj.gradpercepcao:setTop(3);
    obj.gradpercepcao:setWidth(40);
    obj.gradpercepcao:setHeight(25);
    obj.gradpercepcao:setName("gradpercepcao");
    obj.gradpercepcao:setField("gradpercepcao");
    obj.gradpercepcao:setType("number");
    obj.gradpercepcao:setMin(-999);
    obj.gradpercepcao:setMax(999);
    obj.gradpercepcao:setHorzTextAlign("center");
    obj.gradpercepcao:setFontSize(15.0);
    obj.gradpercepcao:setFontColor("black");
    lfm_setPropAsString(obj.gradpercepcao, "fontStyle",  "bold");
    obj.gradpercepcao:setHitTest(false);

    obj.rectangle179 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle179:setParent(obj.layout55);
    obj.rectangle179:setLeft(350);
    obj.rectangle179:setTop(8);
    obj.rectangle179:setColor("Black");
    obj.rectangle179:setWidth(20);
    obj.rectangle179:setHeight(15);
    obj.rectangle179:setXradius(2);
    obj.rectangle179:setYradius(2);
    obj.rectangle179:setName("rectangle179");

    obj.label175 = gui.fromHandle(_obj_newObject("label"));
    obj.label175:setParent(obj.layout55);
    obj.label175:setLeft(353);
    obj.label175:setTop(6);
    obj.label175:setWidth(20);
    obj.label175:setHeight(15);
    obj.label175:setFontSize(18);
    lfm_setPropAsString(obj.label175, "fontStyle",  "bold");
    obj.label175:setFontColor("white");
    obj.label175:setText("+");
    obj.label175:setName("label175");

    obj.modpercepcao = gui.fromHandle(_obj_newObject("edit"));
    obj.modpercepcao:setParent(obj.layout55);
    obj.modpercepcao:setLeft(373);
    obj.modpercepcao:setTop(3);
    obj.modpercepcao:setWidth(40);
    obj.modpercepcao:setHeight(25);
    obj.modpercepcao:setName("modpercepcao");
    obj.modpercepcao:setField("modpercepcao");
    obj.modpercepcao:setType("number");
    obj.modpercepcao:setMin(-999);
    obj.modpercepcao:setMax(999);
    obj.modpercepcao:setHorzTextAlign("center");
    obj.modpercepcao:setFontSize(15.0);
    obj.modpercepcao:setFontColor("black");
    lfm_setPropAsString(obj.modpercepcao, "fontStyle",  "bold");
    obj.modpercepcao:setHitTest(false);

    obj.rectangle180 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle180:setParent(obj.layout55);
    obj.rectangle180:setLeft(416);
    obj.rectangle180:setTop(8);
    obj.rectangle180:setColor("Black");
    obj.rectangle180:setWidth(20);
    obj.rectangle180:setHeight(15);
    obj.rectangle180:setXradius(2);
    obj.rectangle180:setYradius(2);
    obj.rectangle180:setName("rectangle180");

    obj.label176 = gui.fromHandle(_obj_newObject("label"));
    obj.label176:setParent(obj.layout55);
    obj.label176:setLeft(419);
    obj.label176:setTop(6);
    obj.label176:setWidth(20);
    obj.label176:setHeight(15);
    obj.label176:setFontSize(18);
    lfm_setPropAsString(obj.label176, "fontStyle",  "bold");
    obj.label176:setFontColor("white");
    obj.label176:setText("+");
    obj.label176:setName("label176");

    obj.outrospercepcao = gui.fromHandle(_obj_newObject("edit"));
    obj.outrospercepcao:setParent(obj.layout55);
    obj.outrospercepcao:setLeft(439);
    obj.outrospercepcao:setTop(3);
    obj.outrospercepcao:setWidth(40);
    obj.outrospercepcao:setHeight(25);
    obj.outrospercepcao:setName("outrospercepcao");
    obj.outrospercepcao:setField("outrospercepcao");
    obj.outrospercepcao:setType("number");
    obj.outrospercepcao:setMin(-999);
    obj.outrospercepcao:setMax(999);
    obj.outrospercepcao:setHorzTextAlign("center");
    obj.outrospercepcao:setFontSize(15.0);
    obj.outrospercepcao:setFontColor("black");
    lfm_setPropAsString(obj.outrospercepcao, "fontStyle",  "bold");

    obj.layout56 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout32);
    obj.layout56:setLeft(0);
    obj.layout56:setTop(644);
    obj.layout56:setWidth(480);
    obj.layout56:setHeight(32);
    obj.layout56:setName("layout56");

    obj.rectangle181 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle181:setParent(obj.layout56);
    obj.rectangle181:setLeft(3);
    obj.rectangle181:setTop(3);
    obj.rectangle181:setColor("Black");
    obj.rectangle181:setWidth(244);
    obj.rectangle181:setHeight(25);
    obj.rectangle181:setXradius(2);
    obj.rectangle181:setYradius(2);
    obj.rectangle181:setName("rectangle181");

    obj.imageCheckBox24 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout56);
    obj.imageCheckBox24:setLeft(3);
    obj.imageCheckBox24:setTop(5);
    obj.imageCheckBox24:setWidth(20);
    obj.imageCheckBox24:setHeight(20);
    obj.imageCheckBox24:setImageChecked("/TRPG/img/box.png");
    obj.imageCheckBox24:setImageUnchecked("/TRPG/img/unbox.png");
    obj.imageCheckBox24:setField("cbxsobrevivencia");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.button62 = gui.fromHandle(_obj_newObject("button"));
    obj.button62:setParent(obj.layout56);
    obj.button62:setLeft(27);
    obj.button62:setTop(5);
    obj.button62:setWidth(20);
    obj.button62:setHeight(20);
    obj.button62:setText("H");
    obj.button62:setHint("Escolher habilidade base");
    obj.button62:setName("button62");

    obj.label177 = gui.fromHandle(_obj_newObject("label"));
    obj.label177:setParent(obj.layout56);
    obj.label177:setLeft(50);
    obj.label177:setTop(5);
    obj.label177:setWidth(150);
    obj.label177:setHeight(20);
    obj.label177:setText("Sobrevivência");
    obj.label177:setHorzTextAlign("leading");
    obj.label177:setFontSize(15.0);
    lfm_setPropAsString(obj.label177, "fontStyle",  "bold");
    obj.label177:setFontColor("white");
    obj.label177:setName("label177");

    obj.button63 = gui.fromHandle(_obj_newObject("button"));
    obj.button63:setParent(obj.layout56);
    obj.button63:setLeft(50);
    obj.button63:setTop(5);
    obj.button63:setWidth(150);
    obj.button63:setHeight(20);
    obj.button63:setOpacity(0.0);
    obj.button63:setCanFocus(false);
    obj.button63:setCursor("handPoint");
    obj.button63:setHint("Rolar 1d20 + Sobrevivência");
    obj.button63:setName("button63");

    obj.totalsobrevivencia = gui.fromHandle(_obj_newObject("edit"));
    obj.totalsobrevivencia:setParent(obj.layout56);
    obj.totalsobrevivencia:setLeft(249);
    obj.totalsobrevivencia:setTop(3);
    obj.totalsobrevivencia:setWidth(40);
    obj.totalsobrevivencia:setHeight(25);
    obj.totalsobrevivencia:setName("totalsobrevivencia");
    obj.totalsobrevivencia:setField("totalsobrevivencia");
    obj.totalsobrevivencia:setType("number");
    obj.totalsobrevivencia:setMin(-999);
    obj.totalsobrevivencia:setMax(999);
    obj.totalsobrevivencia:setHorzTextAlign("center");
    obj.totalsobrevivencia:setFontSize(15.0);
    obj.totalsobrevivencia:setFontColor("black");
    lfm_setPropAsString(obj.totalsobrevivencia, "fontStyle",  "bold");
    obj.totalsobrevivencia:setHitTest(false);

    obj.rectangle182 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle182:setParent(obj.layout56);
    obj.rectangle182:setLeft(290);
    obj.rectangle182:setTop(8);
    obj.rectangle182:setColor("Black");
    obj.rectangle182:setWidth(20);
    obj.rectangle182:setHeight(15);
    obj.rectangle182:setXradius(2);
    obj.rectangle182:setYradius(2);
    obj.rectangle182:setName("rectangle182");

    obj.label178 = gui.fromHandle(_obj_newObject("label"));
    obj.label178:setParent(obj.layout56);
    obj.label178:setLeft(292);
    obj.label178:setTop(6);
    obj.label178:setWidth(20);
    obj.label178:setHeight(15);
    obj.label178:setFontSize(18);
    lfm_setPropAsString(obj.label178, "fontStyle",  "bold");
    obj.label178:setFontColor("white");
    obj.label178:setText("=");
    obj.label178:setName("label178");

    obj.gradsobrevivencia = gui.fromHandle(_obj_newObject("edit"));
    obj.gradsobrevivencia:setParent(obj.layout56);
    obj.gradsobrevivencia:setLeft(306);
    obj.gradsobrevivencia:setTop(3);
    obj.gradsobrevivencia:setWidth(40);
    obj.gradsobrevivencia:setHeight(25);
    obj.gradsobrevivencia:setName("gradsobrevivencia");
    obj.gradsobrevivencia:setField("gradsobrevivencia");
    obj.gradsobrevivencia:setType("number");
    obj.gradsobrevivencia:setMin(-999);
    obj.gradsobrevivencia:setMax(999);
    obj.gradsobrevivencia:setHorzTextAlign("center");
    obj.gradsobrevivencia:setFontSize(15.0);
    obj.gradsobrevivencia:setFontColor("black");
    lfm_setPropAsString(obj.gradsobrevivencia, "fontStyle",  "bold");
    obj.gradsobrevivencia:setHitTest(false);

    obj.rectangle183 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle183:setParent(obj.layout56);
    obj.rectangle183:setLeft(350);
    obj.rectangle183:setTop(8);
    obj.rectangle183:setColor("Black");
    obj.rectangle183:setWidth(20);
    obj.rectangle183:setHeight(15);
    obj.rectangle183:setXradius(2);
    obj.rectangle183:setYradius(2);
    obj.rectangle183:setName("rectangle183");

    obj.label179 = gui.fromHandle(_obj_newObject("label"));
    obj.label179:setParent(obj.layout56);
    obj.label179:setLeft(353);
    obj.label179:setTop(6);
    obj.label179:setWidth(20);
    obj.label179:setHeight(15);
    obj.label179:setFontSize(18);
    lfm_setPropAsString(obj.label179, "fontStyle",  "bold");
    obj.label179:setFontColor("white");
    obj.label179:setText("+");
    obj.label179:setName("label179");

    obj.modsobrevivencia = gui.fromHandle(_obj_newObject("edit"));
    obj.modsobrevivencia:setParent(obj.layout56);
    obj.modsobrevivencia:setLeft(373);
    obj.modsobrevivencia:setTop(3);
    obj.modsobrevivencia:setWidth(40);
    obj.modsobrevivencia:setHeight(25);
    obj.modsobrevivencia:setName("modsobrevivencia");
    obj.modsobrevivencia:setField("modsobrevivencia");
    obj.modsobrevivencia:setType("number");
    obj.modsobrevivencia:setMin(-999);
    obj.modsobrevivencia:setMax(999);
    obj.modsobrevivencia:setHorzTextAlign("center");
    obj.modsobrevivencia:setFontSize(15.0);
    obj.modsobrevivencia:setFontColor("black");
    lfm_setPropAsString(obj.modsobrevivencia, "fontStyle",  "bold");
    obj.modsobrevivencia:setHitTest(false);

    obj.rectangle184 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle184:setParent(obj.layout56);
    obj.rectangle184:setLeft(416);
    obj.rectangle184:setTop(8);
    obj.rectangle184:setColor("Black");
    obj.rectangle184:setWidth(20);
    obj.rectangle184:setHeight(15);
    obj.rectangle184:setXradius(2);
    obj.rectangle184:setYradius(2);
    obj.rectangle184:setName("rectangle184");

    obj.label180 = gui.fromHandle(_obj_newObject("label"));
    obj.label180:setParent(obj.layout56);
    obj.label180:setLeft(419);
    obj.label180:setTop(6);
    obj.label180:setWidth(20);
    obj.label180:setHeight(15);
    obj.label180:setFontSize(18);
    lfm_setPropAsString(obj.label180, "fontStyle",  "bold");
    obj.label180:setFontColor("white");
    obj.label180:setText("+");
    obj.label180:setName("label180");

    obj.outrossobrevivencia = gui.fromHandle(_obj_newObject("edit"));
    obj.outrossobrevivencia:setParent(obj.layout56);
    obj.outrossobrevivencia:setLeft(439);
    obj.outrossobrevivencia:setTop(3);
    obj.outrossobrevivencia:setWidth(40);
    obj.outrossobrevivencia:setHeight(25);
    obj.outrossobrevivencia:setName("outrossobrevivencia");
    obj.outrossobrevivencia:setField("outrossobrevivencia");
    obj.outrossobrevivencia:setType("number");
    obj.outrossobrevivencia:setMin(-999);
    obj.outrossobrevivencia:setMax(999);
    obj.outrossobrevivencia:setHorzTextAlign("center");
    obj.outrossobrevivencia:setFontSize(15.0);
    obj.outrossobrevivencia:setFontColor("black");
    lfm_setPropAsString(obj.outrossobrevivencia, "fontStyle",  "bold");

    obj.layout57 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.scrollBox2);
    obj.layout57:setLeft(470);
    obj.layout57:setTop(10);
    obj.layout57:setWidth(545);
    obj.layout57:setHeight(700);
    obj.layout57:setName("layout57");

    obj.rectangle185 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle185:setParent(obj.layout57);
    obj.rectangle185:setLeft(115);
    obj.rectangle185:setTop(5);
    obj.rectangle185:setColor("Black");
    obj.rectangle185:setWidth(45);
    obj.rectangle185:setHeight(15);
    obj.rectangle185:setXradius(2);
    obj.rectangle185:setYradius(2);
    obj.rectangle185:setName("rectangle185");

    obj.label181 = gui.fromHandle(_obj_newObject("label"));
    obj.label181:setParent(obj.layout57);
    obj.label181:setLeft(118);
    obj.label181:setTop(8);
    obj.label181:setWidth(58);
    obj.label181:setHeight(8);
    obj.label181:setFontSize(10);
    lfm_setPropAsString(obj.label181, "fontStyle",  "bold");
    obj.label181:setFontColor("white");
    obj.label181:setText("Talentos");
    obj.label181:setName("label181");

    obj.rectangle186 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle186:setParent(obj.layout57);
    obj.rectangle186:setLeft(357);
    obj.rectangle186:setTop(5);
    obj.rectangle186:setColor("Black");
    obj.rectangle186:setWidth(105);
    obj.rectangle186:setHeight(15);
    obj.rectangle186:setXradius(2);
    obj.rectangle186:setYradius(2);
    obj.rectangle186:setName("rectangle186");

    obj.label182 = gui.fromHandle(_obj_newObject("label"));
    obj.label182:setParent(obj.layout57);
    obj.label182:setLeft(360);
    obj.label182:setTop(8);
    obj.label182:setWidth(98);
    obj.label182:setHeight(8);
    obj.label182:setFontSize(10);
    lfm_setPropAsString(obj.label182, "fontStyle",  "bold");
    obj.label182:setFontColor("white");
    obj.label182:setText("Habilidades de Raça");
    obj.label182:setName("label182");

    obj.rectangle187 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle187:setParent(obj.layout57);
    obj.rectangle187:setLeft(357);
    obj.rectangle187:setTop(338);
    obj.rectangle187:setColor("Black");
    obj.rectangle187:setWidth(107);
    obj.rectangle187:setHeight(15);
    obj.rectangle187:setXradius(2);
    obj.rectangle187:setYradius(2);
    obj.rectangle187:setName("rectangle187");

    obj.label183 = gui.fromHandle(_obj_newObject("label"));
    obj.label183:setParent(obj.layout57);
    obj.label183:setLeft(360);
    obj.label183:setTop(341);
    obj.label183:setWidth(115);
    obj.label183:setHeight(8);
    obj.label183:setFontSize(10);
    lfm_setPropAsString(obj.label183, "fontStyle",  "bold");
    obj.label183:setFontColor("white");
    obj.label183:setText("Habilidades de Classe");
    obj.label183:setName("label183");

    obj.layout58 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.layout57);
    obj.layout58:setLeft(15);
    obj.layout58:setTop(17);
    obj.layout58:setWidth(255);
    obj.layout58:setHeight(671);
    obj.layout58:setName("layout58");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout58);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("talentos");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setName("textEditor1");

    obj.layout59 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout57);
    obj.layout59:setLeft(275);
    obj.layout59:setTop(17);
    obj.layout59:setWidth(260);
    obj.layout59:setHeight(317);
    obj.layout59:setName("layout59");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout59);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("hraca");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setFontColor("black");
    obj.textEditor2:setName("textEditor2");

    obj.layout60 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout57);
    obj.layout60:setLeft(275);
    obj.layout60:setTop(350);
    obj.layout60:setWidth(260);
    obj.layout60:setHeight(339);
    obj.layout60:setName("layout60");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout60);
    obj.textEditor3:setAlign("client");
    obj.textEditor3:setField("hclasse");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setFontColor("black");
    obj.textEditor3:setName("textEditor3");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.Tormenta02);
    obj.dataLink2:setFields({'penarmadura', 'penescudo', 'outrosacrobacia', 'outrosadestrar', 'outrosatletismo', 'outrosatuacao1', 'outrosatuacao2', 'outrosjogatina', 'outroscavalgar', 'outrosconhecimento1', 'outrosconhecimento2', 'outroscura', 'outrosdiplomacia', 'outrosenganacao', 'outrosfurtividade', 'outrosimagia', 'outrosiniciativa', 'outrosintimidacao', 'outrosintuicao', 'outrosladinagem', 'outrosoinformacao', 'outrosoficio1', 'outrosoficio2', 'outrosmeditacao', 'outrospercepcao', 'outrossobrevivencia', 'cbxacrobacia', 'cbxadestrar', 'cbxatletismo', 'cbxatuacao1', 'cbxatuacao2', 'cbxjogatina', 'cbxcavalgar', 'cbxconhecimento1', 'cbxconhecimento2', 'cbxcura', 'cbxdiplomacia', 'cbxenganacao', 'cbxfurtividade', 'cbximagia', 'cbxiniciativa', 'cbxintimidacao', 'cbxintuicao', 'cbxladinagem', 'cbxoinformacao', 'cbxoficio1', 'cbxoficio2', 'cbxmeditacao', 'cbxpercepcao', 'cbxsobrevivencia', 'forca', 'modforca', 'destreza', 'moddestreza', 'constituicao', 'modconstituicao', 'inteligencia', 'modinteligencia', 'sabedoria', 'modsabedoria', 'carisma', 'modcarisma', 'nivel', 'intimidar', 'hab_acrobacia', 'hab_adestrar', 'hab_atletismo', 'hab_atuacao1', 'hab_atuacao2', 'hab_jogatina', 'hab_cavalgar', 'hab_conhecimento1', 'hab_conhecimento2', 'hab_cura', 'hab_diplomacia', 'hab_enganacao', 'hab_furtividade', 'hab_imagia', 'hab_iniciativa', 'hab_intimidacao', 'hab_intuicao', 'hab_ladinagem', 'hab_oinformacao', 'hab_oficio1', 'hab_oficio2', 'hab_meditacao', 'hab_percepcao', 'hab_sobrevivencia'});
    obj.dataLink2:setName("dataLink2");


			-- garante que as funções existam sempre
			if TRPG_getMod == nil then
				function TRPG_getMod(sheet, habCode, defaultValue)
					local c = tostring(habCode or ""):upper()
					if c == "FOR" then return sheet.modforca or 0 end
					if c == "DES" then return sheet.moddestreza or 0 end
					if c == "CON" then return sheet.modconstituicao or 0 end
					if c == "INT" then return sheet.modinteligencia or 0 end
					if c == "SAB" then return sheet.modsabedoria or 0 end
					if c == "CAR" then return sheet.modcarisma or 0 end
					return defaultValue or 0
				end
			end

			local function normalizeChooseResult(a, b)
				if type(a) == "number" then return a end
				if type(b) == "number" then return b end
				if type(a) == "table" then
					return tonumber(a.index or a.selectedIndex or a.idx or a[1])
				end
				return nil
			end

			function TRPG_chooseHab(sheet, fieldName, defaultCode)
				if sheet == nil then return end
				local items  = {"FOR", "DES", "CON", "INT", "SAB", "CAR", "DEFAULT"}
				local labels = {
					"Força (FOR)",
					"Destreza (DES)",
					"Constituição (CON)",
					"Inteligência (INT)",
					"Sabedoria (SAB)",
					"Carisma (CAR)",
					"Padrão (" .. tostring(defaultCode) .. ")"
				}
				local current = tostring(sheet[fieldName] or ""):upper()
				local defaultIndex = 1
				for i = 1, #items do
					if items[i] == current then defaultIndex = i break end
				end
				Dialogs.choose("Habilidade", labels,
					function(a, b)
						local idx = normalizeChooseResult(a, b)
						if idx == nil then return end
						local chosenCode = items[idx] or "DEFAULT"
						if chosenCode == "DEFAULT" then
							sheet[fieldName] = defaultCode
						else
							sheet[fieldName] = chosenCode
						end
						sheet.__forceRecalc = true
						recalcAll2()
						sheet.__forceRecalc = false
						sheet.__recalc = (tonumber(sheet.__recalc) or 0) + 1
					end,
					defaultIndex
				)
				if sheet[fieldName] == nil or sheet[fieldName] == "" then
					sheet[fieldName] = defaultCode
				end
			end

			function desCalculos2()
				if self == nil or self.sheet == nil then return end
				local manual = (self.sheet.calculos == true)
				local function ht(name, val)
					local o = self[name]
					if o ~= nil then o.hitTest = val end
				end
				ht("gradacrobacia", manual)
				ht("gradadestrar", manual)
				ht("gradatletismo", manual)
				ht("gradatuacao1", manual)
				ht("gradatuacao2", manual)
				ht("gradcavalgar", manual)
				ht("gradconhecimento1", manual)
				ht("gradconhecimento2", manual)
				ht("gradcura", manual)
				ht("graddiplomacia", manual)
				ht("gradenganacao", manual)
				ht("gradfurtividade", manual)
				ht("gradimagia", manual)
				ht("gradiniciativa", manual)
				ht("gradintimidacao", manual)
				ht("gradintuicao", manual)
				ht("gradjogatina", manual)
				ht("gradladinagem", manual)
				ht("gradmeditacao", manual)
				ht("gradoficio1", manual)
				ht("gradoficio2", manual)
				ht("gradoinformacao", manual)
				ht("gradpercepcao", manual)
				ht("gradsobrevivencia", manual)
				ht("modacrobacia", manual)
				ht("modadestrar", manual)
				ht("modatletismo", manual)
				ht("modatuacao1", manual)
				ht("modatuacao2", manual)
				ht("modcavalgar", manual)
				ht("modconhecimento1", manual)
				ht("modconhecimento2", manual)
				ht("modcura", manual)
				ht("moddiplomacia", manual)
				ht("modenganacao", manual)
				ht("modfurtividade", manual)
				ht("modimagia", manual)
				ht("modiniciativa", manual)
				ht("modintimidacao", manual)
				ht("modintuicao", manual)
				ht("modjogatina", manual)
				ht("modladinagem", manual)
				ht("modmeditacao", manual)
				ht("modoficio1", manual)
				ht("modoficio2", manual)
				ht("modoinformacao", manual)
				ht("modpercepcao", manual)
				ht("modsobrevivencia", manual)
				ht("totalacrobacia", manual)
				ht("totaladestrar", manual)
				ht("totalatletismo", manual)
				ht("totalatuacao1", manual)
				ht("totalatuacao2", manual)
				ht("totalcavalgar", manual)
				ht("totalconhecimento1", manual)
				ht("totalconhecimento2", manual)
				ht("totalcura", manual)
				ht("totaldiplomacia", manual)
				ht("totalenganacao", manual)
				ht("totalfurtividade", manual)
				ht("totalimagia", manual)
				ht("totaliniciativa", manual)
				ht("totalintimidacao", manual)
				ht("totalintuicao", manual)
				ht("totaljogatina", manual)
				ht("totalladinagem", manual)
				ht("totalmeditacao", manual)
				ht("totaloficio1", manual)
				ht("totaloficio2", manual)
				ht("totaloinformacao", manual)
				ht("totalpercepcao", manual)
				ht("totalsobrevivencia", manual)
			end

			function recalcAll2()
				local sheet = self.sheet or sheet
				if sheet == nil then return end
				if sheet.calculos == true and sheet.__forceRecalc ~= true then
					return
				end
				local function N(v, d)
					local n = tonumber(v)
					if n == nil then return d or 0 end
					return n
				end
				-- metadenivel pode vir da Tela 1; garante aqui também
				sheet.metadenivel = math.floor(N(sheet.nivel) / 2)
				local penA = math.floor(N(sheet.penarmadura))
				local penE = math.floor(N(sheet.penescudo))

				if sheet.hab_acrobacia == nil or sheet.hab_acrobacia == "" then sheet.hab_acrobacia = "DES" end
				if sheet.hab_adestrar == nil or sheet.hab_adestrar == "" then sheet.hab_adestrar = "CAR" end
				if sheet.hab_atletismo == nil or sheet.hab_atletismo == "" then sheet.hab_atletismo = "FOR" end
				if sheet.hab_atuacao1 == nil or sheet.hab_atuacao1 == "" then sheet.hab_atuacao1 = "CAR" end
				if sheet.hab_atuacao2 == nil or sheet.hab_atuacao2 == "" then sheet.hab_atuacao2 = "CAR" end
				if sheet.hab_jogatina == nil or sheet.hab_jogatina == "" then sheet.hab_jogatina = "CAR" end
				if sheet.hab_cavalgar == nil or sheet.hab_cavalgar == "" then sheet.hab_cavalgar = "DES" end
				if sheet.hab_conhecimento1 == nil or sheet.hab_conhecimento1 == "" then sheet.hab_conhecimento1 = "INT" end
				if sheet.hab_conhecimento2 == nil or sheet.hab_conhecimento2 == "" then sheet.hab_conhecimento2 = "INT" end
				if sheet.hab_cura == nil or sheet.hab_cura == "" then sheet.hab_cura = "SAB" end
				if sheet.hab_diplomacia == nil or sheet.hab_diplomacia == "" then sheet.hab_diplomacia = "CAR" end
				if sheet.hab_enganacao == nil or sheet.hab_enganacao == "" then sheet.hab_enganacao = "CAR" end
				if sheet.hab_furtividade == nil or sheet.hab_furtividade == "" then sheet.hab_furtividade = "DES" end
				if sheet.hab_imagia == nil or sheet.hab_imagia == "" then sheet.hab_imagia = "INT" end
				if sheet.hab_iniciativa == nil or sheet.hab_iniciativa == "" then sheet.hab_iniciativa = "DES" end
				if sheet.hab_intimidacao == nil or sheet.hab_intimidacao == "" then sheet.hab_intimidacao = "CAR" end
				if sheet.hab_intuicao == nil or sheet.hab_intuicao == "" then sheet.hab_intuicao = "SAB" end
				if sheet.hab_ladinagem == nil or sheet.hab_ladinagem == "" then sheet.hab_ladinagem = "DES" end
				if sheet.hab_oinformacao == nil or sheet.hab_oinformacao == "" then sheet.hab_oinformacao = "CAR" end
				if sheet.hab_oficio1 == nil or sheet.hab_oficio1 == "" then sheet.hab_oficio1 = "INT" end
				if sheet.hab_oficio2 == nil or sheet.hab_oficio2 == "" then sheet.hab_oficio2 = "INT" end
				if sheet.hab_meditacao == nil or sheet.hab_meditacao == "" then sheet.hab_meditacao = "SAB" end
				if sheet.hab_percepcao == nil or sheet.hab_percepcao == "" then sheet.hab_percepcao = "SAB" end
				if sheet.hab_sobrevivencia == nil or sheet.hab_sobrevivencia == "" then sheet.hab_sobrevivencia = "SAB" end

				local nivel = math.floor(N(sheet.nivel))
				local metanivel = math.floor(N(sheet.metadenivel))

				sheet.modacrobacia = TRPG_getMod(sheet, sheet.hab_acrobacia, 0)
				if sheet.cbxacrobacia then
					sheet.gradacrobacia = math.floor(nivel + 3)
				else
					sheet.gradacrobacia = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradacrobacia)) + math.floor(N(sheet.modacrobacia)) + math.floor(N(sheet.outrosacrobacia))
				total = total - penA - penE
				sheet.totalacrobacia = total

				sheet.modadestrar = TRPG_getMod(sheet, sheet.hab_adestrar, 0)
				if sheet.cbxadestrar then
					sheet.gradadestrar = math.floor(nivel + 3)
				else
					sheet.gradadestrar = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradadestrar)) + math.floor(N(sheet.modadestrar)) + math.floor(N(sheet.outrosadestrar))
				sheet.totaladestrar = total

				sheet.modatletismo = TRPG_getMod(sheet, sheet.hab_atletismo, 0)
				if sheet.cbxatletismo then
					sheet.gradatletismo = math.floor(nivel + 3)
				else
					sheet.gradatletismo = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradatletismo)) + math.floor(N(sheet.modatletismo)) + math.floor(N(sheet.outrosatletismo))
				total = total - penA - penE
				sheet.totalatletismo = total

				sheet.modatuacao1 = TRPG_getMod(sheet, sheet.hab_atuacao1, 0)
				if sheet.cbxatuacao1 then
					sheet.gradatuacao1 = math.floor(nivel + 3)
				else
					sheet.gradatuacao1 = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradatuacao1)) + math.floor(N(sheet.modatuacao1)) + math.floor(N(sheet.outrosatuacao1))
				sheet.totalatuacao1 = total

				sheet.modatuacao2 = TRPG_getMod(sheet, sheet.hab_atuacao2, 0)
				if sheet.cbxatuacao2 then
					sheet.gradatuacao2 = math.floor(nivel + 3)
				else
					sheet.gradatuacao2 = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradatuacao2)) + math.floor(N(sheet.modatuacao2)) + math.floor(N(sheet.outrosatuacao2))
				sheet.totalatuacao2 = total

				sheet.modjogatina = TRPG_getMod(sheet, sheet.hab_jogatina, 0)
				if sheet.cbxjogatina then
					sheet.gradjogatina = math.floor(nivel + 3)
				else
					sheet.gradjogatina = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradjogatina)) + math.floor(N(sheet.modjogatina)) + math.floor(N(sheet.outrosjogatina))
				sheet.totaljogatina = total

				sheet.modcavalgar = TRPG_getMod(sheet, sheet.hab_cavalgar, 0)
				if sheet.cbxcavalgar then
					sheet.gradcavalgar = math.floor(nivel + 3)
				else
					sheet.gradcavalgar = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradcavalgar)) + math.floor(N(sheet.modcavalgar)) + math.floor(N(sheet.outroscavalgar))
				sheet.totalcavalgar = total

				sheet.modconhecimento1 = TRPG_getMod(sheet, sheet.hab_conhecimento1, 0)
				if sheet.cbxconhecimento1 then
					sheet.gradconhecimento1 = math.floor(nivel + 3)
				else
					sheet.gradconhecimento1 = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradconhecimento1)) + math.floor(N(sheet.modconhecimento1)) + math.floor(N(sheet.outrosconhecimento1))
				sheet.totalconhecimento1 = total

				sheet.modconhecimento2 = TRPG_getMod(sheet, sheet.hab_conhecimento2, 0)
				if sheet.cbxconhecimento2 then
					sheet.gradconhecimento2 = math.floor(nivel + 3)
				else
					sheet.gradconhecimento2 = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradconhecimento2)) + math.floor(N(sheet.modconhecimento2)) + math.floor(N(sheet.outrosconhecimento2))
				sheet.totalconhecimento2 = total

				sheet.modcura = TRPG_getMod(sheet, sheet.hab_cura, 0)
				if sheet.cbxcura then
					sheet.gradcura = math.floor(nivel + 3)
				else
					sheet.gradcura = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradcura)) + math.floor(N(sheet.modcura)) + math.floor(N(sheet.outroscura))
				sheet.totalcura = total

				sheet.moddiplomacia = TRPG_getMod(sheet, sheet.hab_diplomacia, 0)
				if sheet.cbxdiplomacia then
					sheet.graddiplomacia = math.floor(nivel + 3)
				else
					sheet.graddiplomacia = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.graddiplomacia)) + math.floor(N(sheet.moddiplomacia)) + math.floor(N(sheet.outrosdiplomacia))
				sheet.totaldiplomacia = total

				sheet.modenganacao = TRPG_getMod(sheet, sheet.hab_enganacao, 0)
				if sheet.cbxenganacao then
					sheet.gradenganacao = math.floor(nivel + 3)
				else
					sheet.gradenganacao = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradenganacao)) + math.floor(N(sheet.modenganacao)) + math.floor(N(sheet.outrosenganacao))
				sheet.totalenganacao = total

				sheet.modfurtividade = TRPG_getMod(sheet, sheet.hab_furtividade, 0)
				if sheet.cbxfurtividade then
					sheet.gradfurtividade = math.floor(nivel + 3)
				else
					sheet.gradfurtividade = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradfurtividade)) + math.floor(N(sheet.modfurtividade)) + math.floor(N(sheet.outrosfurtividade))
				total = total - penA - penE
				sheet.totalfurtividade = total

				sheet.modimagia = TRPG_getMod(sheet, sheet.hab_imagia, 0)
				if sheet.cbximagia then
					sheet.gradimagia = math.floor(nivel + 3)
				else
					sheet.gradimagia = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradimagia)) + math.floor(N(sheet.modimagia)) + math.floor(N(sheet.outrosimagia))
				sheet.totalimagia = total

				sheet.modiniciativa = TRPG_getMod(sheet, sheet.hab_iniciativa, 0)
				if sheet.cbxiniciativa then
					sheet.gradiniciativa = math.floor(nivel + 3)
				else
					sheet.gradiniciativa = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradiniciativa)) + math.floor(N(sheet.modiniciativa)) + math.floor(N(sheet.outrosiniciativa))
				sheet.totaliniciativa = total

				sheet.modintimidacao = TRPG_getMod(sheet, sheet.hab_intimidacao, 0)
				if sheet.cbxintimidacao then
					sheet.gradintimidacao = math.floor(nivel + 3)
				else
					sheet.gradintimidacao = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradintimidacao)) + math.floor(N(sheet.modintimidacao)) + math.floor(N(sheet.outrosintimidacao))
				sheet.totalintimidacao = total

				sheet.modintuicao = TRPG_getMod(sheet, sheet.hab_intuicao, 0)
				if sheet.cbxintuicao then
					sheet.gradintuicao = math.floor(nivel + 3)
				else
					sheet.gradintuicao = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradintuicao)) + math.floor(N(sheet.modintuicao)) + math.floor(N(sheet.outrosintuicao))
				sheet.totalintuicao = total

				sheet.modladinagem = TRPG_getMod(sheet, sheet.hab_ladinagem, 0)
				if sheet.cbxladinagem then
					sheet.gradladinagem = math.floor(nivel + 3)
				else
					sheet.gradladinagem = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradladinagem)) + math.floor(N(sheet.modladinagem)) + math.floor(N(sheet.outrosladinagem))
				total = total - penA - penE
				sheet.totalladinagem = total

				sheet.modoinformacao = TRPG_getMod(sheet, sheet.hab_oinformacao, 0)
				if sheet.cbxoinformacao then
					sheet.gradoinformacao = math.floor(nivel + 3)
				else
					sheet.gradoinformacao = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradoinformacao)) + math.floor(N(sheet.modoinformacao)) + math.floor(N(sheet.outrosoinformacao))
				sheet.totaloinformacao = total

				sheet.modoficio1 = TRPG_getMod(sheet, sheet.hab_oficio1, 0)
				if sheet.cbxoficio1 then
					sheet.gradoficio1 = math.floor(nivel + 3)
				else
					sheet.gradoficio1 = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradoficio1)) + math.floor(N(sheet.modoficio1)) + math.floor(N(sheet.outrosoficio1))
				sheet.totaloficio1 = total

				sheet.modoficio2 = TRPG_getMod(sheet, sheet.hab_oficio2, 0)
				if sheet.cbxoficio2 then
					sheet.gradoficio2 = math.floor(nivel + 3)
				else
					sheet.gradoficio2 = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradoficio2)) + math.floor(N(sheet.modoficio2)) + math.floor(N(sheet.outrosoficio2))
				sheet.totaloficio2 = total

				sheet.modmeditacao = TRPG_getMod(sheet, sheet.hab_meditacao, 0)
				if sheet.cbxmeditacao then
					sheet.gradmeditacao = math.floor(nivel + 3)
				else
					sheet.gradmeditacao = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradmeditacao)) + math.floor(N(sheet.modmeditacao)) + math.floor(N(sheet.outrosmeditacao))
				sheet.totalmeditacao = total

				sheet.modpercepcao = TRPG_getMod(sheet, sheet.hab_percepcao, 0)
				if sheet.cbxpercepcao then
					sheet.gradpercepcao = math.floor(nivel + 3)
				else
					sheet.gradpercepcao = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradpercepcao)) + math.floor(N(sheet.modpercepcao)) + math.floor(N(sheet.outrospercepcao))
				sheet.totalpercepcao = total

				sheet.modsobrevivencia = TRPG_getMod(sheet, sheet.hab_sobrevivencia, 0)
				if sheet.cbxsobrevivencia then
					sheet.gradsobrevivencia = math.floor(nivel + 3)
				else
					sheet.gradsobrevivencia = math.floor(metanivel)
				end
				local total = math.floor(N(sheet.gradsobrevivencia)) + math.floor(N(sheet.modsobrevivencia)) + math.floor(N(sheet.outrossobrevivencia))
				sheet.totalsobrevivencia = total

			end

			function onDataLinkChange()
				desCalculos2()
				recalcAll2()
			end

		


    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamentos");
    obj.tab3:setName("tab3");

    obj.Tormenta03 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta03:setParent(obj.tab3);
    obj.Tormenta03:setName("Tormenta03");
    obj.Tormenta03:setAlign("client");
    obj.Tormenta03:setTheme("light");
    obj.Tormenta03:setLockWhileNodeIsLoading(true);

    obj.scrollBox3 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.Tormenta03);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.rectangle188 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle188:setParent(obj.scrollBox3);
    obj.rectangle188:setWidth(1010);
    obj.rectangle188:setHeight(700);
    obj.rectangle188:setColor("LightGray");
    obj.rectangle188:setXradius(10);
    obj.rectangle188:setYradius(10);
    obj.rectangle188:setName("rectangle188");

    obj.layout61 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.scrollBox3);
    obj.layout61:setLeft(10);
    obj.layout61:setTop(13);
    obj.layout61:setWidth(585);
    obj.layout61:setHeight(677);
    obj.layout61:setName("layout61");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout61);
    obj.image3:setLeft(131);
    obj.image3:setTop(60);
    obj.image3:setWidth(274);
    obj.image3:setHeight(500);
    obj.image3:setSRC("/TRPG/img/silhouette.png");
    obj.image3:setName("image3");

    obj.layout62 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout61);
    obj.layout62:setLeft(19);
    obj.layout62:setTop(59);
    obj.layout62:setWidth(200);
    obj.layout62:setHeight(125);
    obj.layout62:setName("layout62");

    obj.rectangle189 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle189:setParent(obj.layout62);
    obj.rectangle189:setLeft(6);
    obj.rectangle189:setTop(17);
    obj.rectangle189:setColor("Black");
    obj.rectangle189:setWidth(104);
    obj.rectangle189:setHeight(15);
    obj.rectangle189:setXradius(2);
    obj.rectangle189:setYradius(2);
    obj.rectangle189:setName("rectangle189");

    obj.label184 = gui.fromHandle(_obj_newObject("label"));
    obj.label184:setParent(obj.layout62);
    obj.label184:setLeft(9);
    obj.label184:setTop(16);
    obj.label184:setWidth(98);
    obj.label184:setHeight(15);
    obj.label184:setFontSize(13);
    obj.label184:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label184, "fontStyle",  "bold");
    obj.label184:setFontColor("white");
    obj.label184:setText("Armadura");
    obj.label184:setName("label184");

    obj.rectangle190 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle190:setParent(obj.layout62);
    obj.rectangle190:setLeft(1);
    obj.rectangle190:setTop(31);
    obj.rectangle190:setWidth(200);
    obj.rectangle190:setHeight(90);
    obj.rectangle190:setColor("Gray");
    obj.rectangle190:setXradius(2);
    obj.rectangle190:setYradius(2);
    obj.rectangle190:setName("rectangle190");

    obj.narmadura = gui.fromHandle(_obj_newObject("edit"));
    obj.narmadura:setParent(obj.layout62);
    obj.narmadura:setLeft(3);
    obj.narmadura:setTop(33);
    obj.narmadura:setWidth(195);
    obj.narmadura:setHeight(25);
    obj.narmadura:setName("narmadura");
    obj.narmadura:setField("narmadura");
    obj.narmadura:setHorzTextAlign("center");
    obj.narmadura:setFontColor("black");
    lfm_setPropAsString(obj.narmadura, "fontStyle",  "bold");

    obj.label185 = gui.fromHandle(_obj_newObject("label"));
    obj.label185:setParent(obj.layout62);
    obj.label185:setLeft(18);
    obj.label185:setTop(63);
    obj.label185:setWidth(30);
    obj.label185:setHeight(15);
    obj.label185:setFontSize(13);
    obj.label185:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label185, "fontStyle",  "bold");
    obj.label185:setFontColor("black");
    obj.label185:setText("CA");
    obj.label185:setName("label185");

    obj.caarmadura = gui.fromHandle(_obj_newObject("edit"));
    obj.caarmadura:setParent(obj.layout62);
    obj.caarmadura:setLeft(13);
    obj.caarmadura:setTop(84);
    obj.caarmadura:setWidth(40);
    obj.caarmadura:setHeight(25);
    obj.caarmadura:setName("caarmadura");
    obj.caarmadura:setField("ca3");
    obj.caarmadura:setType("number");
    obj.caarmadura:setMin(-999);
    obj.caarmadura:setMax(999);
    obj.caarmadura:setHorzTextAlign("center");
    obj.caarmadura:setFontColor("black");
    obj.caarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.caarmadura, "fontStyle",  "bold");

    obj.label186 = gui.fromHandle(_obj_newObject("label"));
    obj.label186:setParent(obj.layout62);
    obj.label186:setLeft(63);
    obj.label186:setTop(63);
    obj.label186:setWidth(30);
    obj.label186:setHeight(15);
    obj.label186:setFontSize(13);
    obj.label186:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label186, "fontStyle",  "bold");
    obj.label186:setFontColor("black");
    obj.label186:setText("PEN");
    obj.label186:setName("label186");

    obj.penarmadura = gui.fromHandle(_obj_newObject("edit"));
    obj.penarmadura:setParent(obj.layout62);
    obj.penarmadura:setLeft(58);
    obj.penarmadura:setTop(84);
    obj.penarmadura:setWidth(40);
    obj.penarmadura:setHeight(25);
    obj.penarmadura:setName("penarmadura");
    obj.penarmadura:setField("penarmadura");
    obj.penarmadura:setType("number");
    obj.penarmadura:setMin(0);
    obj.penarmadura:setMax(999);
    obj.penarmadura:setHorzTextAlign("center");
    obj.penarmadura:setFontColor("black");
    obj.penarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.penarmadura, "fontStyle",  "bold");

    obj.label187 = gui.fromHandle(_obj_newObject("label"));
    obj.label187:setParent(obj.layout62);
    obj.label187:setLeft(101);
    obj.label187:setTop(63);
    obj.label187:setWidth(45);
    obj.label187:setHeight(15);
    obj.label187:setFontSize(13);
    obj.label187:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label187, "fontStyle",  "bold");
    obj.label187:setFontColor("black");
    obj.label187:setText("DES M.");
    obj.label187:setName("label187");

    obj.desmnarmadura = gui.fromHandle(_obj_newObject("edit"));
    obj.desmnarmadura:setParent(obj.layout62);
    obj.desmnarmadura:setLeft(103);
    obj.desmnarmadura:setTop(84);
    obj.desmnarmadura:setWidth(40);
    obj.desmnarmadura:setHeight(25);
    obj.desmnarmadura:setName("desmnarmadura");
    obj.desmnarmadura:setField("desmarmadura");
    obj.desmnarmadura:setType("number");
    obj.desmnarmadura:setMin(-999);
    obj.desmnarmadura:setMax(999);
    obj.desmnarmadura:setHorzTextAlign("center");
    obj.desmnarmadura:setFontColor("black");
    obj.desmnarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.desmnarmadura, "fontStyle",  "bold");

    obj.label188 = gui.fromHandle(_obj_newObject("label"));
    obj.label188:setParent(obj.layout62);
    obj.label188:setLeft(154);
    obj.label188:setTop(63);
    obj.label188:setWidth(30);
    obj.label188:setHeight(15);
    obj.label188:setFontSize(13);
    obj.label188:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label188, "fontStyle",  "bold");
    obj.label188:setFontColor("black");
    obj.label188:setText("F. M.");
    obj.label188:setName("label188");

    obj.falhamarmadura = gui.fromHandle(_obj_newObject("edit"));
    obj.falhamarmadura:setParent(obj.layout62);
    obj.falhamarmadura:setLeft(148);
    obj.falhamarmadura:setTop(84);
    obj.falhamarmadura:setWidth(40);
    obj.falhamarmadura:setHeight(25);
    obj.falhamarmadura:setName("falhamarmadura");
    obj.falhamarmadura:setField("falhamarmadura");
    obj.falhamarmadura:setType("number");
    obj.falhamarmadura:setMin(-999);
    obj.falhamarmadura:setMax(999);
    obj.falhamarmadura:setHorzTextAlign("center");
    obj.falhamarmadura:setFontColor("black");
    obj.falhamarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.falhamarmadura, "fontStyle",  "bold");

    obj.layout63 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.layout61);
    obj.layout63:setLeft(370);
    obj.layout63:setTop(229);
    obj.layout63:setWidth(200);
    obj.layout63:setHeight(125);
    obj.layout63:setName("layout63");

    obj.rectangle191 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle191:setParent(obj.layout63);
    obj.rectangle191:setLeft(26);
    obj.rectangle191:setTop(17);
    obj.rectangle191:setColor("Black");
    obj.rectangle191:setWidth(104);
    obj.rectangle191:setHeight(15);
    obj.rectangle191:setXradius(2);
    obj.rectangle191:setYradius(2);
    obj.rectangle191:setName("rectangle191");

    obj.label189 = gui.fromHandle(_obj_newObject("label"));
    obj.label189:setParent(obj.layout63);
    obj.label189:setLeft(29);
    obj.label189:setTop(16);
    obj.label189:setWidth(98);
    obj.label189:setHeight(15);
    obj.label189:setFontSize(13);
    obj.label189:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label189, "fontStyle",  "bold");
    obj.label189:setFontColor("white");
    obj.label189:setText("Escudo");
    obj.label189:setName("label189");

    obj.rectangle192 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle192:setParent(obj.layout63);
    obj.rectangle192:setLeft(1);
    obj.rectangle192:setTop(31);
    obj.rectangle192:setWidth(200);
    obj.rectangle192:setHeight(90);
    obj.rectangle192:setColor("Gray");
    obj.rectangle192:setXradius(2);
    obj.rectangle192:setYradius(2);
    obj.rectangle192:setName("rectangle192");

    obj.nescudo = gui.fromHandle(_obj_newObject("edit"));
    obj.nescudo:setParent(obj.layout63);
    obj.nescudo:setLeft(3);
    obj.nescudo:setTop(33);
    obj.nescudo:setWidth(195);
    obj.nescudo:setHeight(25);
    obj.nescudo:setName("nescudo");
    obj.nescudo:setField("nescudo");
    obj.nescudo:setFontColor("black");
    obj.nescudo:setHorzTextAlign("center");
    lfm_setPropAsString(obj.nescudo, "fontStyle",  "bold");

    obj.label190 = gui.fromHandle(_obj_newObject("label"));
    obj.label190:setParent(obj.layout63);
    obj.label190:setLeft(41);
    obj.label190:setTop(63);
    obj.label190:setWidth(30);
    obj.label190:setHeight(15);
    obj.label190:setFontSize(13);
    obj.label190:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label190, "fontStyle",  "bold");
    obj.label190:setFontColor("black");
    obj.label190:setText("CA");
    obj.label190:setName("label190");

    obj.caescudo = gui.fromHandle(_obj_newObject("edit"));
    obj.caescudo:setParent(obj.layout63);
    obj.caescudo:setLeft(36);
    obj.caescudo:setTop(84);
    obj.caescudo:setWidth(40);
    obj.caescudo:setHeight(25);
    obj.caescudo:setName("caescudo");
    obj.caescudo:setField("ca4");
    obj.caescudo:setType("number");
    obj.caescudo:setMin(-999);
    obj.caescudo:setMax(999);
    obj.caescudo:setHorzTextAlign("center");
    obj.caescudo:setFontColor("black");
    obj.caescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.caescudo, "fontStyle",  "bold");

    obj.label191 = gui.fromHandle(_obj_newObject("label"));
    obj.label191:setParent(obj.layout63);
    obj.label191:setLeft(86);
    obj.label191:setTop(63);
    obj.label191:setWidth(30);
    obj.label191:setHeight(15);
    obj.label191:setFontSize(13);
    obj.label191:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label191, "fontStyle",  "bold");
    obj.label191:setFontColor("black");
    obj.label191:setText("PEN");
    obj.label191:setName("label191");

    obj.penescudo = gui.fromHandle(_obj_newObject("edit"));
    obj.penescudo:setParent(obj.layout63);
    obj.penescudo:setLeft(81);
    obj.penescudo:setTop(84);
    obj.penescudo:setWidth(40);
    obj.penescudo:setHeight(25);
    obj.penescudo:setName("penescudo");
    obj.penescudo:setField("penescudo");
    obj.penescudo:setType("number");
    obj.penescudo:setMin(0);
    obj.penescudo:setMax(999);
    obj.penescudo:setHorzTextAlign("center");
    obj.penescudo:setFontColor("black");
    obj.penescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.penescudo, "fontStyle",  "bold");

    obj.label192 = gui.fromHandle(_obj_newObject("label"));
    obj.label192:setParent(obj.layout63);
    obj.label192:setLeft(132);
    obj.label192:setTop(63);
    obj.label192:setWidth(30);
    obj.label192:setHeight(15);
    obj.label192:setFontSize(13);
    obj.label192:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label192, "fontStyle",  "bold");
    obj.label192:setFontColor("black");
    obj.label192:setText("F. M.");
    obj.label192:setName("label192");

    obj.falhamescudo = gui.fromHandle(_obj_newObject("edit"));
    obj.falhamescudo:setParent(obj.layout63);
    obj.falhamescudo:setLeft(126);
    obj.falhamescudo:setTop(84);
    obj.falhamescudo:setWidth(40);
    obj.falhamescudo:setHeight(25);
    obj.falhamescudo:setName("falhamescudo");
    obj.falhamescudo:setField("falhamescudo");
    obj.falhamescudo:setType("number");
    obj.falhamescudo:setMin(-999);
    obj.falhamescudo:setMax(999);
    obj.falhamescudo:setHorzTextAlign("center");
    obj.falhamescudo:setFontColor("black");
    obj.falhamescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.falhamescudo, "fontStyle",  "bold");

    obj.layout64 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.layout61);
    obj.layout64:setLeft(290);
    obj.layout64:setTop(0);
    obj.layout64:setWidth(200);
    obj.layout64:setHeight(125);
    obj.layout64:setName("layout64");

    obj.rectangle193 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle193:setParent(obj.layout64);
    obj.rectangle193:setLeft(6);
    obj.rectangle193:setTop(17);
    obj.rectangle193:setColor("Black");
    obj.rectangle193:setWidth(104);
    obj.rectangle193:setHeight(15);
    obj.rectangle193:setXradius(2);
    obj.rectangle193:setYradius(2);
    obj.rectangle193:setName("rectangle193");

    obj.label193 = gui.fromHandle(_obj_newObject("label"));
    obj.label193:setParent(obj.layout64);
    obj.label193:setLeft(9);
    obj.label193:setTop(16);
    obj.label193:setWidth(98);
    obj.label193:setHeight(15);
    obj.label193:setFontSize(13);
    obj.label193:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label193, "fontStyle",  "bold");
    obj.label193:setFontColor("white");
    obj.label193:setText("Cabeça");
    obj.label193:setName("label193");

    obj.rectangle194 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle194:setParent(obj.layout64);
    obj.rectangle194:setLeft(1);
    obj.rectangle194:setTop(31);
    obj.rectangle194:setWidth(200);
    obj.rectangle194:setHeight(90);
    obj.rectangle194:setColor("Gray");
    obj.rectangle194:setXradius(2);
    obj.rectangle194:setYradius(2);
    obj.rectangle194:setName("rectangle194");

    obj.ncabeca = gui.fromHandle(_obj_newObject("edit"));
    obj.ncabeca:setParent(obj.layout64);
    obj.ncabeca:setLeft(3);
    obj.ncabeca:setTop(33);
    obj.ncabeca:setWidth(195);
    obj.ncabeca:setHeight(25);
    obj.ncabeca:setName("ncabeca");
    obj.ncabeca:setField("ncabeca");
    obj.ncabeca:setHorzTextAlign("center");
    obj.ncabeca:setFontColor("black");
    lfm_setPropAsString(obj.ncabeca, "fontStyle",  "bold");

    obj.label194 = gui.fromHandle(_obj_newObject("label"));
    obj.label194:setParent(obj.layout64);
    obj.label194:setLeft(5);
    obj.label194:setTop(63);
    obj.label194:setWidth(90);
    obj.label194:setHeight(15);
    obj.label194:setFontSize(13);
    obj.label194:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label194, "fontStyle",  "bold");
    obj.label194:setFontColor("black");
    obj.label194:setText("Descrição:");
    obj.label194:setName("label194");

    obj.desccabeca = gui.fromHandle(_obj_newObject("edit"));
    obj.desccabeca:setParent(obj.layout64);
    obj.desccabeca:setLeft(3);
    obj.desccabeca:setTop(84);
    obj.desccabeca:setWidth(195);
    obj.desccabeca:setHeight(35);
    obj.desccabeca:setName("desccabeca");
    obj.desccabeca:setField("desccabeca");
    obj.desccabeca:setHorzTextAlign("leading");
    obj.desccabeca:setFontSize(12.0);
    obj.desccabeca:setFontColor("black");
    lfm_setPropAsString(obj.desccabeca, "fontStyle",  "bold");

    obj.layout65 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.layout61);
    obj.layout65:setLeft(350);
    obj.layout65:setTop(110);
    obj.layout65:setWidth(200);
    obj.layout65:setHeight(125);
    obj.layout65:setName("layout65");

    obj.rectangle195 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle195:setParent(obj.layout65);
    obj.rectangle195:setLeft(6);
    obj.rectangle195:setTop(17);
    obj.rectangle195:setColor("Black");
    obj.rectangle195:setWidth(104);
    obj.rectangle195:setHeight(15);
    obj.rectangle195:setXradius(2);
    obj.rectangle195:setYradius(2);
    obj.rectangle195:setName("rectangle195");

    obj.label195 = gui.fromHandle(_obj_newObject("label"));
    obj.label195:setParent(obj.layout65);
    obj.label195:setLeft(9);
    obj.label195:setTop(16);
    obj.label195:setWidth(98);
    obj.label195:setHeight(15);
    obj.label195:setFontSize(13);
    obj.label195:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label195, "fontStyle",  "bold");
    obj.label195:setFontColor("white");
    obj.label195:setText("Pescoço");
    obj.label195:setName("label195");

    obj.rectangle196 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle196:setParent(obj.layout65);
    obj.rectangle196:setLeft(1);
    obj.rectangle196:setTop(31);
    obj.rectangle196:setWidth(200);
    obj.rectangle196:setHeight(90);
    obj.rectangle196:setColor("Gray");
    obj.rectangle196:setXradius(2);
    obj.rectangle196:setYradius(2);
    obj.rectangle196:setName("rectangle196");

    obj.npescoco = gui.fromHandle(_obj_newObject("edit"));
    obj.npescoco:setParent(obj.layout65);
    obj.npescoco:setLeft(3);
    obj.npescoco:setTop(33);
    obj.npescoco:setWidth(195);
    obj.npescoco:setHeight(25);
    obj.npescoco:setName("npescoco");
    obj.npescoco:setField("npescoco");
    obj.npescoco:setHorzTextAlign("center");
    obj.npescoco:setFontColor("black");
    lfm_setPropAsString(obj.npescoco, "fontStyle",  "bold");

    obj.label196 = gui.fromHandle(_obj_newObject("label"));
    obj.label196:setParent(obj.layout65);
    obj.label196:setLeft(5);
    obj.label196:setTop(63);
    obj.label196:setWidth(90);
    obj.label196:setHeight(15);
    obj.label196:setFontSize(13);
    obj.label196:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label196, "fontStyle",  "bold");
    obj.label196:setFontColor("black");
    obj.label196:setText("Descrição:");
    obj.label196:setName("label196");

    obj.descpescoco = gui.fromHandle(_obj_newObject("edit"));
    obj.descpescoco:setParent(obj.layout65);
    obj.descpescoco:setLeft(3);
    obj.descpescoco:setTop(84);
    obj.descpescoco:setWidth(195);
    obj.descpescoco:setHeight(35);
    obj.descpescoco:setName("descpescoco");
    obj.descpescoco:setField("descpescoco");
    obj.descpescoco:setHorzTextAlign("leading");
    obj.descpescoco:setFontColor("black");
    obj.descpescoco:setFontSize(12.0);
    lfm_setPropAsString(obj.descpescoco, "fontStyle",  "bold");

    obj.layout66 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.layout61);
    obj.layout66:setLeft(0);
    obj.layout66:setTop(179);
    obj.layout66:setWidth(200);
    obj.layout66:setHeight(125);
    obj.layout66:setName("layout66");

    obj.rectangle197 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle197:setParent(obj.layout66);
    obj.rectangle197:setLeft(6);
    obj.rectangle197:setTop(17);
    obj.rectangle197:setColor("Black");
    obj.rectangle197:setWidth(104);
    obj.rectangle197:setHeight(15);
    obj.rectangle197:setXradius(2);
    obj.rectangle197:setYradius(2);
    obj.rectangle197:setName("rectangle197");

    obj.label197 = gui.fromHandle(_obj_newObject("label"));
    obj.label197:setParent(obj.layout66);
    obj.label197:setLeft(9);
    obj.label197:setTop(16);
    obj.label197:setWidth(98);
    obj.label197:setHeight(15);
    obj.label197:setFontSize(13);
    obj.label197:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label197, "fontStyle",  "bold");
    obj.label197:setFontColor("white");
    obj.label197:setText("Mão 1");
    obj.label197:setName("label197");

    obj.rectangle198 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle198:setParent(obj.layout66);
    obj.rectangle198:setLeft(1);
    obj.rectangle198:setTop(31);
    obj.rectangle198:setWidth(200);
    obj.rectangle198:setHeight(90);
    obj.rectangle198:setColor("Gray");
    obj.rectangle198:setXradius(2);
    obj.rectangle198:setYradius(2);
    obj.rectangle198:setName("rectangle198");

    obj.nmao1 = gui.fromHandle(_obj_newObject("edit"));
    obj.nmao1:setParent(obj.layout66);
    obj.nmao1:setLeft(3);
    obj.nmao1:setTop(33);
    obj.nmao1:setWidth(195);
    obj.nmao1:setHeight(25);
    obj.nmao1:setName("nmao1");
    obj.nmao1:setField("nmao1");
    obj.nmao1:setHorzTextAlign("center");
    obj.nmao1:setFontColor("black");
    lfm_setPropAsString(obj.nmao1, "fontStyle",  "bold");

    obj.label198 = gui.fromHandle(_obj_newObject("label"));
    obj.label198:setParent(obj.layout66);
    obj.label198:setLeft(5);
    obj.label198:setTop(63);
    obj.label198:setWidth(90);
    obj.label198:setHeight(15);
    obj.label198:setFontSize(13);
    obj.label198:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label198, "fontStyle",  "bold");
    obj.label198:setFontColor("black");
    obj.label198:setText("Descrição:");
    obj.label198:setName("label198");

    obj.descmao1 = gui.fromHandle(_obj_newObject("edit"));
    obj.descmao1:setParent(obj.layout66);
    obj.descmao1:setLeft(3);
    obj.descmao1:setTop(84);
    obj.descmao1:setWidth(195);
    obj.descmao1:setHeight(35);
    obj.descmao1:setName("descmao1");
    obj.descmao1:setField("descmao1");
    obj.descmao1:setHorzTextAlign("leading");
    obj.descmao1:setFontColor("black");
    obj.descmao1:setFontSize(12.0);
    lfm_setPropAsString(obj.descmao1, "fontStyle",  "bold");

    obj.layout67 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.layout61);
    obj.layout67:setLeft(210);
    obj.layout67:setTop(179);
    obj.layout67:setWidth(200);
    obj.layout67:setHeight(125);
    obj.layout67:setName("layout67");

    obj.rectangle199 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle199:setParent(obj.layout67);
    obj.rectangle199:setLeft(6);
    obj.rectangle199:setTop(17);
    obj.rectangle199:setColor("Black");
    obj.rectangle199:setWidth(104);
    obj.rectangle199:setHeight(15);
    obj.rectangle199:setXradius(2);
    obj.rectangle199:setYradius(2);
    obj.rectangle199:setName("rectangle199");

    obj.label199 = gui.fromHandle(_obj_newObject("label"));
    obj.label199:setParent(obj.layout67);
    obj.label199:setLeft(9);
    obj.label199:setTop(16);
    obj.label199:setWidth(98);
    obj.label199:setHeight(15);
    obj.label199:setFontSize(13);
    obj.label199:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label199, "fontStyle",  "bold");
    obj.label199:setFontColor("white");
    obj.label199:setText("Luva");
    obj.label199:setName("label199");

    obj.rectangle200 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle200:setParent(obj.layout67);
    obj.rectangle200:setLeft(1);
    obj.rectangle200:setTop(31);
    obj.rectangle200:setWidth(200);
    obj.rectangle200:setHeight(90);
    obj.rectangle200:setColor("Gray");
    obj.rectangle200:setXradius(2);
    obj.rectangle200:setYradius(2);
    obj.rectangle200:setName("rectangle200");

    obj.nluva = gui.fromHandle(_obj_newObject("edit"));
    obj.nluva:setParent(obj.layout67);
    obj.nluva:setLeft(3);
    obj.nluva:setTop(33);
    obj.nluva:setWidth(195);
    obj.nluva:setHeight(25);
    obj.nluva:setName("nluva");
    obj.nluva:setField("nluva");
    obj.nluva:setHorzTextAlign("center");
    obj.nluva:setFontColor("black");
    lfm_setPropAsString(obj.nluva, "fontStyle",  "bold");

    obj.label200 = gui.fromHandle(_obj_newObject("label"));
    obj.label200:setParent(obj.layout67);
    obj.label200:setLeft(5);
    obj.label200:setTop(63);
    obj.label200:setWidth(90);
    obj.label200:setHeight(15);
    obj.label200:setFontSize(13);
    obj.label200:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label200, "fontStyle",  "bold");
    obj.label200:setFontColor("black");
    obj.label200:setText("Descrição:");
    obj.label200:setName("label200");

    obj.descluva = gui.fromHandle(_obj_newObject("edit"));
    obj.descluva:setParent(obj.layout67);
    obj.descluva:setLeft(3);
    obj.descluva:setTop(84);
    obj.descluva:setWidth(195);
    obj.descluva:setHeight(35);
    obj.descluva:setName("descluva");
    obj.descluva:setField("descluva");
    obj.descluva:setHorzTextAlign("leading");
    obj.descluva:setFontColor("black");
    obj.descluva:setFontSize(12.0);
    lfm_setPropAsString(obj.descluva, "fontStyle",  "bold");

    obj.layout68 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.layout61);
    obj.layout68:setLeft(210);
    obj.layout68:setTop(314);
    obj.layout68:setWidth(200);
    obj.layout68:setHeight(125);
    obj.layout68:setName("layout68");

    obj.rectangle201 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle201:setParent(obj.layout68);
    obj.rectangle201:setLeft(6);
    obj.rectangle201:setTop(17);
    obj.rectangle201:setColor("Black");
    obj.rectangle201:setWidth(104);
    obj.rectangle201:setHeight(15);
    obj.rectangle201:setXradius(2);
    obj.rectangle201:setYradius(2);
    obj.rectangle201:setName("rectangle201");

    obj.label201 = gui.fromHandle(_obj_newObject("label"));
    obj.label201:setParent(obj.layout68);
    obj.label201:setLeft(9);
    obj.label201:setTop(16);
    obj.label201:setWidth(98);
    obj.label201:setHeight(15);
    obj.label201:setFontSize(13);
    obj.label201:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label201, "fontStyle",  "bold");
    obj.label201:setFontColor("white");
    obj.label201:setText("Mão 2");
    obj.label201:setName("label201");

    obj.rectangle202 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle202:setParent(obj.layout68);
    obj.rectangle202:setLeft(1);
    obj.rectangle202:setTop(31);
    obj.rectangle202:setWidth(200);
    obj.rectangle202:setHeight(90);
    obj.rectangle202:setColor("Gray");
    obj.rectangle202:setXradius(2);
    obj.rectangle202:setYradius(2);
    obj.rectangle202:setName("rectangle202");

    obj.nmao2 = gui.fromHandle(_obj_newObject("edit"));
    obj.nmao2:setParent(obj.layout68);
    obj.nmao2:setLeft(3);
    obj.nmao2:setTop(33);
    obj.nmao2:setWidth(195);
    obj.nmao2:setHeight(25);
    obj.nmao2:setName("nmao2");
    obj.nmao2:setField("nmao2");
    obj.nmao2:setHorzTextAlign("center");
    obj.nmao2:setFontColor("black");
    lfm_setPropAsString(obj.nmao2, "fontStyle",  "bold");

    obj.label202 = gui.fromHandle(_obj_newObject("label"));
    obj.label202:setParent(obj.layout68);
    obj.label202:setLeft(5);
    obj.label202:setTop(63);
    obj.label202:setWidth(90);
    obj.label202:setHeight(15);
    obj.label202:setFontSize(13);
    obj.label202:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label202, "fontStyle",  "bold");
    obj.label202:setFontColor("black");
    obj.label202:setText("Descrição:");
    obj.label202:setName("label202");

    obj.descmao2 = gui.fromHandle(_obj_newObject("edit"));
    obj.descmao2:setParent(obj.layout68);
    obj.descmao2:setLeft(3);
    obj.descmao2:setTop(84);
    obj.descmao2:setWidth(195);
    obj.descmao2:setHeight(35);
    obj.descmao2:setName("descmao2");
    obj.descmao2:setField("descmao2");
    obj.descmao2:setHorzTextAlign("leading");
    obj.descmao2:setFontColor("black");
    obj.descmao2:setFontSize(12.0);
    lfm_setPropAsString(obj.descmao2, "fontStyle",  "bold");

    obj.layout69 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layout61);
    obj.layout69:setLeft(0);
    obj.layout69:setTop(444);
    obj.layout69:setWidth(200);
    obj.layout69:setHeight(125);
    obj.layout69:setName("layout69");

    obj.rectangle203 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle203:setParent(obj.layout69);
    obj.rectangle203:setLeft(6);
    obj.rectangle203:setTop(17);
    obj.rectangle203:setColor("Black");
    obj.rectangle203:setWidth(104);
    obj.rectangle203:setHeight(15);
    obj.rectangle203:setXradius(2);
    obj.rectangle203:setYradius(2);
    obj.rectangle203:setName("rectangle203");

    obj.label203 = gui.fromHandle(_obj_newObject("label"));
    obj.label203:setParent(obj.layout69);
    obj.label203:setLeft(9);
    obj.label203:setTop(16);
    obj.label203:setWidth(98);
    obj.label203:setHeight(15);
    obj.label203:setFontSize(13);
    obj.label203:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label203, "fontStyle",  "bold");
    obj.label203:setFontColor("white");
    obj.label203:setText("Anel");
    obj.label203:setName("label203");

    obj.rectangle204 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle204:setParent(obj.layout69);
    obj.rectangle204:setLeft(1);
    obj.rectangle204:setTop(31);
    obj.rectangle204:setWidth(200);
    obj.rectangle204:setHeight(90);
    obj.rectangle204:setColor("Gray");
    obj.rectangle204:setXradius(2);
    obj.rectangle204:setYradius(2);
    obj.rectangle204:setName("rectangle204");

    obj.nanel = gui.fromHandle(_obj_newObject("edit"));
    obj.nanel:setParent(obj.layout69);
    obj.nanel:setLeft(3);
    obj.nanel:setTop(33);
    obj.nanel:setWidth(195);
    obj.nanel:setHeight(25);
    obj.nanel:setName("nanel");
    obj.nanel:setField("nanel");
    obj.nanel:setHorzTextAlign("center");
    obj.nanel:setFontColor("black");
    lfm_setPropAsString(obj.nanel, "fontStyle",  "bold");

    obj.label204 = gui.fromHandle(_obj_newObject("label"));
    obj.label204:setParent(obj.layout69);
    obj.label204:setLeft(5);
    obj.label204:setTop(63);
    obj.label204:setWidth(90);
    obj.label204:setHeight(15);
    obj.label204:setFontSize(13);
    obj.label204:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label204, "fontStyle",  "bold");
    obj.label204:setFontColor("black");
    obj.label204:setText("Descrição:");
    obj.label204:setName("label204");

    obj.descanel = gui.fromHandle(_obj_newObject("edit"));
    obj.descanel:setParent(obj.layout69);
    obj.descanel:setLeft(3);
    obj.descanel:setTop(84);
    obj.descanel:setWidth(195);
    obj.descanel:setHeight(35);
    obj.descanel:setName("descanel");
    obj.descanel:setField("descanel");
    obj.descanel:setHorzTextAlign("leading");
    obj.descanel:setFontColor("black");
    obj.descanel:setFontSize(12.0);
    lfm_setPropAsString(obj.descanel, "fontStyle",  "bold");

    obj.layout70 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.layout61);
    obj.layout70:setLeft(10);
    obj.layout70:setTop(314);
    obj.layout70:setWidth(200);
    obj.layout70:setHeight(125);
    obj.layout70:setName("layout70");

    obj.rectangle205 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle205:setParent(obj.layout70);
    obj.rectangle205:setLeft(6);
    obj.rectangle205:setTop(17);
    obj.rectangle205:setColor("Black");
    obj.rectangle205:setWidth(104);
    obj.rectangle205:setHeight(15);
    obj.rectangle205:setXradius(2);
    obj.rectangle205:setYradius(2);
    obj.rectangle205:setName("rectangle205");

    obj.label205 = gui.fromHandle(_obj_newObject("label"));
    obj.label205:setParent(obj.layout70);
    obj.label205:setLeft(9);
    obj.label205:setTop(16);
    obj.label205:setWidth(98);
    obj.label205:setHeight(15);
    obj.label205:setFontSize(13);
    obj.label205:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label205, "fontStyle",  "bold");
    obj.label205:setFontColor("white");
    obj.label205:setText("Cintura");
    obj.label205:setName("label205");

    obj.rectangle206 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle206:setParent(obj.layout70);
    obj.rectangle206:setLeft(1);
    obj.rectangle206:setTop(31);
    obj.rectangle206:setWidth(200);
    obj.rectangle206:setHeight(90);
    obj.rectangle206:setColor("Gray");
    obj.rectangle206:setXradius(2);
    obj.rectangle206:setYradius(2);
    obj.rectangle206:setName("rectangle206");

    obj.ncintura = gui.fromHandle(_obj_newObject("edit"));
    obj.ncintura:setParent(obj.layout70);
    obj.ncintura:setLeft(3);
    obj.ncintura:setTop(33);
    obj.ncintura:setWidth(195);
    obj.ncintura:setHeight(25);
    obj.ncintura:setName("ncintura");
    obj.ncintura:setField("ncintura");
    obj.ncintura:setHorzTextAlign("center");
    obj.ncintura:setFontColor("black");
    lfm_setPropAsString(obj.ncintura, "fontStyle",  "bold");

    obj.label206 = gui.fromHandle(_obj_newObject("label"));
    obj.label206:setParent(obj.layout70);
    obj.label206:setLeft(5);
    obj.label206:setTop(63);
    obj.label206:setWidth(90);
    obj.label206:setHeight(15);
    obj.label206:setFontSize(13);
    obj.label206:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label206, "fontStyle",  "bold");
    obj.label206:setFontColor("black");
    obj.label206:setText("Descrição:");
    obj.label206:setName("label206");

    obj.desccintura = gui.fromHandle(_obj_newObject("edit"));
    obj.desccintura:setParent(obj.layout70);
    obj.desccintura:setLeft(3);
    obj.desccintura:setTop(84);
    obj.desccintura:setWidth(195);
    obj.desccintura:setHeight(35);
    obj.desccintura:setName("desccintura");
    obj.desccintura:setField("desccintura");
    obj.desccintura:setHorzTextAlign("leading");
    obj.desccintura:setFontColor("black");
    obj.desccintura:setFontSize(12.0);
    lfm_setPropAsString(obj.desccintura, "fontStyle",  "bold");

    obj.layout71 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layout61);
    obj.layout71:setLeft(350);
    obj.layout71:setTop(384);
    obj.layout71:setWidth(200);
    obj.layout71:setHeight(125);
    obj.layout71:setName("layout71");

    obj.rectangle207 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle207:setParent(obj.layout71);
    obj.rectangle207:setLeft(6);
    obj.rectangle207:setTop(17);
    obj.rectangle207:setColor("Black");
    obj.rectangle207:setWidth(104);
    obj.rectangle207:setHeight(15);
    obj.rectangle207:setXradius(2);
    obj.rectangle207:setYradius(2);
    obj.rectangle207:setName("rectangle207");

    obj.label207 = gui.fromHandle(_obj_newObject("label"));
    obj.label207:setParent(obj.layout71);
    obj.label207:setLeft(9);
    obj.label207:setTop(16);
    obj.label207:setWidth(98);
    obj.label207:setHeight(15);
    obj.label207:setFontSize(13);
    obj.label207:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label207, "fontStyle",  "bold");
    obj.label207:setFontColor("white");
    obj.label207:setText("Pés");
    obj.label207:setName("label207");

    obj.rectangle208 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle208:setParent(obj.layout71);
    obj.rectangle208:setLeft(1);
    obj.rectangle208:setTop(31);
    obj.rectangle208:setWidth(200);
    obj.rectangle208:setHeight(90);
    obj.rectangle208:setColor("Gray");
    obj.rectangle208:setXradius(2);
    obj.rectangle208:setYradius(2);
    obj.rectangle208:setName("rectangle208");

    obj.npes = gui.fromHandle(_obj_newObject("edit"));
    obj.npes:setParent(obj.layout71);
    obj.npes:setLeft(3);
    obj.npes:setTop(33);
    obj.npes:setWidth(195);
    obj.npes:setHeight(25);
    obj.npes:setName("npes");
    obj.npes:setField("npes");
    obj.npes:setHorzTextAlign("center");
    obj.npes:setFontColor("black");
    lfm_setPropAsString(obj.npes, "fontStyle",  "bold");

    obj.label208 = gui.fromHandle(_obj_newObject("label"));
    obj.label208:setParent(obj.layout71);
    obj.label208:setLeft(5);
    obj.label208:setTop(63);
    obj.label208:setWidth(90);
    obj.label208:setHeight(15);
    obj.label208:setFontSize(13);
    obj.label208:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label208, "fontStyle",  "bold");
    obj.label208:setFontColor("black");
    obj.label208:setText("Descrição:");
    obj.label208:setName("label208");

    obj.descpes = gui.fromHandle(_obj_newObject("edit"));
    obj.descpes:setParent(obj.layout71);
    obj.descpes:setLeft(3);
    obj.descpes:setTop(84);
    obj.descpes:setWidth(195);
    obj.descpes:setHeight(35);
    obj.descpes:setName("descpes");
    obj.descpes:setField("descpes");
    obj.descpes:setHorzTextAlign("leading");
    obj.descpes:setFontColor("black");
    obj.descpes:setFontSize(12.0);
    lfm_setPropAsString(obj.descpes, "fontStyle",  "bold");

    obj.layout72 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.scrollBox3);
    obj.layout72:setLeft(605);
    obj.layout72:setTop(0);
    obj.layout72:setWidth(395);
    obj.layout72:setHeight(700);
    obj.layout72:setName("layout72");

    obj.rectangle209 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle209:setParent(obj.layout72);
    obj.rectangle209:setLeft(150);
    obj.rectangle209:setTop(1);
    obj.rectangle209:setColor("Black");
    obj.rectangle209:setWidth(104);
    obj.rectangle209:setHeight(15);
    obj.rectangle209:setXradius(2);
    obj.rectangle209:setYradius(2);
    obj.rectangle209:setName("rectangle209");

    obj.label209 = gui.fromHandle(_obj_newObject("label"));
    obj.label209:setParent(obj.layout72);
    obj.label209:setLeft(153);
    obj.label209:setTop(1);
    obj.label209:setWidth(98);
    obj.label209:setHeight(12);
    obj.label209:setFontSize(10);
    obj.label209:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label209, "fontStyle",  "bold");
    obj.label209:setFontColor("white");
    obj.label209:setText("Equipamentos");
    obj.label209:setName("label209");

    obj.layout73 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layout72);
    obj.layout73:setLeft(0);
    obj.layout73:setTop(13);
    obj.layout73:setWidth(395);
    obj.layout73:setHeight(418);
    obj.layout73:setName("layout73");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout73);
    obj.textEditor4:setAlign("client");
    obj.textEditor4:setField("equipamentos");
    obj.textEditor4:setFontColor("black");
    lfm_setPropAsString(obj.textEditor4, "fontStyle",  "bold");
    obj.textEditor4:setName("textEditor4");

    obj.rectangle210 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle210:setParent(obj.layout72);
    obj.rectangle210:setLeft(150);
    obj.rectangle210:setTop(434);
    obj.rectangle210:setColor("Black");
    obj.rectangle210:setWidth(104);
    obj.rectangle210:setHeight(15);
    obj.rectangle210:setXradius(2);
    obj.rectangle210:setYradius(2);
    obj.rectangle210:setName("rectangle210");

    obj.label210 = gui.fromHandle(_obj_newObject("label"));
    obj.label210:setParent(obj.layout72);
    obj.label210:setLeft(153);
    obj.label210:setTop(434);
    obj.label210:setWidth(98);
    obj.label210:setHeight(12);
    obj.label210:setFontSize(10);
    obj.label210:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label210, "fontStyle",  "bold");
    obj.label210:setFontColor("white");
    obj.label210:setText("Dinheiro");
    obj.label210:setName("label210");

    obj.layout74 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.layout72);
    obj.layout74:setLeft(0);
    obj.layout74:setTop(446);
    obj.layout74:setWidth(395);
    obj.layout74:setHeight(100);
    obj.layout74:setName("layout74");

    obj.rectangle211 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle211:setParent(obj.layout74);
    obj.rectangle211:setLeft(0);
    obj.rectangle211:setTop(1);
    obj.rectangle211:setColor("#333333");
    obj.rectangle211:setWidth(395);
    obj.rectangle211:setHeight(90);
    obj.rectangle211:setXradius(2);
    obj.rectangle211:setYradius(2);
    obj.rectangle211:setName("rectangle211");

    obj.rectangle212 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle212:setParent(obj.layout74);
    obj.rectangle212:setLeft(5);
    obj.rectangle212:setTop(6);
    obj.rectangle212:setColor("#999999");
    obj.rectangle212:setWidth(385);
    obj.rectangle212:setHeight(80);
    obj.rectangle212:setXradius(2);
    obj.rectangle212:setYradius(2);
    obj.rectangle212:setName("rectangle212");

    obj.rectangle213 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle213:setParent(obj.layout74);
    obj.rectangle213:setLeft(15);
    obj.rectangle213:setTop(20);
    obj.rectangle213:setColor("Black");
    obj.rectangle213:setWidth(80);
    obj.rectangle213:setHeight(25);
    obj.rectangle213:setXradius(2);
    obj.rectangle213:setYradius(2);
    obj.rectangle213:setName("rectangle213");

    obj.label211 = gui.fromHandle(_obj_newObject("label"));
    obj.label211:setParent(obj.layout74);
    obj.label211:setLeft(47);
    obj.label211:setTop(15);
    obj.label211:setWidth(25);
    obj.label211:setHeight(25);
    obj.label211:setFontSize(14);
    lfm_setPropAsString(obj.label211, "fontStyle",  "bold");
    obj.label211:setFontColor("white");
    obj.label211:setText("T$");
    obj.label211:setName("label211");

    obj.label212 = gui.fromHandle(_obj_newObject("label"));
    obj.label212:setParent(obj.layout74);
    obj.label212:setLeft(22);
    obj.label212:setTop(25);
    obj.label212:setWidth(80);
    obj.label212:setHeight(25);
    obj.label212:setFontSize(10);
    obj.label212:setFontColor("white");
    obj.label212:setText("Tibar de Cobre");
    obj.label212:setName("label212");

    obj.totalCobre = gui.fromHandle(_obj_newObject("edit"));
    obj.totalCobre:setParent(obj.layout74);
    obj.totalCobre:setLeft(15);
    obj.totalCobre:setTop(50);
    obj.totalCobre:setWidth(80);
    obj.totalCobre:setHeight(25);
    obj.totalCobre:setName("totalCobre");
    obj.totalCobre:setField("totalCobre");
    obj.totalCobre:setType("number");
    obj.totalCobre:setHorzTextAlign("center");
    obj.totalCobre:setFontColor("black");
    obj.totalCobre:setFontSize(15.0);
    lfm_setPropAsString(obj.totalCobre, "fontStyle",  "bold");

    obj.rectangle214 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle214:setParent(obj.layout74);
    obj.rectangle214:setLeft(110);
    obj.rectangle214:setTop(20);
    obj.rectangle214:setColor("Black");
    obj.rectangle214:setWidth(80);
    obj.rectangle214:setHeight(25);
    obj.rectangle214:setXradius(2);
    obj.rectangle214:setYradius(2);
    obj.rectangle214:setName("rectangle214");

    obj.label213 = gui.fromHandle(_obj_newObject("label"));
    obj.label213:setParent(obj.layout74);
    obj.label213:setLeft(142);
    obj.label213:setTop(15);
    obj.label213:setWidth(25);
    obj.label213:setHeight(25);
    obj.label213:setFontSize(14);
    lfm_setPropAsString(obj.label213, "fontStyle",  "bold");
    obj.label213:setFontColor("white");
    obj.label213:setText("TP");
    obj.label213:setName("label213");

    obj.label214 = gui.fromHandle(_obj_newObject("label"));
    obj.label214:setParent(obj.layout74);
    obj.label214:setLeft(119);
    obj.label214:setTop(25);
    obj.label214:setWidth(80);
    obj.label214:setHeight(25);
    obj.label214:setFontSize(10);
    obj.label214:setFontColor("white");
    obj.label214:setText("Tibar de Prata");
    obj.label214:setName("label214");

    obj.totalPrata = gui.fromHandle(_obj_newObject("edit"));
    obj.totalPrata:setParent(obj.layout74);
    obj.totalPrata:setLeft(110);
    obj.totalPrata:setTop(50);
    obj.totalPrata:setWidth(80);
    obj.totalPrata:setHeight(25);
    obj.totalPrata:setName("totalPrata");
    obj.totalPrata:setField("totalPrata");
    obj.totalPrata:setType("number");
    obj.totalPrata:setHorzTextAlign("center");
    obj.totalPrata:setFontColor("black");
    obj.totalPrata:setFontSize(15.0);
    lfm_setPropAsString(obj.totalPrata, "fontStyle",  "bold");

    obj.rectangle215 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle215:setParent(obj.layout74);
    obj.rectangle215:setLeft(205);
    obj.rectangle215:setTop(20);
    obj.rectangle215:setColor("Black");
    obj.rectangle215:setWidth(80);
    obj.rectangle215:setHeight(25);
    obj.rectangle215:setXradius(2);
    obj.rectangle215:setYradius(2);
    obj.rectangle215:setName("rectangle215");

    obj.label215 = gui.fromHandle(_obj_newObject("label"));
    obj.label215:setParent(obj.layout74);
    obj.label215:setLeft(237);
    obj.label215:setTop(15);
    obj.label215:setWidth(25);
    obj.label215:setHeight(25);
    obj.label215:setFontSize(14);
    lfm_setPropAsString(obj.label215, "fontStyle",  "bold");
    obj.label215:setFontColor("white");
    obj.label215:setText("TO");
    obj.label215:setName("label215");

    obj.label216 = gui.fromHandle(_obj_newObject("label"));
    obj.label216:setParent(obj.layout74);
    obj.label216:setLeft(214);
    obj.label216:setTop(25);
    obj.label216:setWidth(80);
    obj.label216:setHeight(25);
    obj.label216:setFontSize(10);
    obj.label216:setFontColor("white");
    obj.label216:setText("Tibar de Ouro");
    obj.label216:setName("label216");

    obj.totalOuro = gui.fromHandle(_obj_newObject("edit"));
    obj.totalOuro:setParent(obj.layout74);
    obj.totalOuro:setLeft(205);
    obj.totalOuro:setTop(50);
    obj.totalOuro:setWidth(80);
    obj.totalOuro:setHeight(25);
    obj.totalOuro:setName("totalOuro");
    obj.totalOuro:setField("totalOuro");
    obj.totalOuro:setType("number");
    obj.totalOuro:setHorzTextAlign("center");
    obj.totalOuro:setFontColor("black");
    obj.totalOuro:setFontSize(15.0);
    lfm_setPropAsString(obj.totalOuro, "fontStyle",  "bold");

    obj.rectangle216 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle216:setParent(obj.layout74);
    obj.rectangle216:setLeft(300);
    obj.rectangle216:setTop(20);
    obj.rectangle216:setColor("Black");
    obj.rectangle216:setWidth(80);
    obj.rectangle216:setHeight(25);
    obj.rectangle216:setXradius(2);
    obj.rectangle216:setYradius(2);
    obj.rectangle216:setName("rectangle216");

    obj.label217 = gui.fromHandle(_obj_newObject("label"));
    obj.label217:setParent(obj.layout74);
    obj.label217:setLeft(332);
    obj.label217:setTop(15);
    obj.label217:setWidth(25);
    obj.label217:setHeight(25);
    obj.label217:setFontSize(14);
    lfm_setPropAsString(obj.label217, "fontStyle",  "bold");
    obj.label217:setFontColor("white");
    obj.label217:setText("TL");
    obj.label217:setName("label217");

    obj.label218 = gui.fromHandle(_obj_newObject("label"));
    obj.label218:setParent(obj.layout74);
    obj.label218:setLeft(305);
    obj.label218:setTop(25);
    obj.label218:setWidth(80);
    obj.label218:setHeight(25);
    obj.label218:setFontSize(10);
    obj.label218:setFontColor("white");
    obj.label218:setText("Tibar de Platina");
    obj.label218:setName("label218");

    obj.totalPlatina = gui.fromHandle(_obj_newObject("edit"));
    obj.totalPlatina:setParent(obj.layout74);
    obj.totalPlatina:setLeft(300);
    obj.totalPlatina:setTop(50);
    obj.totalPlatina:setWidth(80);
    obj.totalPlatina:setHeight(25);
    obj.totalPlatina:setName("totalPlatina");
    obj.totalPlatina:setField("totalPlatina");
    obj.totalPlatina:setType("number");
    obj.totalPlatina:setHorzTextAlign("center");
    obj.totalPlatina:setFontColor("black");
    obj.totalPlatina:setFontSize(15.0);
    lfm_setPropAsString(obj.totalPlatina, "fontStyle",  "bold");

    obj.rectangle217 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle217:setParent(obj.layout72);
    obj.rectangle217:setLeft(150);
    obj.rectangle217:setTop(539);
    obj.rectangle217:setColor("Black");
    obj.rectangle217:setWidth(104);
    obj.rectangle217:setHeight(15);
    obj.rectangle217:setXradius(2);
    obj.rectangle217:setYradius(2);
    obj.rectangle217:setName("rectangle217");

    obj.label219 = gui.fromHandle(_obj_newObject("label"));
    obj.label219:setParent(obj.layout72);
    obj.label219:setLeft(153);
    obj.label219:setTop(539);
    obj.label219:setWidth(98);
    obj.label219:setHeight(12);
    obj.label219:setFontSize(10);
    obj.label219:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label219, "fontStyle",  "bold");
    obj.label219:setFontColor("white");
    obj.label219:setText("Anotações");
    obj.label219:setName("label219");

    obj.layout75 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layout72);
    obj.layout75:setLeft(0);
    obj.layout75:setTop(553);
    obj.layout75:setWidth(395);
    obj.layout75:setHeight(145);
    obj.layout75:setName("layout75");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout75);
    obj.textEditor5:setAlign("client");
    obj.textEditor5:setField("eqanotacoes");
    obj.textEditor5:setFontColor("black");
    lfm_setPropAsString(obj.textEditor5, "fontStyle",  "bold");
    obj.textEditor5:setName("textEditor5");

    obj.tab4 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Magias");
    obj.tab4:setName("tab4");

    obj.Tormenta04 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta04:setParent(obj.tab4);
    obj.Tormenta04:setName("Tormenta04");
    obj.Tormenta04:setAlign("client");
    obj.Tormenta04:setTheme("light");
    obj.Tormenta04:setLockWhileNodeIsLoading(true);

    obj.scrollBox4 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.Tormenta04);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.rectangle218 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle218:setParent(obj.scrollBox4);
    obj.rectangle218:setWidth(1010);
    obj.rectangle218:setHeight(700);
    obj.rectangle218:setColor("LightGray");
    obj.rectangle218:setXradius(10);
    obj.rectangle218:setYradius(10);
    obj.rectangle218:setName("rectangle218");

    obj.rectangle219 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle219:setParent(obj.scrollBox4);
    obj.rectangle219:setLeft(373);
    obj.rectangle219:setTop(10);
    obj.rectangle219:setColor("#333333");
    obj.rectangle219:setWidth(265);
    obj.rectangle219:setHeight(50);
    obj.rectangle219:setXradius(2);
    obj.rectangle219:setYradius(2);
    obj.rectangle219:setName("rectangle219");

    obj.rectangle220 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle220:setParent(obj.scrollBox4);
    obj.rectangle220:setLeft(378);
    obj.rectangle220:setTop(15);
    obj.rectangle220:setColor("#999999");
    obj.rectangle220:setWidth(255);
    obj.rectangle220:setHeight(40);
    obj.rectangle220:setXradius(2);
    obj.rectangle220:setYradius(2);
    obj.rectangle220:setName("rectangle220");

    obj.rectangle221 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle221:setParent(obj.scrollBox4);
    obj.rectangle221:setLeft(397);
    obj.rectangle221:setTop(28);
    obj.rectangle221:setColor("Black");
    obj.rectangle221:setWidth(90);
    obj.rectangle221:setHeight(25);
    obj.rectangle221:setXradius(2);
    obj.rectangle221:setYradius(2);
    obj.rectangle221:setName("rectangle221");

    obj.label220 = gui.fromHandle(_obj_newObject("label"));
    obj.label220:setParent(obj.scrollBox4);
    obj.label220:setLeft(429);
    obj.label220:setTop(22);
    obj.label220:setWidth(35);
    obj.label220:setHeight(25);
    obj.label220:setFontSize(14);
    lfm_setPropAsString(obj.label220, "fontStyle",  "bold");
    obj.label220:setFontColor("white");
    obj.label220:setText("PM");
    obj.label220:setName("label220");

    obj.label221 = gui.fromHandle(_obj_newObject("label"));
    obj.label221:setParent(obj.scrollBox4);
    obj.label221:setLeft(404);
    obj.label221:setTop(33);
    obj.label221:setWidth(90);
    obj.label221:setHeight(25);
    obj.label221:setFontSize(10);
    obj.label221:setFontColor("white");
    obj.label221:setText("Pontos de Magia");
    obj.label221:setName("label221");

    obj.rectangle222 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle222:setParent(obj.scrollBox4);
    obj.rectangle222:setLeft(507);
    obj.rectangle222:setTop(16);
    obj.rectangle222:setColor("Black");
    obj.rectangle222:setWidth(28);
    obj.rectangle222:setHeight(15);
    obj.rectangle222:setXradius(2);
    obj.rectangle222:setYradius(2);
    obj.rectangle222:setName("rectangle222");

    obj.label222 = gui.fromHandle(_obj_newObject("label"));
    obj.label222:setParent(obj.scrollBox4);
    obj.label222:setLeft(509);
    obj.label222:setTop(18);
    obj.label222:setWidth(28);
    obj.label222:setHeight(8);
    obj.label222:setFontSize(10);
    lfm_setPropAsString(obj.label222, "fontStyle",  "bold");
    obj.label222:setFontColor("white");
    obj.label222:setText("Total");
    obj.label222:setName("label222");

    obj.totalPM = gui.fromHandle(_obj_newObject("edit"));
    obj.totalPM:setParent(obj.scrollBox4);
    obj.totalPM:setLeft(491);
    obj.totalPM:setTop(28);
    obj.totalPM:setWidth(60);
    obj.totalPM:setHeight(25);
    obj.totalPM:setName("totalPM");
    obj.totalPM:setField("totalPM");
    obj.totalPM:setType("number");
    obj.totalPM:setHorzTextAlign("center");
    obj.totalPM:setFontColor("black");
    obj.totalPM:setFontSize(15.0);
    lfm_setPropAsString(obj.totalPM, "fontStyle",  "bold");

    obj.rectangle223 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle223:setParent(obj.scrollBox4);
    obj.rectangle223:setLeft(564);
    obj.rectangle223:setTop(16);
    obj.rectangle223:setColor("Black");
    obj.rectangle223:setWidth(38);
    obj.rectangle223:setHeight(15);
    obj.rectangle223:setXradius(2);
    obj.rectangle223:setYradius(2);
    obj.rectangle223:setName("rectangle223");

    obj.label223 = gui.fromHandle(_obj_newObject("label"));
    obj.label223:setParent(obj.scrollBox4);
    obj.label223:setLeft(568);
    obj.label223:setTop(18);
    obj.label223:setWidth(38);
    obj.label223:setHeight(8);
    obj.label223:setFontSize(10);
    lfm_setPropAsString(obj.label223, "fontStyle",  "bold");
    obj.label223:setFontColor("white");
    obj.label223:setText("Atuais");
    obj.label223:setName("label223");

    obj.atuaisPM = gui.fromHandle(_obj_newObject("edit"));
    obj.atuaisPM:setParent(obj.scrollBox4);
    obj.atuaisPM:setLeft(553);
    obj.atuaisPM:setTop(28);
    obj.atuaisPM:setWidth(60);
    obj.atuaisPM:setHeight(25);
    obj.atuaisPM:setName("atuaisPM");
    obj.atuaisPM:setField("atuaisPM");
    obj.atuaisPM:setType("number");
    obj.atuaisPM:setHorzTextAlign("center");
    obj.atuaisPM:setFontColor("black");
    obj.atuaisPM:setFontSize(15.0);
    lfm_setPropAsString(obj.atuaisPM, "fontStyle",  "bold");

    obj.rectangle224 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle224:setParent(obj.scrollBox4);
    obj.rectangle224:setLeft(175);
    obj.rectangle224:setTop(46);
    obj.rectangle224:setColor("Black");
    obj.rectangle224:setWidth(160);
    obj.rectangle224:setHeight(28);
    obj.rectangle224:setXradius(2);
    obj.rectangle224:setYradius(2);
    obj.rectangle224:setName("rectangle224");

    obj.label224 = gui.fromHandle(_obj_newObject("label"));
    obj.label224:setParent(obj.scrollBox4);
    obj.label224:setLeft(183);
    obj.label224:setTop(47);
    obj.label224:setWidth(160);
    obj.label224:setHeight(23);
    obj.label224:setFontSize(16.0);
    lfm_setPropAsString(obj.label224, "fontStyle",  "bold");
    obj.label224:setFontColor("white");
    obj.label224:setText("Magias Conhecidas");
    obj.label224:setName("label224");

    obj.layout76 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.scrollBox4);
    obj.layout76:setLeft(10);
    obj.layout76:setTop(72);
    obj.layout76:setWidth(490);
    obj.layout76:setHeight(615);
    obj.layout76:setName("layout76");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout76);
    obj.textEditor6:setAlign("client");
    obj.textEditor6:setField("mconhecidas");
    obj.textEditor6:setFontColor("black");
    lfm_setPropAsString(obj.textEditor6, "fontStyle",  "bold");
    obj.textEditor6:setName("textEditor6");

    obj.rectangle225 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle225:setParent(obj.scrollBox4);
    obj.rectangle225:setLeft(675);
    obj.rectangle225:setTop(46);
    obj.rectangle225:setColor("Black");
    obj.rectangle225:setWidth(160);
    obj.rectangle225:setHeight(28);
    obj.rectangle225:setXradius(2);
    obj.rectangle225:setYradius(2);
    obj.rectangle225:setName("rectangle225");

    obj.label225 = gui.fromHandle(_obj_newObject("label"));
    obj.label225:setParent(obj.scrollBox4);
    obj.label225:setLeft(683);
    obj.label225:setTop(47);
    obj.label225:setWidth(160);
    obj.label225:setHeight(23);
    obj.label225:setFontSize(16.0);
    lfm_setPropAsString(obj.label225, "fontStyle",  "bold");
    obj.label225:setFontColor("white");
    obj.label225:setText("Magias Preparadas");
    obj.label225:setName("label225");

    obj.layout77 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.scrollBox4);
    obj.layout77:setLeft(510);
    obj.layout77:setTop(72);
    obj.layout77:setWidth(490);
    obj.layout77:setHeight(615);
    obj.layout77:setName("layout77");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout77);
    obj.textEditor7:setAlign("client");
    obj.textEditor7:setField("mpreparadas");
    obj.textEditor7:setFontColor("black");
    lfm_setPropAsString(obj.textEditor7, "fontStyle",  "bold");
    obj.textEditor7:setName("textEditor7");

    obj.tab5 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Histórico");
    obj.tab5:setName("tab5");

    obj.Tormenta05 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta05:setParent(obj.tab5);
    obj.Tormenta05:setName("Tormenta05");
    obj.Tormenta05:setAlign("client");
    obj.Tormenta05:setTheme("light");
    obj.Tormenta05:setLockWhileNodeIsLoading(true);

    obj.scrollBox5 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.Tormenta05);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.rectangle226 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle226:setParent(obj.scrollBox5);
    obj.rectangle226:setWidth(1010);
    obj.rectangle226:setHeight(700);
    obj.rectangle226:setColor("LightGray");
    obj.rectangle226:setXradius(10);
    obj.rectangle226:setYradius(10);
    obj.rectangle226:setName("rectangle226");

    obj.layout78 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.scrollBox5);
    obj.layout78:setLeft(10);
    obj.layout78:setTop(8);
    obj.layout78:setWidth(980);
    obj.layout78:setHeight(300);
    obj.layout78:setName("layout78");

    obj.rectangle227 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle227:setParent(obj.layout78);
    obj.rectangle227:setLeft(1);
    obj.rectangle227:setTop(230);
    obj.rectangle227:setColor("#333333");
    obj.rectangle227:setWidth(280);
    obj.rectangle227:setHeight(70);
    obj.rectangle227:setXradius(2);
    obj.rectangle227:setYradius(2);
    obj.rectangle227:setName("rectangle227");

    obj.rectangle228 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle228:setParent(obj.layout78);
    obj.rectangle228:setLeft(5);
    obj.rectangle228:setTop(235);
    obj.rectangle228:setColor("#999999");
    obj.rectangle228:setWidth(270);
    obj.rectangle228:setHeight(60);
    obj.rectangle228:setXradius(2);
    obj.rectangle228:setYradius(2);
    obj.rectangle228:setName("rectangle228");

    obj.rectangle229 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle229:setParent(obj.layout78);
    obj.rectangle229:setLeft(15);
    obj.rectangle229:setTop(238);
    obj.rectangle229:setColor("Black");
    obj.rectangle229:setWidth(120);
    obj.rectangle229:setHeight(25);
    obj.rectangle229:setXradius(2);
    obj.rectangle229:setYradius(2);
    obj.rectangle229:setName("rectangle229");

    obj.label226 = gui.fromHandle(_obj_newObject("label"));
    obj.label226:setParent(obj.layout78);
    obj.label226:setLeft(37);
    obj.label226:setTop(233);
    obj.label226:setWidth(75);
    obj.label226:setHeight(25);
    obj.label226:setFontSize(14);
    lfm_setPropAsString(obj.label226, "fontStyle",  "bold");
    obj.label226:setFontColor("white");
    obj.label226:setText("EXP ATUAL");
    obj.label226:setName("label226");

    obj.label227 = gui.fromHandle(_obj_newObject("label"));
    obj.label227:setParent(obj.layout78);
    obj.label227:setLeft(36);
    obj.label227:setTop(243);
    obj.label227:setWidth(120);
    obj.label227:setHeight(25);
    obj.label227:setFontSize(10);
    obj.label227:setFontColor("white");
    obj.label227:setText("Experiência Atual");
    obj.label227:setName("label227");

    obj.XPAtual = gui.fromHandle(_obj_newObject("edit"));
    obj.XPAtual:setParent(obj.layout78);
    obj.XPAtual:setLeft(146);
    obj.XPAtual:setTop(238);
    obj.XPAtual:setWidth(120);
    obj.XPAtual:setHeight(25);
    obj.XPAtual:setName("XPAtual");
    obj.XPAtual:setField("XPAtual");
    obj.XPAtual:setType("number");
    obj.XPAtual:setHorzTextAlign("center");
    obj.XPAtual:setFontColor("black");
    obj.XPAtual:setFontSize(15.0);
    lfm_setPropAsString(obj.XPAtual, "fontStyle",  "bold");

    obj.rectangle230 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle230:setParent(obj.layout78);
    obj.rectangle230:setLeft(15);
    obj.rectangle230:setTop(266);
    obj.rectangle230:setColor("Black");
    obj.rectangle230:setWidth(120);
    obj.rectangle230:setHeight(25);
    obj.rectangle230:setXradius(2);
    obj.rectangle230:setYradius(2);
    obj.rectangle230:setName("rectangle230");

    obj.label228 = gui.fromHandle(_obj_newObject("label"));
    obj.label228:setParent(obj.layout78);
    obj.label228:setLeft(38);
    obj.label228:setTop(261);
    obj.label228:setWidth(75);
    obj.label228:setHeight(25);
    obj.label228:setFontSize(14);
    lfm_setPropAsString(obj.label228, "fontStyle",  "bold");
    obj.label228:setFontColor("white");
    obj.label228:setText("EXP NIVEL");
    obj.label228:setName("label228");

    obj.label229 = gui.fromHandle(_obj_newObject("label"));
    obj.label229:setParent(obj.layout78);
    obj.label229:setLeft(18);
    obj.label229:setTop(271);
    obj.label229:setWidth(120);
    obj.label229:setHeight(25);
    obj.label229:setFontSize(10);
    obj.label229:setFontColor("white");
    obj.label229:setText("Experiência Próximo Nível");
    obj.label229:setName("label229");

    obj.XPNivel = gui.fromHandle(_obj_newObject("edit"));
    obj.XPNivel:setParent(obj.layout78);
    obj.XPNivel:setLeft(146);
    obj.XPNivel:setTop(266);
    obj.XPNivel:setWidth(120);
    obj.XPNivel:setHeight(25);
    obj.XPNivel:setName("XPNivel");
    obj.XPNivel:setField("XPNivel");
    obj.XPNivel:setType("number");
    obj.XPNivel:setHorzTextAlign("center");
    obj.XPNivel:setFontColor("black");
    obj.XPNivel:setFontSize(15.0);
    lfm_setPropAsString(obj.XPNivel, "fontStyle",  "bold");

    obj.rectangle231 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle231:setParent(obj.layout78);
    obj.rectangle231:setLeft(84);
    obj.rectangle231:setTop(3);
    obj.rectangle231:setColor("Black");
    obj.rectangle231:setWidth(115);
    obj.rectangle231:setHeight(28);
    obj.rectangle231:setXradius(2);
    obj.rectangle231:setYradius(2);
    obj.rectangle231:setName("rectangle231");

    obj.label230 = gui.fromHandle(_obj_newObject("label"));
    obj.label230:setParent(obj.layout78);
    obj.label230:setLeft(90);
    obj.label230:setTop(5);
    obj.label230:setWidth(110);
    obj.label230:setHeight(20);
    obj.label230:setFontSize(18.0);
    lfm_setPropAsString(obj.label230, "fontStyle",  "bold");
    obj.label230:setFontColor("white");
    obj.label230:setText("Informações");
    obj.label230:setName("label230");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout78);
    obj.textEditor8:setLeft(1);
    obj.textEditor8:setTop(27);
    obj.textEditor8:setWidth(280);
    obj.textEditor8:setHeight(202);
    obj.textEditor8:setFontColor("black");
    obj.textEditor8:setField("informacoes");
    obj.textEditor8:setName("textEditor8");

    obj.rectangle232 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle232:setParent(obj.layout78);
    obj.rectangle232:setLeft(600);
    obj.rectangle232:setTop(3);
    obj.rectangle232:setColor("Black");
    obj.rectangle232:setWidth(77);
    obj.rectangle232:setHeight(28);
    obj.rectangle232:setXradius(2);
    obj.rectangle232:setYradius(2);
    obj.rectangle232:setName("rectangle232");

    obj.label231 = gui.fromHandle(_obj_newObject("label"));
    obj.label231:setParent(obj.layout78);
    obj.label231:setLeft(605);
    obj.label231:setTop(6);
    obj.label231:setWidth(100);
    obj.label231:setHeight(20);
    obj.label231:setFontSize(18.0);
    lfm_setPropAsString(obj.label231, "fontStyle",  "bold");
    obj.label231:setFontColor("white");
    obj.label231:setText("História");
    obj.label231:setName("label231");

    obj.richEdit1 = gui.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout78);
    obj.richEdit1:setLeft(300);
    obj.richEdit1:setTop(27);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#ffffff");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "black");
    obj.richEdit1:setField("background");
    obj.richEdit1:setWidth(680);
    obj.richEdit1:setHeight(272);
    obj.richEdit1:setName("richEdit1");

    obj.layout79 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.scrollBox5);
    obj.layout79:setLeft(21);
    obj.layout79:setTop(316);
    obj.layout79:setWidth(969);
    obj.layout79:setHeight(358);
    obj.layout79:setName("layout79");

    obj.rectangle233 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle233:setParent(obj.layout79);
    obj.rectangle233:setLeft(86);
    obj.rectangle233:setTop(3);
    obj.rectangle233:setColor("Black");
    obj.rectangle233:setWidth(128);
    obj.rectangle233:setHeight(28);
    obj.rectangle233:setXradius(2);
    obj.rectangle233:setYradius(2);
    obj.rectangle233:setName("rectangle233");

    obj.label232 = gui.fromHandle(_obj_newObject("label"));
    obj.label232:setParent(obj.layout79);
    obj.label232:setLeft(90);
    obj.label232:setTop(6);
    obj.label232:setWidth(120);
    obj.label232:setHeight(20);
    obj.label232:setFontSize(18.0);
    lfm_setPropAsString(obj.label232, "fontStyle",  "bold");
    obj.label232:setFontColor("white");
    obj.label232:setText("Personalidade");
    obj.label232:setName("label232");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout79);
    obj.textEditor9:setLeft(0);
    obj.textEditor9:setTop(30);
    obj.textEditor9:setWidth(300);
    obj.textEditor9:setHeight(328);
    obj.textEditor9:setFontColor("black");
    obj.textEditor9:setField("personalidade");
    obj.textEditor9:setName("textEditor9");

    obj.rectangle234 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle234:setParent(obj.layout79);
    obj.rectangle234:setLeft(435);
    obj.rectangle234:setTop(3);
    obj.rectangle234:setColor("Black");
    obj.rectangle234:setWidth(93);
    obj.rectangle234:setHeight(28);
    obj.rectangle234:setXradius(2);
    obj.rectangle234:setYradius(2);
    obj.rectangle234:setName("rectangle234");

    obj.label233 = gui.fromHandle(_obj_newObject("label"));
    obj.label233:setParent(obj.layout79);
    obj.label233:setLeft(439);
    obj.label233:setTop(6);
    obj.label233:setWidth(100);
    obj.label233:setHeight(20);
    obj.label233:setFontSize(18.0);
    lfm_setPropAsString(obj.label233, "fontStyle",  "bold");
    obj.label233:setFontColor("white");
    obj.label233:setText("Aparência");
    obj.label233:setName("label233");

    obj.textEditor10 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout79);
    obj.textEditor10:setLeft(334);
    obj.textEditor10:setTop(30);
    obj.textEditor10:setWidth(300);
    obj.textEditor10:setHeight(328);
    obj.textEditor10:setFontColor("black");
    obj.textEditor10:setField("aparencia");
    obj.textEditor10:setName("textEditor10");

    obj.rectangle235 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle235:setParent(obj.layout79);
    obj.rectangle235:setLeft(770);
    obj.rectangle235:setTop(3);
    obj.rectangle235:setColor("Black");
    obj.rectangle235:setWidth(97);
    obj.rectangle235:setHeight(28);
    obj.rectangle235:setXradius(2);
    obj.rectangle235:setYradius(2);
    obj.rectangle235:setName("rectangle235");

    obj.label234 = gui.fromHandle(_obj_newObject("label"));
    obj.label234:setParent(obj.layout79);
    obj.label234:setLeft(774);
    obj.label234:setTop(6);
    obj.label234:setWidth(100);
    obj.label234:setHeight(20);
    obj.label234:setFontSize(18.0);
    lfm_setPropAsString(obj.label234, "fontStyle",  "bold");
    obj.label234:setFontColor("white");
    obj.label234:setText("Anotações");
    obj.label234:setName("label234");

    obj.textEditor11 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout79);
    obj.textEditor11:setLeft(669);
    obj.textEditor11:setTop(30);
    obj.textEditor11:setWidth(300);
    obj.textEditor11:setHeight(328);
    obj.textEditor11:setFontColor("black");
    obj.textEditor11:setField("anotacoes");
    obj.textEditor11:setName("textEditor11");

    obj.tab6 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Ataques e macros");
    obj.tab6:setName("tab6");

    obj.Tormenta06 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta06:setParent(obj.tab6);
    obj.Tormenta06:setName("Tormenta06");
    obj.Tormenta06:setAlign("client");
    obj.Tormenta06:setTheme("light");

    obj.scrollBox6 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.Tormenta06);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.rectangle236 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle236:setParent(obj.scrollBox6);
    obj.rectangle236:setWidth(1010);
    obj.rectangle236:setHeight(700);
    obj.rectangle236:setColor("LightGray");
    obj.rectangle236:setXradius(10);
    obj.rectangle236:setYradius(10);
    obj.rectangle236:setName("rectangle236");

    obj.layout80 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.scrollBox6);
    obj.layout80:setAlign("top");
    obj.layout80:setHeight(30);
    obj.layout80:setMargins({bottom=4});
    obj.layout80:setName("layout80");

    obj.button64 = gui.fromHandle(_obj_newObject("button"));
    obj.button64:setParent(obj.layout80);
    obj.button64:setText("Adicionar Novo Ataque/Macro");
    obj.button64:setWidth(250);
    obj.button64:setAlign("left");
    obj.button64:setName("button64");

    obj.layout81 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.scrollBox6);
    obj.layout81:setAlign("client");
    obj.layout81:setMargins({left=8, right=8, top=0, bottom=8});
    obj.layout81:setName("layout81");

    obj.rclListaDosItens = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.layout81);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("left");
    obj.rclListaDosItens:setWidth(560);
    obj.rclListaDosItens:setHeight(650);
    obj.rclListaDosItens:setSelectable(true);

    obj.layout82 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.layout81);
    obj.layout82:setLeft(300);
    obj.layout82:setWidth(390);
    obj.layout82:setHeight(650);
    obj.layout82:setName("layout82");

    obj.boxDetalhesDoItem = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.layout82);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setAlign("top");
    obj.boxDetalhesDoItem:setWidth(420);
    obj.boxDetalhesDoItem:setHeight(180);

    obj.rectangle237 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle237:setParent(obj.boxDetalhesDoItem);
    obj.rectangle237:setAlign("client");
    obj.rectangle237:setColor("#999999");
    obj.rectangle237:setXradius(10);
    obj.rectangle237:setYradius(10);
    obj.rectangle237:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle237:setName("rectangle237");

    obj.layout83 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle237);
    obj.layout83:setAlign("top");
    obj.layout83:setHeight(30);
    obj.layout83:setMargins({bottom=4});
    obj.layout83:setName("layout83");

    obj.label235 = gui.fromHandle(_obj_newObject("label"));
    obj.label235:setParent(obj.layout83);
    obj.label235:setAlign("left");
    obj.label235:setText("Ataque/Macro:");
    obj.label235:setFontColor("black");
    obj.label235:setAutoSize(true);
    obj.label235:setName("label235");

    obj.edit61 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout83);
    obj.edit61:setAlign("client");
    obj.edit61:setField("campoTitulo");
    obj.edit61:setFontColor("black");
    obj.edit61:setName("edit61");

    obj.layout84 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle237);
    obj.layout84:setAlign("top");
    obj.layout84:setHeight(30);
    obj.layout84:setMargins({bottom=4});
    obj.layout84:setName("layout84");

    obj.label236 = gui.fromHandle(_obj_newObject("label"));
    obj.label236:setParent(obj.layout84);
    obj.label236:setAlign("left");
    obj.label236:setText("Macro:");
    obj.label236:setFontColor("black");
    obj.label236:setAutoSize(true);
    obj.label236:setName("label236");

    obj.edtMacro = gui.fromHandle(_obj_newObject("edit"));
    obj.edtMacro:setParent(obj.layout84);
    obj.edtMacro:setAlign("left");
    obj.edtMacro:setWidth(260);
    obj.edtMacro:setField("campoSubTitulo");
    obj.edtMacro:setName("edtMacro");
    obj.edtMacro:setFontColor("black");
    obj.edtMacro:setMargins({left=6});

    obj.button65 = gui.fromHandle(_obj_newObject("button"));
    obj.button65:setParent(obj.layout84);
    obj.button65:setAlign("left");
    obj.button65:setWidth(25);
    obj.button65:setHeight(25);
    obj.button65:setText("🎲");
    obj.button65:setFontSize(14);
    obj.button65:setFontColor("black");
    obj.button65:setCanFocus(false);
    obj.button65:setCursor("handPoint");
    obj.button65:setMargins({left=6});
    obj.button65:setHint("Rolar este macro na mesa");
    obj.button65:setName("button65");

    obj.layout85 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle237);
    obj.layout85:setAlign("top");
    obj.layout85:setHeight(100);
    obj.layout85:setName("layout85");

    obj.label237 = gui.fromHandle(_obj_newObject("label"));
    obj.label237:setParent(obj.layout85);
    obj.label237:setAlign("left");
    obj.label237:setText("Descrição:");
    obj.label237:setFontColor("black");
    obj.label237:setAutoSize(true);
    obj.label237:setName("label237");

    obj.textEditor12 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout85);
    obj.textEditor12:setAlign("client");
    obj.textEditor12:setField("campoDescrição");
    obj.textEditor12:setFontColor("black");
    obj.textEditor12:setName("textEditor12");



			if TRPG_rollMacro == nil then
				function TRPG_rollMacro(nodeOrSheet, macroText, label)
					if nodeOrSheet == nil then return end

					local expr = tostring(macroText or ""):gsub("^%s+", ""):gsub("%s+$", "")
					if expr == "" then
						showMessage("Preencha o macro antes de rolar.")
						return
					end

					local rolagem = rrpg.interpretarRolagem(expr)
					if rolagem == nil then
						showMessage("Rolagem inválida: " .. expr)
						return
					end

					-- se não tiver dado, prefixa 1d20
					if not rolagem.possuiAlgumDado then
						rolagem = rrpg.interpretarRolagem("1d20"):concatenar(rolagem)
					end

					local mesa = rrpg.getMesaDe(nodeOrSheet)
					local titulo = tostring(label or "Rolagem")

					if mesa ~= nil then
						local chat = mesa.activeChat or mesa.chat
						if chat ~= nil then
							chat:rolarDados(rolagem, titulo)
							return
						end
					end

					-- fallback: rolar local e exibir
					rolagem:rolarLocalmente()
					showMessage(titulo .. " = " .. tostring(rolagem.resultado) .. "\n(" .. tostring(rolagem.asString) .. ")")
				end
			end

		


    obj._e_event0 = obj.Tormenta01:addEventListener("onNodeReady",
        function (self)
            desCalculos(); recalcAll();
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).modforca, "Força (FOR)");
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).moddestreza, "Destreza (DES)");
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).modconstituicao, "Constituição (CON)");
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).modinteligencia, "Inteligência (INT)");
        end, obj);

    obj._e_event5 = obj.button5:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).modsabedoria, "Sabedoria (SAB)");
        end, obj);

    obj._e_event6 = obj.button6:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).modcarisma, "Carisma (CAR)");
        end, obj);

    obj._e_event7 = obj.button7:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_fort", "CON");
        end, obj);

    obj._e_event8 = obj.button8:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalfort, "Teste de Fortitude");
        end, obj);

    obj._e_event9 = obj.button9:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_ref", "DES");
        end, obj);

    obj._e_event10 = obj.button10:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalref, "Teste de Reflexos");
        end, obj);

    obj._e_event11 = obj.button11:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_von", "SAB");
        end, obj);

    obj._e_event12 = obj.button12:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalvon, "Teste de Vontade");
        end, obj);

    obj._e_event13 = obj.button13:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalcac, "Ataque Corpo-a-corpo");
        end, obj);

    obj._e_event14 = obj.button14:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totaldis, "Ataque À Distância");
        end, obj);

    obj._e_event15 = obj.calculos:addEventListener("onClick",
        function (self)
            desCalculos(); desCalculos2();
        end, obj);

    obj._e_event16 = obj.button15:addEventListener("onClick",
        function (self)
            GUI.openInBrowser('https://github.com/rafaelhonorio/projetosFirecast/raw/main/Projetos/Tormenta/output/Tormenta.rpk');
        end, obj);

    obj._e_event17 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            recalcAll();
        end, obj);

    obj._e_event18 = obj.Tormenta02:addEventListener("onNodeReady",
        function (self)
            desCalculos2();
        end, obj);

    obj._e_event19 = obj.button16:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_acrobacia", "DES");
        end, obj);

    obj._e_event20 = obj.button17:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalacrobacia, "Acrobacia");
        end, obj);

    obj._e_event21 = obj.button18:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_adestrar", "CAR");
        end, obj);

    obj._e_event22 = obj.button19:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totaladestrar, "Adestrar Animais");
        end, obj);

    obj._e_event23 = obj.button20:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_atletismo", "FOR");
        end, obj);

    obj._e_event24 = obj.button21:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalatletismo, "Atletismo");
        end, obj);

    obj._e_event25 = obj.button22:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_atuacao1", "CAR");
        end, obj);

    obj._e_event26 = obj.button23:addEventListener("onClick",
        function (self)
            local sh = sheet or self.sheet;
            							local nome = "Atuação";
            							local extra = tostring(sh.atuacao1 or ""):gsub("^%s+",""):gsub("%s+$","");
            							if extra ~= "" then nome = nome .. " - " .. extra; end;
            							TRPG_rollValue(sh, sh.totalatuacao1, nome);
        end, obj);

    obj._e_event27 = obj.button24:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_atuacao2", "CAR");
        end, obj);

    obj._e_event28 = obj.button25:addEventListener("onClick",
        function (self)
            local sh = sheet or self.sheet;
            							local nome = "Atuação";
            							local extra = tostring(sh.atuacao2 or ""):gsub("^%s+",""):gsub("%s+$","");
            							if extra ~= "" then nome = nome .. " - " .. extra; end;
            							TRPG_rollValue(sh, sh.totalatuacao2, nome);
        end, obj);

    obj._e_event29 = obj.button26:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_cavalgar", "DES");
        end, obj);

    obj._e_event30 = obj.button27:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalcavalgar, "Cavalgar");
        end, obj);

    obj._e_event31 = obj.button28:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_conhecimento1", "INT");
        end, obj);

    obj._e_event32 = obj.button29:addEventListener("onClick",
        function (self)
            local sh = sheet or self.sheet;
            							local nome = "Conhecimento";
            							local extra = tostring(sh.conhecimento1 or ""):gsub("^%s+",""):gsub("%s+$","");
            							if extra ~= "" then nome = nome .. " - " .. extra; end;
            							TRPG_rollValue(sh, sh.totalconhecimento1, nome);
        end, obj);

    obj._e_event33 = obj.button30:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_conhecimento2", "INT");
        end, obj);

    obj._e_event34 = obj.button31:addEventListener("onClick",
        function (self)
            local sh = sheet or self.sheet;
            							local nome = "Conhecimento";
            							local extra = tostring(sh.conhecimento2 or ""):gsub("^%s+",""):gsub("%s+$","");
            							if extra ~= "" then nome = nome .. " - " .. extra; end;
            							TRPG_rollValue(sh, sh.totalconhecimento2, nome);
        end, obj);

    obj._e_event35 = obj.button32:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_cura", "SAB");
        end, obj);

    obj._e_event36 = obj.button33:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalcura, "Cura");
        end, obj);

    obj._e_event37 = obj.button34:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_diplomacia", "CAR");
        end, obj);

    obj._e_event38 = obj.button35:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totaldiplomacia, "Diplomacia");
        end, obj);

    obj._e_event39 = obj.button36:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_enganacao", "CAR");
        end, obj);

    obj._e_event40 = obj.button37:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalenganacao, "Enganação");
        end, obj);

    obj._e_event41 = obj.button38:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_furtividade", "DES");
        end, obj);

    obj._e_event42 = obj.button39:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalfurtividade, "Furtividade");
        end, obj);

    obj._e_event43 = obj.button40:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_imagia", "INT");
        end, obj);

    obj._e_event44 = obj.button41:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalimagia, "Identificar Magia");
        end, obj);

    obj._e_event45 = obj.button42:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_iniciativa", "DES");
        end, obj);

    obj._e_event46 = obj.button43:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totaliniciativa, "Iniciativa");
        end, obj);

    obj._e_event47 = obj.button44:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_intimidacao", "CAR");
        end, obj);

    obj._e_event48 = obj.button45:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalintimidacao, "Intimidação");
        end, obj);

    obj._e_event49 = obj.button46:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_intuicao", "SAB");
        end, obj);

    obj._e_event50 = obj.button47:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalintuicao, "Intuição");
        end, obj);

    obj._e_event51 = obj.button48:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_jogatina", "CAR");
        end, obj);

    obj._e_event52 = obj.button49:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totaljogatina, "Jogatina");
        end, obj);

    obj._e_event53 = obj.button50:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_ladinagem", "DES");
        end, obj);

    obj._e_event54 = obj.button51:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalladinagem, "Ladinagem");
        end, obj);

    obj._e_event55 = obj.button52:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_oinformacao", "CAR");
        end, obj);

    obj._e_event56 = obj.button53:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totaloinformacao, "Obter Informação");
        end, obj);

    obj._e_event57 = obj.button54:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_oficio1", "INT");
        end, obj);

    obj._e_event58 = obj.button55:addEventListener("onClick",
        function (self)
            local sh = sheet or self.sheet;
            							local nome = "Ofício";
            							local extra = tostring(sh.oficio1 or ""):gsub("^%s+",""):gsub("%s+$","");
            							if extra ~= "" then nome = nome .. " - " .. extra; end;
            							TRPG_rollValue(sh, sh.totaloficio1, nome);
        end, obj);

    obj._e_event59 = obj.button56:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_oficio2", "INT");
        end, obj);

    obj._e_event60 = obj.button57:addEventListener("onClick",
        function (self)
            local sh = sheet or self.sheet;
            							local nome = "Ofício";
            							local extra = tostring(sh.oficio2 or ""):gsub("^%s+",""):gsub("%s+$","");
            							if extra ~= "" then nome = nome .. " - " .. extra; end;
            							TRPG_rollValue(sh, sh.totaloficio2, nome);
        end, obj);

    obj._e_event61 = obj.button58:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_meditacao", "SAB");
        end, obj);

    obj._e_event62 = obj.button59:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalmeditacao, "Meditação");
        end, obj);

    obj._e_event63 = obj.button60:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_percepcao", "SAB");
        end, obj);

    obj._e_event64 = obj.button61:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalpercepcao, "Percepção");
        end, obj);

    obj._e_event65 = obj.button62:addEventListener("onClick",
        function (self)
            TRPG_chooseHab(sheet or self.sheet, "hab_sobrevivencia", "SAB");
        end, obj);

    obj._e_event66 = obj.button63:addEventListener("onClick",
        function (self)
            TRPG_rollValue(sheet or self.sheet, (sheet or self.sheet).totalsobrevivencia, "Sobrevivência");
        end, obj);

    obj._e_event67 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            onDataLinkChange();
        end, obj);

    obj._e_event68 = obj.button64:addEventListener("onClick",
        function (self)
            self.rclListaDosItens:append();
        end, obj);

    obj._e_event69 = obj.rclListaDosItens:addEventListener("onSelect",
        function (self)
            local node = self.rclListaDosItens.selectedNode;
            					self.boxDetalhesDoItem.node = node;
            					self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    obj._e_event70 = obj.button65:addEventListener("onClick",
        function (self)
            local nd = self.boxDetalhesDoItem.node;
            									if nd ~= nil then
            										TRPG_rollMacro(nd, nd.campoSubTitulo, nd.campoTitulo or "Ataque/Macro");
            									end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.totaliniciativa ~= nil then self.totaliniciativa:destroy(); self.totaliniciativa = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.gradacrobacia ~= nil then self.gradacrobacia:destroy(); self.gradacrobacia = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.rectangle148 ~= nil then self.rectangle148:destroy(); self.rectangle148 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.rectangle104 ~= nil then self.rectangle104:destroy(); self.rectangle104 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.nmao1 ~= nil then self.nmao1:destroy(); self.nmao1 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.rectangle121 ~= nil then self.rectangle121:destroy(); self.rectangle121 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.rectangle138 ~= nil then self.rectangle138:destroy(); self.rectangle138 = nil; end;
        if self.totaloficio2 ~= nil then self.totaloficio2:destroy(); self.totaloficio2 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.modmeditacao ~= nil then self.modmeditacao:destroy(); self.modmeditacao = nil; end;
        if self.Tormenta03 ~= nil then self.Tormenta03:destroy(); self.Tormenta03 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.modforca ~= nil then self.modforca:destroy(); self.modforca = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.rectangle201 ~= nil then self.rectangle201:destroy(); self.rectangle201 = nil; end;
        if self.label192 ~= nil then self.label192:destroy(); self.label192 = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.modsabedoria ~= nil then self.modsabedoria:destroy(); self.modsabedoria = nil; end;
        if self.label186 ~= nil then self.label186:destroy(); self.label186 = nil; end;
        if self.rectangle103 ~= nil then self.rectangle103:destroy(); self.rectangle103 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.ca1 ~= nil then self.ca1:destroy(); self.ca1 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.rectangle208 ~= nil then self.rectangle208:destroy(); self.rectangle208 = nil; end;
        if self.outrosoinformacao ~= nil then self.outrosoinformacao:destroy(); self.outrosoinformacao = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.rectangle232 ~= nil then self.rectangle232:destroy(); self.rectangle232 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label195 ~= nil then self.label195:destroy(); self.label195 = nil; end;
        if self.Tormenta02 ~= nil then self.Tormenta02:destroy(); self.Tormenta02 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.label220 ~= nil then self.label220:destroy(); self.label220 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.rectangle198 ~= nil then self.rectangle198:destroy(); self.rectangle198 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.label236 ~= nil then self.label236:destroy(); self.label236 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label230 ~= nil then self.label230:destroy(); self.label230 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.totalatuacao1 ~= nil then self.totalatuacao1:destroy(); self.totalatuacao1 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.pontaria ~= nil then self.pontaria:destroy(); self.pontaria = nil; end;
        if self.totalcura ~= nil then self.totalcura:destroy(); self.totalcura = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.rectangle211 ~= nil then self.rectangle211:destroy(); self.rectangle211 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.totalenganacao ~= nil then self.totalenganacao:destroy(); self.totalenganacao = nil; end;
        if self.outrosenganacao ~= nil then self.outrosenganacao:destroy(); self.outrosenganacao = nil; end;
        if self.button45 ~= nil then self.button45:destroy(); self.button45 = nil; end;
        if self.rectangle101 ~= nil then self.rectangle101:destroy(); self.rectangle101 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.rectangle156 ~= nil then self.rectangle156:destroy(); self.rectangle156 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.modadestrar ~= nil then self.modadestrar:destroy(); self.modadestrar = nil; end;
        if self.button44 ~= nil then self.button44:destroy(); self.button44 = nil; end;
        if self.modintimidacao ~= nil then self.modintimidacao:destroy(); self.modintimidacao = nil; end;
        if self.outrosconhecimento2 ~= nil then self.outrosconhecimento2:destroy(); self.outrosconhecimento2 = nil; end;
        if self.rectangle217 ~= nil then self.rectangle217:destroy(); self.rectangle217 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.rectangle115 ~= nil then self.rectangle115:destroy(); self.rectangle115 = nil; end;
        if self.rectangle126 ~= nil then self.rectangle126:destroy(); self.rectangle126 = nil; end;
        if self.rectangle88 ~= nil then self.rectangle88:destroy(); self.rectangle88 = nil; end;
        if self.rectangle203 ~= nil then self.rectangle203:destroy(); self.rectangle203 = nil; end;
        if self.modpercepcao ~= nil then self.modpercepcao:destroy(); self.modpercepcao = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label184 ~= nil then self.label184:destroy(); self.label184 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.fort2 ~= nil then self.fort2:destroy(); self.fort2 = nil; end;
        if self.totalacrobacia ~= nil then self.totalacrobacia:destroy(); self.totalacrobacia = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.label185 ~= nil then self.label185:destroy(); self.label185 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.gradatletismo ~= nil then self.gradatletismo:destroy(); self.gradatletismo = nil; end;
        if self.modatletismo ~= nil then self.modatletismo:destroy(); self.modatletismo = nil; end;
        if self.label200 ~= nil then self.label200:destroy(); self.label200 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.npescoco ~= nil then self.npescoco:destroy(); self.npescoco = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.rectangle122 ~= nil then self.rectangle122:destroy(); self.rectangle122 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.gradmeditacao ~= nil then self.gradmeditacao:destroy(); self.gradmeditacao = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.label235 ~= nil then self.label235:destroy(); self.label235 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.totalfort ~= nil then self.totalfort:destroy(); self.totalfort = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.rectangle158 ~= nil then self.rectangle158:destroy(); self.rectangle158 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.modcavalgar ~= nil then self.modcavalgar:destroy(); self.modcavalgar = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.ca4 ~= nil then self.ca4:destroy(); self.ca4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rectangle195 ~= nil then self.rectangle195:destroy(); self.rectangle195 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.rectangle209 ~= nil then self.rectangle209:destroy(); self.rectangle209 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rectangle97 ~= nil then self.rectangle97:destroy(); self.rectangle97 = nil; end;
        if self.label215 ~= nil then self.label215:destroy(); self.label215 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label196 ~= nil then self.label196:destroy(); self.label196 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.outroscavalgar ~= nil then self.outroscavalgar:destroy(); self.outroscavalgar = nil; end;
        if self.descluva ~= nil then self.descluva:destroy(); self.descluva = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.label201 ~= nil then self.label201:destroy(); self.label201 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.totalvon ~= nil then self.totalvon:destroy(); self.totalvon = nil; end;
        if self.rectangle223 ~= nil then self.rectangle223:destroy(); self.rectangle223 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.ref1 ~= nil then self.ref1:destroy(); self.ref1 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.gradcura ~= nil then self.gradcura:destroy(); self.gradcura = nil; end;
        if self.rectangle162 ~= nil then self.rectangle162:destroy(); self.rectangle162 = nil; end;
        if self.rectangle175 ~= nil then self.rectangle175:destroy(); self.rectangle175 = nil; end;
        if self.rectangle187 ~= nil then self.rectangle187:destroy(); self.rectangle187 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label181 ~= nil then self.label181:destroy(); self.label181 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.rectangle197 ~= nil then self.rectangle197:destroy(); self.rectangle197 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.modcura ~= nil then self.modcura:destroy(); self.modcura = nil; end;
        if self.label199 ~= nil then self.label199:destroy(); self.label199 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.rectangle213 ~= nil then self.rectangle213:destroy(); self.rectangle213 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.rectangle189 ~= nil then self.rectangle189:destroy(); self.rectangle189 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.totalintuicao ~= nil then self.totalintuicao:destroy(); self.totalintuicao = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.rectangle199 ~= nil then self.rectangle199:destroy(); self.rectangle199 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.button54 ~= nil then self.button54:destroy(); self.button54 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle182 ~= nil then self.rectangle182:destroy(); self.rectangle182 = nil; end;
        if self.rectangle229 ~= nil then self.rectangle229:destroy(); self.rectangle229 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.totalpercepcao ~= nil then self.totalpercepcao:destroy(); self.totalpercepcao = nil; end;
        if self.rectangle146 ~= nil then self.rectangle146:destroy(); self.rectangle146 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.rectangle206 ~= nil then self.rectangle206:destroy(); self.rectangle206 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle191 ~= nil then self.rectangle191:destroy(); self.rectangle191 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.modoficio2 ~= nil then self.modoficio2:destroy(); self.modoficio2 = nil; end;
        if self.update ~= nil then self.update:destroy(); self.update = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.rectangle200 ~= nil then self.rectangle200:destroy(); self.rectangle200 = nil; end;
        if self.rectangle110 ~= nil then self.rectangle110:destroy(); self.rectangle110 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.rd ~= nil then self.rd:destroy(); self.rd = nil; end;
        if self.rectangle124 ~= nil then self.rectangle124:destroy(); self.rectangle124 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.outrosimagia ~= nil then self.outrosimagia:destroy(); self.outrosimagia = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label188 ~= nil then self.label188:destroy(); self.label188 = nil; end;
        if self.rectangle85 ~= nil then self.rectangle85:destroy(); self.rectangle85 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.button47 ~= nil then self.button47:destroy(); self.button47 = nil; end;
        if self.button56 ~= nil then self.button56:destroy(); self.button56 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.rectangle137 ~= nil then self.rectangle137:destroy(); self.rectangle137 = nil; end;
        if self.outrosoficio2 ~= nil then self.outrosoficio2:destroy(); self.outrosoficio2 = nil; end;
        if self.label177 ~= nil then self.label177:destroy(); self.label177 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.totalcavalgar ~= nil then self.totalcavalgar:destroy(); self.totalcavalgar = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.rectangle150 ~= nil then self.rectangle150:destroy(); self.rectangle150 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.gradsobrevivencia ~= nil then self.gradsobrevivencia:destroy(); self.gradsobrevivencia = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.outrosoficio1 ~= nil then self.outrosoficio1:destroy(); self.outrosoficio1 = nil; end;
        if self.Tormenta04 ~= nil then self.Tormenta04:destroy(); self.Tormenta04 = nil; end;
        if self.rectangle207 ~= nil then self.rectangle207:destroy(); self.rectangle207 = nil; end;
        if self.rectangle219 ~= nil then self.rectangle219:destroy(); self.rectangle219 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.XPNivel ~= nil then self.XPNivel:destroy(); self.XPNivel = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.rectangle114 ~= nil then self.rectangle114:destroy(); self.rectangle114 = nil; end;
        if self.rectangle205 ~= nil then self.rectangle205:destroy(); self.rectangle205 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.rectangle193 ~= nil then self.rectangle193:destroy(); self.rectangle193 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.label203 ~= nil then self.label203:destroy(); self.label203 = nil; end;
        if self.rectangle108 ~= nil then self.rectangle108:destroy(); self.rectangle108 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle87 ~= nil then self.rectangle87:destroy(); self.rectangle87 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.descanel ~= nil then self.descanel:destroy(); self.descanel = nil; end;
        if self.rectangle183 ~= nil then self.rectangle183:destroy(); self.rectangle183 = nil; end;
        if self.rectangle140 ~= nil then self.rectangle140:destroy(); self.rectangle140 = nil; end;
        if self.rectangle109 ~= nil then self.rectangle109:destroy(); self.rectangle109 = nil; end;
        if self.rectangle147 ~= nil then self.rectangle147:destroy(); self.rectangle147 = nil; end;
        if self.rectangle131 ~= nil then self.rectangle131:destroy(); self.rectangle131 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.rectangle89 ~= nil then self.rectangle89:destroy(); self.rectangle89 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.modatuacao2 ~= nil then self.modatuacao2:destroy(); self.modatuacao2 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.caarmadura ~= nil then self.caarmadura:destroy(); self.caarmadura = nil; end;
        if self.rectangle230 ~= nil then self.rectangle230:destroy(); self.rectangle230 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label222 ~= nil then self.label222:destroy(); self.label222 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.nivel ~= nil then self.nivel:destroy(); self.nivel = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.rectangle224 ~= nil then self.rectangle224:destroy(); self.rectangle224 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.label221 ~= nil then self.label221:destroy(); self.label221 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rectangle226 ~= nil then self.rectangle226:destroy(); self.rectangle226 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.rectangle159 ~= nil then self.rectangle159:destroy(); self.rectangle159 = nil; end;
        if self.rectangle164 ~= nil then self.rectangle164:destroy(); self.rectangle164 = nil; end;
        if self.outrosatuacao1 ~= nil then self.outrosatuacao1:destroy(); self.outrosatuacao1 = nil; end;
        if self.rectangle117 ~= nil then self.rectangle117:destroy(); self.rectangle117 = nil; end;
        if self.rectangle92 ~= nil then self.rectangle92:destroy(); self.rectangle92 = nil; end;
        if self.rectangle96 ~= nil then self.rectangle96:destroy(); self.rectangle96 = nil; end;
        if self.label202 ~= nil then self.label202:destroy(); self.label202 = nil; end;
        if self.label205 ~= nil then self.label205:destroy(); self.label205 = nil; end;
        if self.outrosatletismo ~= nil then self.outrosatletismo:destroy(); self.outrosatletismo = nil; end;
        if self.rectangle220 ~= nil then self.rectangle220:destroy(); self.rectangle220 = nil; end;
        if self.totaladestrar ~= nil then self.totaladestrar:destroy(); self.totaladestrar = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.outrosiniciativa ~= nil then self.outrosiniciativa:destroy(); self.outrosiniciativa = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.label210 ~= nil then self.label210:destroy(); self.label210 = nil; end;
        if self.Tormenta05 ~= nil then self.Tormenta05:destroy(); self.Tormenta05 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.label229 ~= nil then self.label229:destroy(); self.label229 = nil; end;
        if self.rectangle112 ~= nil then self.rectangle112:destroy(); self.rectangle112 = nil; end;
        if self.rectangle98 ~= nil then self.rectangle98:destroy(); self.rectangle98 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.ca3 ~= nil then self.ca3:destroy(); self.ca3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.label179 ~= nil then self.label179:destroy(); self.label179 = nil; end;
        if self.rectangle111 ~= nil then self.rectangle111:destroy(); self.rectangle111 = nil; end;
        if self.label233 ~= nil then self.label233:destroy(); self.label233 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.penarmadura ~= nil then self.penarmadura:destroy(); self.penarmadura = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.rectangle152 ~= nil then self.rectangle152:destroy(); self.rectangle152 = nil; end;
        if self.rectangle214 ~= nil then self.rectangle214:destroy(); self.rectangle214 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rectangle154 ~= nil then self.rectangle154:destroy(); self.rectangle154 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.rectangle160 ~= nil then self.rectangle160:destroy(); self.rectangle160 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle134 ~= nil then self.rectangle134:destroy(); self.rectangle134 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.rectangle178 ~= nil then self.rectangle178:destroy(); self.rectangle178 = nil; end;
        if self.narmadura ~= nil then self.narmadura:destroy(); self.narmadura = nil; end;
        if self.label213 ~= nil then self.label213:destroy(); self.label213 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.modconhecimento2 ~= nil then self.modconhecimento2:destroy(); self.modconhecimento2 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.rectangle127 ~= nil then self.rectangle127:destroy(); self.rectangle127 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.label217 ~= nil then self.label217:destroy(); self.label217 = nil; end;
        if self.button63 ~= nil then self.button63:destroy(); self.button63 = nil; end;
        if self.label231 ~= nil then self.label231:destroy(); self.label231 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.Tormenta01 ~= nil then self.Tormenta01:destroy(); self.Tormenta01 = nil; end;
        if self.label189 ~= nil then self.label189:destroy(); self.label189 = nil; end;
        if self.rectangle129 ~= nil then self.rectangle129:destroy(); self.rectangle129 = nil; end;
        if self.label180 ~= nil then self.label180:destroy(); self.label180 = nil; end;
        if self.XPAtual ~= nil then self.XPAtual:destroy(); self.XPAtual = nil; end;
        if self.label172 ~= nil then self.label172:destroy(); self.label172 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.outrospercepcao ~= nil then self.outrospercepcao:destroy(); self.outrospercepcao = nil; end;
        if self.rectangle123 ~= nil then self.rectangle123:destroy(); self.rectangle123 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.rectangle210 ~= nil then self.rectangle210:destroy(); self.rectangle210 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.button42 ~= nil then self.button42:destroy(); self.button42 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.rectangle151 ~= nil then self.rectangle151:destroy(); self.rectangle151 = nil; end;
        if self.rectangle177 ~= nil then self.rectangle177:destroy(); self.rectangle177 = nil; end;
        if self.gradpercepcao ~= nil then self.gradpercepcao:destroy(); self.gradpercepcao = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.rectangle161 ~= nil then self.rectangle161:destroy(); self.rectangle161 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label232 ~= nil then self.label232:destroy(); self.label232 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.outrosmeditacao ~= nil then self.outrosmeditacao:destroy(); self.outrosmeditacao = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.label187 ~= nil then self.label187:destroy(); self.label187 = nil; end;
        if self.ncintura ~= nil then self.ncintura:destroy(); self.ncintura = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.modiniciativa ~= nil then self.modiniciativa:destroy(); self.modiniciativa = nil; end;
        if self.rectangle116 ~= nil then self.rectangle116:destroy(); self.rectangle116 = nil; end;
        if self.gradladinagem ~= nil then self.gradladinagem:destroy(); self.gradladinagem = nil; end;
        if self.rectangle125 ~= nil then self.rectangle125:destroy(); self.rectangle125 = nil; end;
        if self.rectangle95 ~= nil then self.rectangle95:destroy(); self.rectangle95 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.fort1 ~= nil then self.fort1:destroy(); self.fort1 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.button61 ~= nil then self.button61:destroy(); self.button61 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.rectangle113 ~= nil then self.rectangle113:destroy(); self.rectangle113 = nil; end;
        if self.rectangle144 ~= nil then self.rectangle144:destroy(); self.rectangle144 = nil; end;
        if self.falhamescudo ~= nil then self.falhamescudo:destroy(); self.falhamescudo = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.rectangle190 ~= nil then self.rectangle190:destroy(); self.rectangle190 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.totalcac ~= nil then self.totalcac:destroy(); self.totalcac = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.nescudo ~= nil then self.nescudo:destroy(); self.nescudo = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.rectangle194 ~= nil then self.rectangle194:destroy(); self.rectangle194 = nil; end;
        if self.nanel ~= nil then self.nanel:destroy(); self.nanel = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.outroscura ~= nil then self.outroscura:destroy(); self.outroscura = nil; end;
        if self.desmnarmadura ~= nil then self.desmnarmadura:destroy(); self.desmnarmadura = nil; end;
        if self.rectangle234 ~= nil then self.rectangle234:destroy(); self.rectangle234 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.von1 ~= nil then self.von1:destroy(); self.von1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.modoinformacao ~= nil then self.modoinformacao:destroy(); self.modoinformacao = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.Tormenta06 ~= nil then self.Tormenta06:destroy(); self.Tormenta06 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.rectangle149 ~= nil then self.rectangle149:destroy(); self.rectangle149 = nil; end;
        if self.outrosintimidacao ~= nil then self.outrosintimidacao:destroy(); self.outrosintimidacao = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.rectangle172 ~= nil then self.rectangle172:destroy(); self.rectangle172 = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.modinteligencia ~= nil then self.modinteligencia:destroy(); self.modinteligencia = nil; end;
        if self.rectangle153 ~= nil then self.rectangle153:destroy(); self.rectangle153 = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.modatuacao1 ~= nil then self.modatuacao1:destroy(); self.modatuacao1 = nil; end;
        if self.modintuicao ~= nil then self.modintuicao:destroy(); self.modintuicao = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.label227 ~= nil then self.label227:destroy(); self.label227 = nil; end;
        if self.rectangle222 ~= nil then self.rectangle222:destroy(); self.rectangle222 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.rectangle202 ~= nil then self.rectangle202:destroy(); self.rectangle202 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.modladinagem ~= nil then self.modladinagem:destroy(); self.modladinagem = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label176 ~= nil then self.label176:destroy(); self.label176 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.rectangle143 ~= nil then self.rectangle143:destroy(); self.rectangle143 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.rectangle218 ~= nil then self.rectangle218:destroy(); self.rectangle218 = nil; end;
        if self.gradatuacao1 ~= nil then self.gradatuacao1:destroy(); self.gradatuacao1 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.label212 ~= nil then self.label212:destroy(); self.label212 = nil; end;
        if self.rectangle168 ~= nil then self.rectangle168:destroy(); self.rectangle168 = nil; end;
        if self.modsobrevivencia ~= nil then self.modsobrevivencia:destroy(); self.modsobrevivencia = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.moddestreza ~= nil then self.moddestreza:destroy(); self.moddestreza = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.rectangle155 ~= nil then self.rectangle155:destroy(); self.rectangle155 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.gradoinformacao ~= nil then self.gradoinformacao:destroy(); self.gradoinformacao = nil; end;
        if self.button43 ~= nil then self.button43:destroy(); self.button43 = nil; end;
        if self.rectangle145 ~= nil then self.rectangle145:destroy(); self.rectangle145 = nil; end;
        if self.totalPrata ~= nil then self.totalPrata:destroy(); self.totalPrata = nil; end;
        if self.rectangle105 ~= nil then self.rectangle105:destroy(); self.rectangle105 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle180 ~= nil then self.rectangle180:destroy(); self.rectangle180 = nil; end;
        if self.label225 ~= nil then self.label225:destroy(); self.label225 = nil; end;
        if self.outrosladinagem ~= nil then self.outrosladinagem:destroy(); self.outrosladinagem = nil; end;
        if self.rectangle171 ~= nil then self.rectangle171:destroy(); self.rectangle171 = nil; end;
        if self.totaloinformacao ~= nil then self.totaloinformacao:destroy(); self.totaloinformacao = nil; end;
        if self.rectangle94 ~= nil then self.rectangle94:destroy(); self.rectangle94 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.rectangle132 ~= nil then self.rectangle132:destroy(); self.rectangle132 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.label228 ~= nil then self.label228:destroy(); self.label228 = nil; end;
        if self.totalfurtividade ~= nil then self.totalfurtividade:destroy(); self.totalfurtividade = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.modenganacao ~= nil then self.modenganacao:destroy(); self.modenganacao = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.graddiplomacia ~= nil then self.graddiplomacia:destroy(); self.graddiplomacia = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.rectangle99 ~= nil then self.rectangle99:destroy(); self.rectangle99 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.rectangle221 ~= nil then self.rectangle221:destroy(); self.rectangle221 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.rectangle174 ~= nil then self.rectangle174:destroy(); self.rectangle174 = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.rectangle173 ~= nil then self.rectangle173:destroy(); self.rectangle173 = nil; end;
        if self.rectangle235 ~= nil then self.rectangle235:destroy(); self.rectangle235 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.label170 ~= nil then self.label170:destroy(); self.label170 = nil; end;
        if self.label194 ~= nil then self.label194:destroy(); self.label194 = nil; end;
        if self.label206 ~= nil then self.label206:destroy(); self.label206 = nil; end;
        if self.gradatuacao2 ~= nil then self.gradatuacao2:destroy(); self.gradatuacao2 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.totalconhecimento2 ~= nil then self.totalconhecimento2:destroy(); self.totalconhecimento2 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.button51 ~= nil then self.button51:destroy(); self.button51 = nil; end;
        if self.moddiplomacia ~= nil then self.moddiplomacia:destroy(); self.moddiplomacia = nil; end;
        if self.label198 ~= nil then self.label198:destroy(); self.label198 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.gradconhecimento1 ~= nil then self.gradconhecimento1:destroy(); self.gradconhecimento1 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.label224 ~= nil then self.label224:destroy(); self.label224 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.rectangle170 ~= nil then self.rectangle170:destroy(); self.rectangle170 = nil; end;
        if self.label223 ~= nil then self.label223:destroy(); self.label223 = nil; end;
        if self.outrosacrobacia ~= nil then self.outrosacrobacia:destroy(); self.outrosacrobacia = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.gradimagia ~= nil then self.gradimagia:destroy(); self.gradimagia = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.totalatuacao2 ~= nil then self.totalatuacao2:destroy(); self.totalatuacao2 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.rectangle185 ~= nil then self.rectangle185:destroy(); self.rectangle185 = nil; end;
        if self.modfurtividade ~= nil then self.modfurtividade:destroy(); self.modfurtividade = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle119 ~= nil then self.rectangle119:destroy(); self.rectangle119 = nil; end;
        if self.label216 ~= nil then self.label216:destroy(); self.label216 = nil; end;
        if self.rectangle192 ~= nil then self.rectangle192:destroy(); self.rectangle192 = nil; end;
        if self.rectangle184 ~= nil then self.rectangle184:destroy(); self.rectangle184 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.penescudo ~= nil then self.penescudo:destroy(); self.penescudo = nil; end;
        if self.ncabeca ~= nil then self.ncabeca:destroy(); self.ncabeca = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.acuidade ~= nil then self.acuidade:destroy(); self.acuidade = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.outrosdiplomacia ~= nil then self.outrosdiplomacia:destroy(); self.outrosdiplomacia = nil; end;
        if self.button55 ~= nil then self.button55:destroy(); self.button55 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.label214 ~= nil then self.label214:destroy(); self.label214 = nil; end;
        if self.totalca ~= nil then self.totalca:destroy(); self.totalca = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.rectangle157 ~= nil then self.rectangle157:destroy(); self.rectangle157 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.dis2 ~= nil then self.dis2:destroy(); self.dis2 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.edtMacro ~= nil then self.edtMacro:destroy(); self.edtMacro = nil; end;
        if self.rectangle128 ~= nil then self.rectangle128:destroy(); self.rectangle128 = nil; end;
        if self.totalconhecimento1 ~= nil then self.totalconhecimento1:destroy(); self.totalconhecimento1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.rectangle186 ~= nil then self.rectangle186:destroy(); self.rectangle186 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.falhamarmadura ~= nil then self.falhamarmadura:destroy(); self.falhamarmadura = nil; end;
        if self.outrosconhecimento1 ~= nil then self.outrosconhecimento1:destroy(); self.outrosconhecimento1 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.von2 ~= nil then self.von2:destroy(); self.von2 = nil; end;
        if self.cac2 ~= nil then self.cac2:destroy(); self.cac2 = nil; end;
        if self.button58 ~= nil then self.button58:destroy(); self.button58 = nil; end;
        if self.outrosjogatina ~= nil then self.outrosjogatina:destroy(); self.outrosjogatina = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.button41 ~= nil then self.button41:destroy(); self.button41 = nil; end;
        if self.label175 ~= nil then self.label175:destroy(); self.label175 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.gradoficio2 ~= nil then self.gradoficio2:destroy(); self.gradoficio2 = nil; end;
        if self.ca2 ~= nil then self.ca2:destroy(); self.ca2 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.totalsobrevivencia ~= nil then self.totalsobrevivencia:destroy(); self.totalsobrevivencia = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.gradintimidacao ~= nil then self.gradintimidacao:destroy(); self.gradintimidacao = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.rectangle176 ~= nil then self.rectangle176:destroy(); self.rectangle176 = nil; end;
        if self.button65 ~= nil then self.button65:destroy(); self.button65 = nil; end;
        if self.rectangle130 ~= nil then self.rectangle130:destroy(); self.rectangle130 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.gradiniciativa ~= nil then self.gradiniciativa:destroy(); self.gradiniciativa = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.label207 ~= nil then self.label207:destroy(); self.label207 = nil; end;
        if self.label209 ~= nil then self.label209:destroy(); self.label209 = nil; end;
        if self.rectangle169 ~= nil then self.rectangle169:destroy(); self.rectangle169 = nil; end;
        if self.rectangle91 ~= nil then self.rectangle91:destroy(); self.rectangle91 = nil; end;
        if self.rectangle93 ~= nil then self.rectangle93:destroy(); self.rectangle93 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.button64 ~= nil then self.button64:destroy(); self.button64 = nil; end;
        if self.totalPlatina ~= nil then self.totalPlatina:destroy(); self.totalPlatina = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.rectangle237 ~= nil then self.rectangle237:destroy(); self.rectangle237 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.label193 ~= nil then self.label193:destroy(); self.label193 = nil; end;
        if self.totalOuro ~= nil then self.totalOuro:destroy(); self.totalOuro = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.desccabeca ~= nil then self.desccabeca:destroy(); self.desccabeca = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.button52 ~= nil then self.button52:destroy(); self.button52 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.button53 ~= nil then self.button53:destroy(); self.button53 = nil; end;
        if self.descpescoco ~= nil then self.descpescoco:destroy(); self.descpescoco = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.atuaisPM ~= nil then self.atuaisPM:destroy(); self.atuaisPM = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.rectangle107 ~= nil then self.rectangle107:destroy(); self.rectangle107 = nil; end;
        if self.totalref ~= nil then self.totalref:destroy(); self.totalref = nil; end;
        if self.label234 ~= nil then self.label234:destroy(); self.label234 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.rectangle141 ~= nil then self.rectangle141:destroy(); self.rectangle141 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.gradenganacao ~= nil then self.gradenganacao:destroy(); self.gradenganacao = nil; end;
        if self.label190 ~= nil then self.label190:destroy(); self.label190 = nil; end;
        if self.modacrobacia ~= nil then self.modacrobacia:destroy(); self.modacrobacia = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle142 ~= nil then self.rectangle142:destroy(); self.rectangle142 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.descmao1 ~= nil then self.descmao1:destroy(); self.descmao1 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label211 ~= nil then self.label211:destroy(); self.label211 = nil; end;
        if self.button59 ~= nil then self.button59:destroy(); self.button59 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.rectangle166 ~= nil then self.rectangle166:destroy(); self.rectangle166 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.gradintuicao ~= nil then self.gradintuicao:destroy(); self.gradintuicao = nil; end;
        if self.label197 ~= nil then self.label197:destroy(); self.label197 = nil; end;
        if self.totaldis ~= nil then self.totaldis:destroy(); self.totaldis = nil; end;
        if self.rectangle179 ~= nil then self.rectangle179:destroy(); self.rectangle179 = nil; end;
        if self.rectangle100 ~= nil then self.rectangle100:destroy(); self.rectangle100 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.descpes ~= nil then self.descpes:destroy(); self.descpes = nil; end;
        if self.rectangle212 ~= nil then self.rectangle212:destroy(); self.rectangle212 = nil; end;
        if self.rectangle163 ~= nil then self.rectangle163:destroy(); self.rectangle163 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label237 ~= nil then self.label237:destroy(); self.label237 = nil; end;
        if self.gradcavalgar ~= nil then self.gradcavalgar:destroy(); self.gradcavalgar = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.button60 ~= nil then self.button60:destroy(); self.button60 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.rectangle90 ~= nil then self.rectangle90:destroy(); self.rectangle90 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.label191 ~= nil then self.label191:destroy(); self.label191 = nil; end;
        if self.rectangle231 ~= nil then self.rectangle231:destroy(); self.rectangle231 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.nluva ~= nil then self.nluva:destroy(); self.nluva = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.label182 ~= nil then self.label182:destroy(); self.label182 = nil; end;
        if self.totalPM ~= nil then self.totalPM:destroy(); self.totalPM = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.totalimagia ~= nil then self.totalimagia:destroy(); self.totalimagia = nil; end;
        if self.gradconhecimento2 ~= nil then self.gradconhecimento2:destroy(); self.gradconhecimento2 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.modcarisma ~= nil then self.modcarisma:destroy(); self.modcarisma = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.desccintura ~= nil then self.desccintura:destroy(); self.desccintura = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.rectangle204 ~= nil then self.rectangle204:destroy(); self.rectangle204 = nil; end;
        if self.gradfurtividade ~= nil then self.gradfurtividade:destroy(); self.gradfurtividade = nil; end;
        if self.totalCobre ~= nil then self.totalCobre:destroy(); self.totalCobre = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.caescudo ~= nil then self.caescudo:destroy(); self.caescudo = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.rectangle236 ~= nil then self.rectangle236:destroy(); self.rectangle236 = nil; end;
        if self.label171 ~= nil then self.label171:destroy(); self.label171 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.rectangle86 ~= nil then self.rectangle86:destroy(); self.rectangle86 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.label178 ~= nil then self.label178:destroy(); self.label178 = nil; end;
        if self.button62 ~= nil then self.button62:destroy(); self.button62 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.gradadestrar ~= nil then self.gradadestrar:destroy(); self.gradadestrar = nil; end;
        if self.modoficio1 ~= nil then self.modoficio1:destroy(); self.modoficio1 = nil; end;
        if self.npes ~= nil then self.npes:destroy(); self.npes = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label174 ~= nil then self.label174:destroy(); self.label174 = nil; end;
        if self.button49 ~= nil then self.button49:destroy(); self.button49 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.rectangle228 ~= nil then self.rectangle228:destroy(); self.rectangle228 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.outrosatuacao2 ~= nil then self.outrosatuacao2:destroy(); self.outrosatuacao2 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.descmao2 ~= nil then self.descmao2:destroy(); self.descmao2 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle136 ~= nil then self.rectangle136:destroy(); self.rectangle136 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.rectangle225 ~= nil then self.rectangle225:destroy(); self.rectangle225 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.totaldiplomacia ~= nil then self.totaldiplomacia:destroy(); self.totaldiplomacia = nil; end;
        if self.outrosfurtividade ~= nil then self.outrosfurtividade:destroy(); self.outrosfurtividade = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.label173 ~= nil then self.label173:destroy(); self.label173 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.calculos ~= nil then self.calculos:destroy(); self.calculos = nil; end;
        if self.totalatletismo ~= nil then self.totalatletismo:destroy(); self.totalatletismo = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.modimagia ~= nil then self.modimagia:destroy(); self.modimagia = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.rectangle227 ~= nil then self.rectangle227:destroy(); self.rectangle227 = nil; end;
        if self.outrosadestrar ~= nil then self.outrosadestrar:destroy(); self.outrosadestrar = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.rectangle135 ~= nil then self.rectangle135:destroy(); self.rectangle135 = nil; end;
        if self.rectangle133 ~= nil then self.rectangle133:destroy(); self.rectangle133 = nil; end;
        if self.button50 ~= nil then self.button50:destroy(); self.button50 = nil; end;
        if self.rectangle181 ~= nil then self.rectangle181:destroy(); self.rectangle181 = nil; end;
        if self.button48 ~= nil then self.button48:destroy(); self.button48 = nil; end;
        if self.rectangle167 ~= nil then self.rectangle167:destroy(); self.rectangle167 = nil; end;
        if self.rectangle233 ~= nil then self.rectangle233:destroy(); self.rectangle233 = nil; end;
        if self.ref2 ~= nil then self.ref2:destroy(); self.ref2 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.rectangle118 ~= nil then self.rectangle118:destroy(); self.rectangle118 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.label219 ~= nil then self.label219:destroy(); self.label219 = nil; end;
        if self.label208 ~= nil then self.label208:destroy(); self.label208 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.totalladinagem ~= nil then self.totalladinagem:destroy(); self.totalladinagem = nil; end;
        if self.button57 ~= nil then self.button57:destroy(); self.button57 = nil; end;
        if self.rectangle120 ~= nil then self.rectangle120:destroy(); self.rectangle120 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.rectangle139 ~= nil then self.rectangle139:destroy(); self.rectangle139 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.totaljogatina ~= nil then self.totaljogatina:destroy(); self.totaljogatina = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.totalmeditacao ~= nil then self.totalmeditacao:destroy(); self.totalmeditacao = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.label204 ~= nil then self.label204:destroy(); self.label204 = nil; end;
        if self.rectangle215 ~= nil then self.rectangle215:destroy(); self.rectangle215 = nil; end;
        if self.totaloficio1 ~= nil then self.totaloficio1:destroy(); self.totaloficio1 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.modconhecimento1 ~= nil then self.modconhecimento1:destroy(); self.modconhecimento1 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle102 ~= nil then self.rectangle102:destroy(); self.rectangle102 = nil; end;
        if self.rectangle165 ~= nil then self.rectangle165:destroy(); self.rectangle165 = nil; end;
        if self.modjogatina ~= nil then self.modjogatina:destroy(); self.modjogatina = nil; end;
        if self.label226 ~= nil then self.label226:destroy(); self.label226 = nil; end;
        if self.label218 ~= nil then self.label218:destroy(); self.label218 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.rectangle196 ~= nil then self.rectangle196:destroy(); self.rectangle196 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.gradoficio1 ~= nil then self.gradoficio1:destroy(); self.gradoficio1 = nil; end;
        if self.label183 ~= nil then self.label183:destroy(); self.label183 = nil; end;
        if self.outrossobrevivencia ~= nil then self.outrossobrevivencia:destroy(); self.outrossobrevivencia = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.rectangle106 ~= nil then self.rectangle106:destroy(); self.rectangle106 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.gradjogatina ~= nil then self.gradjogatina:destroy(); self.gradjogatina = nil; end;
        if self.rectangle84 ~= nil then self.rectangle84:destroy(); self.rectangle84 = nil; end;
        if self.button46 ~= nil then self.button46:destroy(); self.button46 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.modconstituicao ~= nil then self.modconstituicao:destroy(); self.modconstituicao = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.rectangle188 ~= nil then self.rectangle188:destroy(); self.rectangle188 = nil; end;
        if self.nmao2 ~= nil then self.nmao2:destroy(); self.nmao2 = nil; end;
        if self.totalintimidacao ~= nil then self.totalintimidacao:destroy(); self.totalintimidacao = nil; end;
        if self.outrosintuicao ~= nil then self.outrosintuicao:destroy(); self.outrosintuicao = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.rectangle216 ~= nil then self.rectangle216:destroy(); self.rectangle216 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Tormentafrm = {
    newEditor = newTormentafrm, 
    new = newTormentafrm, 
    name = "Tormentafrm", 
    dataType = "Tormenta.RPGFirecast", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Tormenta RPG 7.8", 
    description=""};

Tormentafrm = _Tormentafrm;
rrpg.registrarForm(_Tormentafrm);
rrpg.registrarDataType(_Tormentafrm);

return _Tormentafrm;
