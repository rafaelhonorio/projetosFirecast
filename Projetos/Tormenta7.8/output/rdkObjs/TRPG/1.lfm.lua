require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newTormenta01()
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
    obj:setName("Tormenta01");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
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
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'calculos','forca','destreza','constituicao','inteligencia','sabedoria','carisma', 'ca3','ca4','ca5','fort3','ref3','von3','acuidade','pontaria','bba','dis3','dis4','cac3','cac4', 'nvclasse1','nvclasse2','nvclasse3','nvclasse4','nvclasse5','nvclasse6','nvclasse7','nvclasse8','nvclasse9','nvclasse10', 'hab_fort','hab_ref','hab_von','__recalc'});
    obj.dataLink1:setName("dataLink1");



			-- === Compatibilidade / correções ===
			-- Alguns pacotes/versões esperam 'GUI' global, mas o padrão atual é 'gui' (require("rrpgGUI")).
			if GUI == nil then GUI = gui end

			-- 'desCalculos' era chamado no 1.lfm (onNodeReady / checkbox) mas não existia; mantemos compat.
			if desCalculos == nil then
				function desCalculos()
					-- se existir a versão nova (desCalculos2), executa; se não, não quebra a ficha.
					if desCalculos2 ~= nil then
						pcall(desCalculos2)
					end
				end
			end

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

		


    obj._e_event0 = obj:addEventListener("onNodeReady",
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
            GUI.openInBrowser('https://github.com/rafaelhonorio/projetosFirecast/raw/main/Projetos/Tormenta7.8/output/Tormenta7.8.rpk');
        end, obj);

    obj._e_event17 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            recalcAll();
        end, obj);

    function obj:_releaseEvents()
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

        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rd ~= nil then self.rd:destroy(); self.rd = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.totalcac ~= nil then self.totalcac:destroy(); self.totalcac = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.modforca ~= nil then self.modforca:destroy(); self.modforca = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.von1 ~= nil then self.von1:destroy(); self.von1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.modsabedoria ~= nil then self.modsabedoria:destroy(); self.modsabedoria = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.ca1 ~= nil then self.ca1:destroy(); self.ca1 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.totalref ~= nil then self.totalref:destroy(); self.totalref = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.modinteligencia ~= nil then self.modinteligencia:destroy(); self.modinteligencia = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.nivel ~= nil then self.nivel:destroy(); self.nivel = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.totaldis ~= nil then self.totaldis:destroy(); self.totaldis = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.pontaria ~= nil then self.pontaria:destroy(); self.pontaria = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.moddestreza ~= nil then self.moddestreza:destroy(); self.moddestreza = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.modcarisma ~= nil then self.modcarisma:destroy(); self.modcarisma = nil; end;
        if self.fort2 ~= nil then self.fort2:destroy(); self.fort2 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.ca3 ~= nil then self.ca3:destroy(); self.ca3 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.totalfort ~= nil then self.totalfort:destroy(); self.totalfort = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.ca4 ~= nil then self.ca4:destroy(); self.ca4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.calculos ~= nil then self.calculos:destroy(); self.calculos = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.acuidade ~= nil then self.acuidade:destroy(); self.acuidade = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.totalca ~= nil then self.totalca:destroy(); self.totalca = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.ref2 ~= nil then self.ref2:destroy(); self.ref2 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.dis2 ~= nil then self.dis2:destroy(); self.dis2 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.totalvon ~= nil then self.totalvon:destroy(); self.totalvon = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.ref1 ~= nil then self.ref1:destroy(); self.ref1 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.von2 ~= nil then self.von2:destroy(); self.von2 = nil; end;
        if self.cac2 ~= nil then self.cac2:destroy(); self.cac2 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.fort1 ~= nil then self.fort1:destroy(); self.fort1 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.ca2 ~= nil then self.ca2:destroy(); self.ca2 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.modconstituicao ~= nil then self.modconstituicao:destroy(); self.modconstituicao = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.update ~= nil then self.update:destroy(); self.update = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Tormenta01 = {
    newEditor = newTormenta01, 
    new = newTormenta01, 
    name = "Tormenta01", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta01 = _Tormenta01;
rrpg.registrarForm(_Tormenta01);

return _Tormenta01;
