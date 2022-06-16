require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_OsMundosDosMortosfrm()
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
    obj:setName("OsMundosDosMortosfrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Cast.OsMundosDosMortos");
    obj:setTitle("Ficha Os Mundos Dos Mortos");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Base");
    obj.tab1:setName("tab1");

    obj.OsMundosDosMortos1 = GUI.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortos1:setParent(obj.tab1);
    obj.OsMundosDosMortos1:setName("OsMundosDosMortos1");
    obj.OsMundosDosMortos1:setAlign("client");
    obj.OsMundosDosMortos1:setTheme("dark");
    obj.OsMundosDosMortos1:setLockWhileNodeIsLoading(true);

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.OsMundosDosMortos1);
    obj.image1:setAlign("client");
    obj.image1:setField("backgrounding");
    obj.image1:setStyle("stretch");
    obj.image1:setName("image1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.OsMundosDosMortos1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(373);
    obj.rectangle1:setTop(33);
    obj.rectangle1:setWidth(135);
    obj.rectangle1:setHeight(135);
    obj.rectangle1:setColor("DimGray");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox1);
    obj.label1:setLeft(401);
    obj.label1:setTop(65);
    obj.label1:setWidth(80);
    obj.label1:setHeight(60);
    obj.label1:setText("Sem Avatar");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setField("imagempersona");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(373);
    obj.image2:setTop(33);
    obj.image2:setWidth(135);
    obj.image2:setHeight(135);
    obj.image2:setName("image2");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(880);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("gray");
    obj.rectangle2:setName("rectangle2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(8);
    obj.label2:setTop(5);
    obj.label2:setWidth(138);
    obj.label2:setHeight(20);
    obj.label2:setText("Dados do Personagem");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.backgroundimg = GUI.fromHandle(_obj_newObject("button"));
    obj.backgroundimg:setParent(obj.layout1);
    obj.backgroundimg:setName("backgroundimg");
    obj.backgroundimg:setLeft(830);
    obj.backgroundimg:setTop(2);
    obj.backgroundimg:setWidth(40);
    obj.backgroundimg:setHeight(25);
    obj.backgroundimg:setText("BG");
    obj.backgroundimg:setCanFocus(false);
    obj.backgroundimg:setHint("Altera a imagem de fundo da ficha.");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(170);
    obj.layout2:setWidth(880);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("gray");
    obj.rectangle3:setName("rectangle3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(8);
    obj.label3:setTop(5);
    obj.label3:setWidth(138);
    obj.label3:setHeight(20);
    obj.label3:setText("Atributos");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(695);
    obj.label4:setTop(5);
    obj.label4:setWidth(148);
    obj.label4:setHeight(20);
    obj.label4:setText("Experiência:");
    obj.label4:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.exptotal = GUI.fromHandle(_obj_newObject("edit"));
    obj.exptotal:setParent(obj.layout2);
    obj.exptotal:setName("exptotal");
    obj.exptotal:setLeft(780);
    obj.exptotal:setTop(2);
    obj.exptotal:setWidth(40);
    obj.exptotal:setHeight(25);
    obj.exptotal:setType("number");
    obj.exptotal:setField("exptotal");
    obj.exptotal:setHorzTextAlign("center");

    obj.expatual = GUI.fromHandle(_obj_newObject("edit"));
    obj.expatual:setParent(obj.layout2);
    obj.expatual:setName("expatual");
    obj.expatual:setLeft(830);
    obj.expatual:setTop(2);
    obj.expatual:setWidth(40);
    obj.expatual:setHeight(25);
    obj.expatual:setType("number");
    obj.expatual:setField("expatual");
    obj.expatual:setHorzTextAlign("center");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(415);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("gray");
    obj.rectangle4:setName("rectangle4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setLeft(8);
    obj.label5:setTop(5);
    obj.label5:setWidth(168);
    obj.label5:setHeight(20);
    obj.label5:setText("Habilidades");
    obj.label5:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(38);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(125);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(5);
    obj.layout5:setTop(5);
    obj.layout5:setWidth(290);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(80);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout5);
    obj.label6:setLeft(8);
    obj.label6:setTop(5);
    obj.label6:setWidth(77);
    obj.label6:setHeight(20);
    obj.label6:setText("Nome");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setFontSize(12);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

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
    obj.layout6:setLeft(580);
    obj.layout6:setTop(5);
    obj.layout6:setWidth(290);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setLeft(5);
    obj.rectangle6:setTop(0);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(80);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout6);
    obj.label7:setLeft(8);
    obj.label7:setTop(5);
    obj.label7:setWidth(77);
    obj.label7:setHeight(20);
    obj.label7:setText("Classe");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setFontSize(12);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setLeft(90);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(200);
    obj.edit2:setHeight(25);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setField("classe");
    obj.edit2:setType("text");
    obj.edit2:setName("edit2");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout4);
    obj.layout7:setLeft(5);
    obj.layout7:setTop(35);
    obj.layout7:setWidth(290);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(80);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout7);
    obj.label8:setLeft(8);
    obj.label8:setTop(5);
    obj.label8:setWidth(77);
    obj.label8:setHeight(20);
    obj.label8:setText("Personalidade");
    obj.label8:setHorzTextAlign("leading");
    obj.label8:setFontSize(11);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout7);
    obj.edit3:setLeft(90);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("personalidade");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout4);
    obj.layout8:setLeft(580);
    obj.layout8:setTop(35);
    obj.layout8:setWidth(290);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setLeft(5);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout8);
    obj.label9:setLeft(8);
    obj.label9:setTop(5);
    obj.label9:setWidth(77);
    obj.label9:setHeight(20);
    obj.label9:setText("Nv da Classe");
    obj.label9:setHorzTextAlign("leading");
    obj.label9:setFontSize(12);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setLeft(90);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("nvclasse");
    obj.edit4:setType("number");
    obj.edit4:setName("edit4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout4);
    obj.layout9:setLeft(5);
    obj.layout9:setTop(65);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setLeft(5);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setLeft(8);
    obj.label10:setTop(5);
    obj.label10:setWidth(77);
    obj.label10:setHeight(20);
    obj.label10:setText("Altura/Peso");
    obj.label10:setHorzTextAlign("leading");
    obj.label10:setFontSize(12);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout9);
    obj.edit5:setLeft(90);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("altura-peso");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout4);
    obj.layout10:setLeft(580);
    obj.layout10:setTop(65);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setLeft(5);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout10);
    obj.label11:setLeft(8);
    obj.label11:setTop(5);
    obj.label11:setWidth(77);
    obj.label11:setHeight(20);
    obj.label11:setText("Alcunha");
    obj.label11:setHorzTextAlign("leading");
    obj.label11:setFontSize(12);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout10);
    obj.edit6:setLeft(90);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("alcunha");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout4);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(95);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout11);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout11);
    obj.label12:setLeft(8);
    obj.label12:setTop(5);
    obj.label12:setWidth(77);
    obj.label12:setHeight(20);
    obj.label12:setText("Idade");
    obj.label12:setHorzTextAlign("leading");
    obj.label12:setFontSize(12);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout11);
    obj.edit7:setLeft(90);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("idade");
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout4);
    obj.layout12:setLeft(580);
    obj.layout12:setTop(95);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout12);
    obj.rectangle12:setLeft(5);
    obj.rectangle12:setTop(0);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(80);
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout12);
    obj.label13:setLeft(8);
    obj.label13:setTop(5);
    obj.label13:setWidth(77);
    obj.label13:setHeight(20);
    obj.label13:setText("Grupo");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(12);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout12);
    obj.edit8:setLeft(90);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("grupo");
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setTop(211);
    obj.layout13:setWidth(880);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout13);
    obj.rectangle13:setLeft(8);
    obj.rectangle13:setColor("Silver");
    obj.rectangle13:setWidth(235);
    obj.rectangle13:setName("rectangle13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout13);
    obj.label14:setLeft(23);
    obj.label14:setTop(2);
    obj.label14:setWidth(220);
    obj.label14:setHeight(20);
    obj.label14:setText("======= Tendências =======");
    obj.label14:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setName("label14");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout13);
    obj.rectangle14:setLeft(254);
    obj.rectangle14:setColor("Silver");
    obj.rectangle14:setWidth(370);
    obj.rectangle14:setName("rectangle14");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout13);
    obj.label15:setLeft(267);
    obj.label15:setTop(2);
    obj.label15:setWidth(355);
    obj.label15:setHeight(20);
    obj.label15:setText("================ Limites ================");
    obj.label15:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setName("label15");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout13);
    obj.rectangle15:setLeft(635);
    obj.rectangle15:setColor("Silver");
    obj.rectangle15:setWidth(235);
    obj.rectangle15:setName("rectangle15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout13);
    obj.label16:setLeft(650);
    obj.label16:setTop(2);
    obj.label16:setWidth(235);
    obj.label16:setHeight(20);
    obj.label16:setText("======== Valores ========");
    obj.label16:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setName("label16");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(8);
    obj.layout14:setTop(245);
    obj.layout14:setWidth(235);
    obj.layout14:setHeight(160);
    obj.layout14:setName("layout14");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout14);
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setName("rectangle16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setLeft(86);
    obj.label17:setTop(9);
    obj.label17:setWidth(65);
    obj.label17:setHeight(20);
    obj.label17:setText("Músculos");
    obj.label17:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontSize(14);
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout14);
    obj.layout15:setTop(30);
    obj.layout15:setWidth(215);
    obj.layout15:setHeight(20);
    obj.layout15:setName("layout15");

    obj.musc_n1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n1:setParent(obj.layout15);
    obj.musc_n1:setField("musc_1");
    obj.musc_n1:setName("musc_n1");
    obj.musc_n1:setLeft(19);
    obj.musc_n1:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n1:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n1:setWidth(15);
    obj.musc_n1:setHeight(15);

    obj.musc_n2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n2:setParent(obj.layout15);
    obj.musc_n2:setField("musc_2");
    obj.musc_n2:setName("musc_n2");
    obj.musc_n2:setLeft(39);
    obj.musc_n2:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n2:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n2:setWidth(15);
    obj.musc_n2:setHeight(15);

    obj.musc_n3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n3:setParent(obj.layout15);
    obj.musc_n3:setField("musc_3");
    obj.musc_n3:setName("musc_n3");
    obj.musc_n3:setLeft(59);
    obj.musc_n3:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n3:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n3:setWidth(15);
    obj.musc_n3:setHeight(15);

    obj.musc_n4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n4:setParent(obj.layout15);
    obj.musc_n4:setField("musc_4");
    obj.musc_n4:setName("musc_n4");
    obj.musc_n4:setLeft(79);
    obj.musc_n4:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n4:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n4:setWidth(15);
    obj.musc_n4:setHeight(15);

    obj.musc_n5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n5:setParent(obj.layout15);
    obj.musc_n5:setField("musc_5");
    obj.musc_n5:setName("musc_n5");
    obj.musc_n5:setLeft(99);
    obj.musc_n5:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n5:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n5:setWidth(15);
    obj.musc_n5:setHeight(15);

    obj.musc_n6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n6:setParent(obj.layout15);
    obj.musc_n6:setField("musc_6");
    obj.musc_n6:setName("musc_n6");
    obj.musc_n6:setLeft(119);
    obj.musc_n6:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n6:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n6:setWidth(15);
    obj.musc_n6:setHeight(15);

    obj.musc_n7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n7:setParent(obj.layout15);
    obj.musc_n7:setField("musc_7");
    obj.musc_n7:setName("musc_n7");
    obj.musc_n7:setLeft(139);
    obj.musc_n7:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n7:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n7:setWidth(15);
    obj.musc_n7:setHeight(15);

    obj.musc_n8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n8:setParent(obj.layout15);
    obj.musc_n8:setField("musc_8");
    obj.musc_n8:setName("musc_n8");
    obj.musc_n8:setLeft(159);
    obj.musc_n8:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n8:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n8:setWidth(15);
    obj.musc_n8:setHeight(15);

    obj.musc_n9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n9:setParent(obj.layout15);
    obj.musc_n9:setField("musc_9");
    obj.musc_n9:setName("musc_n9");
    obj.musc_n9:setLeft(179);
    obj.musc_n9:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n9:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n9:setWidth(15);
    obj.musc_n9:setHeight(15);

    obj.musc_n10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n10:setParent(obj.layout15);
    obj.musc_n10:setField("musc_10");
    obj.musc_n10:setName("musc_n10");
    obj.musc_n10:setLeft(199);
    obj.musc_n10:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.musc_n10:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.musc_n10:setWidth(15);
    obj.musc_n10:setHeight(15);

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout14);
    obj.label18:setLeft(91);
    obj.label18:setTop(54);
    obj.label18:setWidth(60);
    obj.label18:setHeight(20);
    obj.label18:setText("Cérebro");
    obj.label18:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontSize(14);
    obj.label18:setFontColor("black");
    obj.label18:setName("label18");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout14);
    obj.layout16:setTop(75);
    obj.layout16:setWidth(215);
    obj.layout16:setHeight(20);
    obj.layout16:setName("layout16");

    obj.cereb_n1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n1:setParent(obj.layout16);
    obj.cereb_n1:setField("cereb_1");
    obj.cereb_n1:setName("cereb_n1");
    obj.cereb_n1:setLeft(19);
    obj.cereb_n1:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n1:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n1:setWidth(15);
    obj.cereb_n1:setHeight(15);

    obj.cereb_n2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n2:setParent(obj.layout16);
    obj.cereb_n2:setField("cereb_2");
    obj.cereb_n2:setName("cereb_n2");
    obj.cereb_n2:setLeft(39);
    obj.cereb_n2:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n2:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n2:setWidth(15);
    obj.cereb_n2:setHeight(15);

    obj.cereb_n3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n3:setParent(obj.layout16);
    obj.cereb_n3:setField("cereb_3");
    obj.cereb_n3:setName("cereb_n3");
    obj.cereb_n3:setLeft(59);
    obj.cereb_n3:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n3:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n3:setWidth(15);
    obj.cereb_n3:setHeight(15);

    obj.cereb_n4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n4:setParent(obj.layout16);
    obj.cereb_n4:setField("cereb_4");
    obj.cereb_n4:setName("cereb_n4");
    obj.cereb_n4:setLeft(79);
    obj.cereb_n4:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n4:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n4:setWidth(15);
    obj.cereb_n4:setHeight(15);

    obj.cereb_n5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n5:setParent(obj.layout16);
    obj.cereb_n5:setField("cereb_5");
    obj.cereb_n5:setName("cereb_n5");
    obj.cereb_n5:setLeft(99);
    obj.cereb_n5:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n5:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n5:setWidth(15);
    obj.cereb_n5:setHeight(15);

    obj.cereb_n6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n6:setParent(obj.layout16);
    obj.cereb_n6:setField("cereb_6");
    obj.cereb_n6:setName("cereb_n6");
    obj.cereb_n6:setLeft(119);
    obj.cereb_n6:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n6:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n6:setWidth(15);
    obj.cereb_n6:setHeight(15);

    obj.cereb_n7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n7:setParent(obj.layout16);
    obj.cereb_n7:setField("cereb_7");
    obj.cereb_n7:setName("cereb_n7");
    obj.cereb_n7:setLeft(139);
    obj.cereb_n7:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n7:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n7:setWidth(15);
    obj.cereb_n7:setHeight(15);

    obj.cereb_n8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n8:setParent(obj.layout16);
    obj.cereb_n8:setField("cereb_8");
    obj.cereb_n8:setName("cereb_n8");
    obj.cereb_n8:setLeft(159);
    obj.cereb_n8:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n8:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n8:setWidth(15);
    obj.cereb_n8:setHeight(15);

    obj.cereb_n9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n9:setParent(obj.layout16);
    obj.cereb_n9:setField("cereb_9");
    obj.cereb_n9:setName("cereb_n9");
    obj.cereb_n9:setLeft(179);
    obj.cereb_n9:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n9:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n9:setWidth(15);
    obj.cereb_n9:setHeight(15);

    obj.cereb_n10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n10:setParent(obj.layout16);
    obj.cereb_n10:setField("cereb_10");
    obj.cereb_n10:setName("cereb_n10");
    obj.cereb_n10:setLeft(199);
    obj.cereb_n10:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.cereb_n10:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.cereb_n10:setWidth(15);
    obj.cereb_n10:setHeight(15);

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout14);
    obj.label19:setLeft(91);
    obj.label19:setTop(99);
    obj.label19:setWidth(60);
    obj.label19:setHeight(20);
    obj.label19:setText("Coração");
    obj.label19:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontSize(14);
    obj.label19:setFontColor("black");
    obj.label19:setName("label19");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout14);
    obj.layout17:setTop(120);
    obj.layout17:setWidth(215);
    obj.layout17:setHeight(20);
    obj.layout17:setName("layout17");

    obj.corac_n1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n1:setParent(obj.layout17);
    obj.corac_n1:setField("corac_1");
    obj.corac_n1:setName("corac_n1");
    obj.corac_n1:setLeft(19);
    obj.corac_n1:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n1:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n1:setWidth(15);
    obj.corac_n1:setHeight(15);

    obj.corac_n2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n2:setParent(obj.layout17);
    obj.corac_n2:setField("corac_2");
    obj.corac_n2:setName("corac_n2");
    obj.corac_n2:setLeft(39);
    obj.corac_n2:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n2:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n2:setWidth(15);
    obj.corac_n2:setHeight(15);

    obj.corac_n3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n3:setParent(obj.layout17);
    obj.corac_n3:setField("corac_3");
    obj.corac_n3:setName("corac_n3");
    obj.corac_n3:setLeft(59);
    obj.corac_n3:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n3:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n3:setWidth(15);
    obj.corac_n3:setHeight(15);

    obj.corac_n4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n4:setParent(obj.layout17);
    obj.corac_n4:setField("corac_4");
    obj.corac_n4:setName("corac_n4");
    obj.corac_n4:setLeft(79);
    obj.corac_n4:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n4:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n4:setWidth(15);
    obj.corac_n4:setHeight(15);

    obj.corac_n5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n5:setParent(obj.layout17);
    obj.corac_n5:setField("corac_5");
    obj.corac_n5:setName("corac_n5");
    obj.corac_n5:setLeft(99);
    obj.corac_n5:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n5:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n5:setWidth(15);
    obj.corac_n5:setHeight(15);

    obj.corac_n6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n6:setParent(obj.layout17);
    obj.corac_n6:setField("corac_6");
    obj.corac_n6:setName("corac_n6");
    obj.corac_n6:setLeft(119);
    obj.corac_n6:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n6:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n6:setWidth(15);
    obj.corac_n6:setHeight(15);

    obj.corac_n7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n7:setParent(obj.layout17);
    obj.corac_n7:setField("corac_7");
    obj.corac_n7:setName("corac_n7");
    obj.corac_n7:setLeft(139);
    obj.corac_n7:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n7:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n7:setWidth(15);
    obj.corac_n7:setHeight(15);

    obj.corac_n8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n8:setParent(obj.layout17);
    obj.corac_n8:setField("corac_8");
    obj.corac_n8:setName("corac_n8");
    obj.corac_n8:setLeft(159);
    obj.corac_n8:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n8:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n8:setWidth(15);
    obj.corac_n8:setHeight(15);

    obj.corac_n9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n9:setParent(obj.layout17);
    obj.corac_n9:setField("corac_9");
    obj.corac_n9:setName("corac_n9");
    obj.corac_n9:setLeft(179);
    obj.corac_n9:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n9:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n9:setWidth(15);
    obj.corac_n9:setHeight(15);

    obj.corac_n10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n10:setParent(obj.layout17);
    obj.corac_n10:setField("corac_10");
    obj.corac_n10:setName("corac_n10");
    obj.corac_n10:setLeft(199);
    obj.corac_n10:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.corac_n10:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.corac_n10:setWidth(15);
    obj.corac_n10:setHeight(15);

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(254);
    obj.layout18:setTop(245);
    obj.layout18:setWidth(370);
    obj.layout18:setHeight(160);
    obj.layout18:setName("layout18");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout18);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setName("rectangle17");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout18);
    obj.label20:setLeft(38);
    obj.label20:setTop(11);
    obj.label20:setWidth(70);
    obj.label20:setHeight(20);
    obj.label20:setText("Sanidade");
    obj.label20:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontSize(15);
    obj.label20:setFontColor("black");
    obj.label20:setName("label20");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout18);
    obj.edit9:setField("sanidade");
    obj.edit9:setLeft(50);
    obj.edit9:setTop(32);
    obj.edit9:setWidth(40);
    obj.edit9:setHeight(40);
    obj.edit9:setFontSize(16);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setType("number");
    obj.edit9:setMax(999);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontColor("black");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setName("edit9");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout18);
    obj.image3:setLeft(47);
    obj.image3:setTop(31);
    obj.image3:setWidth(45);
    obj.image3:setHeight(45);
    obj.image3:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image3:setName("image3");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout18);
    obj.label21:setLeft(25);
    obj.label21:setTop(81);
    obj.label21:setWidth(100);
    obj.label21:setHeight(20);
    obj.label21:setText("Autocontrole");
    obj.label21:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontSize(15);
    obj.label21:setFontColor("black");
    obj.label21:setName("label21");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout18);
    obj.edit10:setField("autocontrole");
    obj.edit10:setLeft(50);
    obj.edit10:setTop(102);
    obj.edit10:setWidth(40);
    obj.edit10:setHeight(40);
    obj.edit10:setFontSize(16);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setType("number");
    obj.edit10:setMax(999);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontColor("black");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout18);
    obj.image4:setLeft(47);
    obj.image4:setTop(101);
    obj.image4:setWidth(45);
    obj.image4:setHeight(45);
    obj.image4:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image4:setName("image4");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout18);
    obj.label22:setLeft(125);
    obj.label22:setTop(46);
    obj.label22:setWidth(130);
    obj.label22:setHeight(20);
    obj.label22:setText("Força de Vontade");
    obj.label22:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontSize(15);
    obj.label22:setFontColor("black");
    obj.label22:setName("label22");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout18);
    obj.edit11:setField("forcadevontade");
    obj.edit11:setLeft(165);
    obj.edit11:setTop(67);
    obj.edit11:setWidth(40);
    obj.edit11:setHeight(40);
    obj.edit11:setFontSize(16);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setType("number");
    obj.edit11:setMax(999);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontColor("black");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setName("edit11");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.layout18);
    obj.image5:setLeft(162);
    obj.image5:setTop(66);
    obj.image5:setWidth(45);
    obj.image5:setHeight(45);
    obj.image5:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image5:setName("image5");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout18);
    obj.label23:setLeft(273);
    obj.label23:setTop(11);
    obj.label23:setWidth(70);
    obj.label23:setHeight(20);
    obj.label23:setText("Energia");
    obj.label23:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontSize(15);
    obj.label23:setFontColor("black");
    obj.label23:setName("label23");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout18);
    obj.edit12:setField("energia");
    obj.edit12:setLeft(280);
    obj.edit12:setTop(32);
    obj.edit12:setWidth(40);
    obj.edit12:setHeight(40);
    obj.edit12:setFontSize(16);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setType("number");
    obj.edit12:setMax(999);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontColor("black");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.layout18);
    obj.image6:setLeft(277);
    obj.image6:setTop(31);
    obj.image6:setWidth(45);
    obj.image6:setHeight(45);
    obj.image6:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image6:setName("image6");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout18);
    obj.label24:setLeft(248);
    obj.label24:setTop(81);
    obj.label24:setWidth(130);
    obj.label24:setHeight(20);
    obj.label24:setText("Pontos de Vida");
    obj.label24:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontSize(15);
    obj.label24:setFontColor("black");
    obj.label24:setName("label24");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout18);
    obj.edit13:setField("pontosdevida");
    obj.edit13:setLeft(280);
    obj.edit13:setTop(102);
    obj.edit13:setWidth(40);
    obj.edit13:setHeight(40);
    obj.edit13:setFontSize(16);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setType("number");
    obj.edit13:setMax(999);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontColor("black");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setName("edit13");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.layout18);
    obj.image7:setLeft(277);
    obj.image7:setTop(101);
    obj.image7:setWidth(45);
    obj.image7:setHeight(45);
    obj.image7:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image7:setName("image7");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(635);
    obj.layout19:setTop(245);
    obj.layout19:setWidth(235);
    obj.layout19:setHeight(160);
    obj.layout19:setName("layout19");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout19);
    obj.rectangle18:setAlign("client");
    obj.rectangle18:setName("rectangle18");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout19);
    obj.label25:setLeft(86);
    obj.label25:setTop(11);
    obj.label25:setWidth(65);
    obj.label25:setHeight(20);
    obj.label25:setText("Músculos");
    obj.label25:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontSize(14);
    obj.label25:setFontColor("black");
    obj.label25:setName("label25");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout19);
    obj.edit14:setField("vmusculos");
    obj.edit14:setLeft(104);
    obj.edit14:setTop(33);
    obj.edit14:setWidth(25);
    obj.edit14:setHeight(25);
    obj.edit14:setFontSize(16);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setHitTest(false);
    obj.edit14:setReadOnly(true);
    obj.edit14:setType("number");
    obj.edit14:setMax(10);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontColor("black");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.layout19);
    obj.image8:setLeft(102);
    obj.image8:setTop(31);
    obj.image8:setWidth(30);
    obj.image8:setHeight(30);
    obj.image8:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image8:setName("image8");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout19);
    obj.label26:setLeft(91);
    obj.label26:setTop(56);
    obj.label26:setWidth(60);
    obj.label26:setHeight(20);
    obj.label26:setText("Cérebro");
    obj.label26:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontSize(14);
    obj.label26:setFontColor("black");
    obj.label26:setName("label26");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout19);
    obj.edit15:setField("vcerebro");
    obj.edit15:setLeft(104);
    obj.edit15:setTop(78);
    obj.edit15:setWidth(25);
    obj.edit15:setHeight(25);
    obj.edit15:setFontSize(16);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setHitTest(false);
    obj.edit15:setReadOnly(true);
    obj.edit15:setType("number");
    obj.edit15:setMax(10);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontColor("black");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setName("edit15");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.layout19);
    obj.image9:setLeft(102);
    obj.image9:setTop(76);
    obj.image9:setWidth(30);
    obj.image9:setHeight(30);
    obj.image9:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image9:setName("image9");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout19);
    obj.label27:setLeft(91);
    obj.label27:setTop(101);
    obj.label27:setWidth(60);
    obj.label27:setHeight(20);
    obj.label27:setText("Coração");
    obj.label27:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontSize(14);
    obj.label27:setFontColor("black");
    obj.label27:setName("label27");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout19);
    obj.edit16:setField("vcoracao");
    obj.edit16:setLeft(104);
    obj.edit16:setTop(123);
    obj.edit16:setWidth(25);
    obj.edit16:setHeight(25);
    obj.edit16:setFontSize(16);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setHitTest(false);
    obj.edit16:setReadOnly(true);
    obj.edit16:setType("number");
    obj.edit16:setMax(10);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontColor("black");
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.layout19);
    obj.image10:setLeft(102);
    obj.image10:setTop(121);
    obj.image10:setWidth(30);
    obj.image10:setHeight(30);
    obj.image10:setSRC("/OsMundosDosMortos/img/blackhole.png");
    obj.image10:setName("image10");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(10);
    obj.layout20:setTop(457);
    obj.layout20:setWidth(860);
    obj.layout20:setHeight(320);
    obj.layout20:setName("layout20");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout20);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setName("rectangle19");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout20);
    obj.label28:setLeft(100);
    obj.label28:setTop(10);
    obj.label28:setWidth(130);
    obj.label28:setHeight(20);
    obj.label28:setText("Minhas Habilidades");
    obj.label28:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontSize(13);
    obj.label28:setFontColor("black");
    obj.label28:setName("label28");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout20);
    obj.label29:setLeft(365);
    obj.label29:setTop(10);
    obj.label29:setWidth(130);
    obj.label29:setHeight(20);
    obj.label29:setText("Minhas Habilidades");
    obj.label29:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontSize(13);
    obj.label29:setFontColor("black");
    obj.label29:setName("label29");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout20);
    obj.label30:setLeft(620);
    obj.label30:setTop(10);
    obj.label30:setWidth(140);
    obj.label30:setHeight(20);
    obj.label30:setText("Habilidades de Classe");
    obj.label30:setHorzTextAlign("trailing");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontSize(13);
    obj.label30:setFontColor("black");
    obj.label30:setName("label30");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout20);
    obj.layout21:setLeft(30);
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

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout22);
    obj.horzLine1:setTop(18);
    obj.horzLine1:setWidth(130);
    obj.horzLine1:setStrokeSize(2);
    obj.horzLine1:setStrokeColor("black");
    obj.horzLine1:setName("horzLine1");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout22);
    obj.edit17:setField("mhabilidades1_e");
    obj.edit17:setLeft(2);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(125);
    obj.edit17:setHeight(20);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setFontColor("black");
    obj.edit17:setFontSize(14);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setTransparent(true);
    obj.edit17:setName("edit17");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout22);
    obj.imageCheckBox1:setField("mhabilidades1_1");
    obj.imageCheckBox1:setLeft(137);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout22);
    obj.imageCheckBox2:setField("mhabilidades1_2");
    obj.imageCheckBox2:setLeft(155);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout22);
    obj.imageCheckBox3:setField("mhabilidades1_3");
    obj.imageCheckBox3:setLeft(173);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout22);
    obj.imageCheckBox4:setField("mhabilidades1_4");
    obj.imageCheckBox4:setLeft(191);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout22);
    obj.imageCheckBox5:setField("mhabilidades1_5");
    obj.imageCheckBox5:setLeft(209);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(15);
    obj.imageCheckBox5:setHeight(15);
    obj.imageCheckBox5:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox5:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout22);
    obj.imageCheckBox6:setField("mhabilidades1_6");
    obj.imageCheckBox6:setLeft(227);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout21);
    obj.layout23:setLeft(10);
    obj.layout23:setTop(41);
    obj.layout23:setWidth(245);
    obj.layout23:setHeight(20);
    obj.layout23:setName("layout23");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layout23);
    obj.horzLine2:setTop(18);
    obj.horzLine2:setWidth(130);
    obj.horzLine2:setStrokeSize(2);
    obj.horzLine2:setStrokeColor("black");
    obj.horzLine2:setName("horzLine2");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout23);
    obj.edit18:setField("mhabilidades2_e");
    obj.edit18:setLeft(2);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(125);
    obj.edit18:setHeight(20);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setFontColor("black");
    obj.edit18:setFontSize(14);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setTransparent(true);
    obj.edit18:setName("edit18");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout23);
    obj.imageCheckBox7:setField("mhabilidades2_1");
    obj.imageCheckBox7:setLeft(137);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout23);
    obj.imageCheckBox8:setField("mhabilidades2_2");
    obj.imageCheckBox8:setLeft(155);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout23);
    obj.imageCheckBox9:setField("mhabilidades2_3");
    obj.imageCheckBox9:setLeft(173);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout23);
    obj.imageCheckBox10:setField("mhabilidades2_4");
    obj.imageCheckBox10:setLeft(191);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(15);
    obj.imageCheckBox10:setHeight(15);
    obj.imageCheckBox10:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox10:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout23);
    obj.imageCheckBox11:setField("mhabilidades2_5");
    obj.imageCheckBox11:setLeft(209);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout23);
    obj.imageCheckBox12:setField("mhabilidades2_6");
    obj.imageCheckBox12:setLeft(227);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout21);
    obj.layout24:setLeft(10);
    obj.layout24:setTop(71);
    obj.layout24:setWidth(245);
    obj.layout24:setHeight(20);
    obj.layout24:setName("layout24");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout24);
    obj.horzLine3:setTop(18);
    obj.horzLine3:setWidth(130);
    obj.horzLine3:setStrokeSize(2);
    obj.horzLine3:setStrokeColor("black");
    obj.horzLine3:setName("horzLine3");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout24);
    obj.edit19:setField("mhabilidades3_e");
    obj.edit19:setLeft(2);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(125);
    obj.edit19:setHeight(20);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setFontColor("black");
    obj.edit19:setFontSize(14);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setTransparent(true);
    obj.edit19:setName("edit19");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout24);
    obj.imageCheckBox13:setField("mhabilidades3_1");
    obj.imageCheckBox13:setLeft(137);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout24);
    obj.imageCheckBox14:setField("mhabilidades3_2");
    obj.imageCheckBox14:setLeft(155);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout24);
    obj.imageCheckBox15:setField("mhabilidades3_3");
    obj.imageCheckBox15:setLeft(173);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(15);
    obj.imageCheckBox15:setHeight(15);
    obj.imageCheckBox15:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox15:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout24);
    obj.imageCheckBox16:setField("mhabilidades3_4");
    obj.imageCheckBox16:setLeft(191);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(15);
    obj.imageCheckBox16:setHeight(15);
    obj.imageCheckBox16:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox16:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout24);
    obj.imageCheckBox17:setField("mhabilidades3_5");
    obj.imageCheckBox17:setLeft(209);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(15);
    obj.imageCheckBox17:setHeight(15);
    obj.imageCheckBox17:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox17:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout24);
    obj.imageCheckBox18:setField("mhabilidades3_6");
    obj.imageCheckBox18:setLeft(227);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(15);
    obj.imageCheckBox18:setHeight(15);
    obj.imageCheckBox18:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox18:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout21);
    obj.layout25:setLeft(10);
    obj.layout25:setTop(101);
    obj.layout25:setWidth(245);
    obj.layout25:setHeight(20);
    obj.layout25:setName("layout25");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout25);
    obj.horzLine4:setTop(18);
    obj.horzLine4:setWidth(130);
    obj.horzLine4:setStrokeSize(2);
    obj.horzLine4:setStrokeColor("black");
    obj.horzLine4:setName("horzLine4");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout25);
    obj.edit20:setField("mhabilidades4_e");
    obj.edit20:setLeft(2);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(125);
    obj.edit20:setHeight(20);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setFontColor("black");
    obj.edit20:setFontSize(14);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setTransparent(true);
    obj.edit20:setName("edit20");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout25);
    obj.imageCheckBox19:setField("mhabilidades4_1");
    obj.imageCheckBox19:setLeft(137);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(15);
    obj.imageCheckBox19:setHeight(15);
    obj.imageCheckBox19:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox19:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout25);
    obj.imageCheckBox20:setField("mhabilidades4_2");
    obj.imageCheckBox20:setLeft(155);
    obj.imageCheckBox20:setTop(4);
    obj.imageCheckBox20:setWidth(15);
    obj.imageCheckBox20:setHeight(15);
    obj.imageCheckBox20:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox20:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout25);
    obj.imageCheckBox21:setField("mhabilidades4_3");
    obj.imageCheckBox21:setLeft(173);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(15);
    obj.imageCheckBox21:setHeight(15);
    obj.imageCheckBox21:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox21:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout25);
    obj.imageCheckBox22:setField("mhabilidades4_4");
    obj.imageCheckBox22:setLeft(191);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(15);
    obj.imageCheckBox22:setHeight(15);
    obj.imageCheckBox22:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox22:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout25);
    obj.imageCheckBox23:setField("mhabilidades4_5");
    obj.imageCheckBox23:setLeft(209);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(15);
    obj.imageCheckBox23:setHeight(15);
    obj.imageCheckBox23:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox23:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout25);
    obj.imageCheckBox24:setField("mhabilidades4_6");
    obj.imageCheckBox24:setLeft(227);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(15);
    obj.imageCheckBox24:setHeight(15);
    obj.imageCheckBox24:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox24:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout21);
    obj.layout26:setLeft(10);
    obj.layout26:setTop(131);
    obj.layout26:setWidth(245);
    obj.layout26:setHeight(20);
    obj.layout26:setName("layout26");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout26);
    obj.horzLine5:setTop(18);
    obj.horzLine5:setWidth(130);
    obj.horzLine5:setStrokeSize(2);
    obj.horzLine5:setStrokeColor("black");
    obj.horzLine5:setName("horzLine5");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout26);
    obj.edit21:setField("mhabilidades5_e");
    obj.edit21:setLeft(2);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(125);
    obj.edit21:setHeight(20);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setFontColor("black");
    obj.edit21:setFontSize(14);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setTransparent(true);
    obj.edit21:setName("edit21");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout26);
    obj.imageCheckBox25:setField("mhabilidades5_1");
    obj.imageCheckBox25:setLeft(137);
    obj.imageCheckBox25:setTop(4);
    obj.imageCheckBox25:setWidth(15);
    obj.imageCheckBox25:setHeight(15);
    obj.imageCheckBox25:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox25:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout26);
    obj.imageCheckBox26:setField("mhabilidades5_2");
    obj.imageCheckBox26:setLeft(155);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(15);
    obj.imageCheckBox26:setHeight(15);
    obj.imageCheckBox26:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox26:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout26);
    obj.imageCheckBox27:setField("mhabilidades5_3");
    obj.imageCheckBox27:setLeft(173);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(15);
    obj.imageCheckBox27:setHeight(15);
    obj.imageCheckBox27:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox27:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout26);
    obj.imageCheckBox28:setField("mhabilidades5_4");
    obj.imageCheckBox28:setLeft(191);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(15);
    obj.imageCheckBox28:setHeight(15);
    obj.imageCheckBox28:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox28:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout26);
    obj.imageCheckBox29:setField("mhabilidades5_5");
    obj.imageCheckBox29:setLeft(209);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(15);
    obj.imageCheckBox29:setHeight(15);
    obj.imageCheckBox29:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox29:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout26);
    obj.imageCheckBox30:setField("mhabilidades5_6");
    obj.imageCheckBox30:setLeft(227);
    obj.imageCheckBox30:setTop(4);
    obj.imageCheckBox30:setWidth(15);
    obj.imageCheckBox30:setHeight(15);
    obj.imageCheckBox30:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox30:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout21);
    obj.layout27:setLeft(10);
    obj.layout27:setTop(161);
    obj.layout27:setWidth(245);
    obj.layout27:setHeight(20);
    obj.layout27:setName("layout27");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout27);
    obj.horzLine6:setTop(18);
    obj.horzLine6:setWidth(130);
    obj.horzLine6:setStrokeSize(2);
    obj.horzLine6:setStrokeColor("black");
    obj.horzLine6:setName("horzLine6");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout27);
    obj.edit22:setField("mhabilidades6_e");
    obj.edit22:setLeft(2);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(125);
    obj.edit22:setHeight(20);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setFontColor("black");
    obj.edit22:setFontSize(14);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setTransparent(true);
    obj.edit22:setName("edit22");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout27);
    obj.imageCheckBox31:setField("mhabilidades6_1");
    obj.imageCheckBox31:setLeft(137);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(15);
    obj.imageCheckBox31:setHeight(15);
    obj.imageCheckBox31:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox31:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout27);
    obj.imageCheckBox32:setField("mhabilidades6_2");
    obj.imageCheckBox32:setLeft(155);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(15);
    obj.imageCheckBox32:setHeight(15);
    obj.imageCheckBox32:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox32:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout27);
    obj.imageCheckBox33:setField("mhabilidades6_3");
    obj.imageCheckBox33:setLeft(173);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(15);
    obj.imageCheckBox33:setHeight(15);
    obj.imageCheckBox33:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox33:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout27);
    obj.imageCheckBox34:setField("mhabilidades6_4");
    obj.imageCheckBox34:setLeft(191);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(15);
    obj.imageCheckBox34:setHeight(15);
    obj.imageCheckBox34:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox34:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout27);
    obj.imageCheckBox35:setField("mhabilidades6_5");
    obj.imageCheckBox35:setLeft(209);
    obj.imageCheckBox35:setTop(4);
    obj.imageCheckBox35:setWidth(15);
    obj.imageCheckBox35:setHeight(15);
    obj.imageCheckBox35:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox35:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout27);
    obj.imageCheckBox36:setField("mhabilidades6_6");
    obj.imageCheckBox36:setLeft(227);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(15);
    obj.imageCheckBox36:setHeight(15);
    obj.imageCheckBox36:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox36:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout21);
    obj.layout28:setLeft(10);
    obj.layout28:setTop(191);
    obj.layout28:setWidth(245);
    obj.layout28:setHeight(20);
    obj.layout28:setName("layout28");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.layout28);
    obj.horzLine7:setTop(18);
    obj.horzLine7:setWidth(130);
    obj.horzLine7:setStrokeSize(2);
    obj.horzLine7:setStrokeColor("black");
    obj.horzLine7:setName("horzLine7");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout28);
    obj.edit23:setField("mhabilidades7_e");
    obj.edit23:setLeft(2);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(125);
    obj.edit23:setHeight(20);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setFontColor("black");
    obj.edit23:setFontSize(14);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setTransparent(true);
    obj.edit23:setName("edit23");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout28);
    obj.imageCheckBox37:setField("mhabilidades7_1");
    obj.imageCheckBox37:setLeft(137);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(15);
    obj.imageCheckBox37:setHeight(15);
    obj.imageCheckBox37:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox37:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout28);
    obj.imageCheckBox38:setField("mhabilidades7_2");
    obj.imageCheckBox38:setLeft(155);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(15);
    obj.imageCheckBox38:setHeight(15);
    obj.imageCheckBox38:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox38:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout28);
    obj.imageCheckBox39:setField("mhabilidades7_3");
    obj.imageCheckBox39:setLeft(173);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(15);
    obj.imageCheckBox39:setHeight(15);
    obj.imageCheckBox39:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox39:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout28);
    obj.imageCheckBox40:setField("mhabilidades7_4");
    obj.imageCheckBox40:setLeft(191);
    obj.imageCheckBox40:setTop(4);
    obj.imageCheckBox40:setWidth(15);
    obj.imageCheckBox40:setHeight(15);
    obj.imageCheckBox40:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox40:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout28);
    obj.imageCheckBox41:setField("mhabilidades7_5");
    obj.imageCheckBox41:setLeft(209);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(15);
    obj.imageCheckBox41:setHeight(15);
    obj.imageCheckBox41:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox41:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout28);
    obj.imageCheckBox42:setField("mhabilidades7_6");
    obj.imageCheckBox42:setLeft(227);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(15);
    obj.imageCheckBox42:setHeight(15);
    obj.imageCheckBox42:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox42:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout21);
    obj.layout29:setLeft(10);
    obj.layout29:setTop(221);
    obj.layout29:setWidth(245);
    obj.layout29:setHeight(20);
    obj.layout29:setName("layout29");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout29);
    obj.horzLine8:setTop(18);
    obj.horzLine8:setWidth(130);
    obj.horzLine8:setStrokeSize(2);
    obj.horzLine8:setStrokeColor("black");
    obj.horzLine8:setName("horzLine8");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout29);
    obj.edit24:setField("mhabilidades8_e");
    obj.edit24:setLeft(2);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(125);
    obj.edit24:setHeight(20);
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setFontColor("black");
    obj.edit24:setFontSize(14);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setTransparent(true);
    obj.edit24:setName("edit24");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout29);
    obj.imageCheckBox43:setField("mhabilidades8_1");
    obj.imageCheckBox43:setLeft(137);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(15);
    obj.imageCheckBox43:setHeight(15);
    obj.imageCheckBox43:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox43:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout29);
    obj.imageCheckBox44:setField("mhabilidades8_2");
    obj.imageCheckBox44:setLeft(155);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(15);
    obj.imageCheckBox44:setHeight(15);
    obj.imageCheckBox44:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox44:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout29);
    obj.imageCheckBox45:setField("mhabilidades8_3");
    obj.imageCheckBox45:setLeft(173);
    obj.imageCheckBox45:setTop(4);
    obj.imageCheckBox45:setWidth(15);
    obj.imageCheckBox45:setHeight(15);
    obj.imageCheckBox45:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox45:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout29);
    obj.imageCheckBox46:setField("mhabilidades8_4");
    obj.imageCheckBox46:setLeft(191);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(15);
    obj.imageCheckBox46:setHeight(15);
    obj.imageCheckBox46:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox46:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout29);
    obj.imageCheckBox47:setField("mhabilidades8_5");
    obj.imageCheckBox47:setLeft(209);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(15);
    obj.imageCheckBox47:setHeight(15);
    obj.imageCheckBox47:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox47:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout29);
    obj.imageCheckBox48:setField("mhabilidades8_6");
    obj.imageCheckBox48:setLeft(227);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(15);
    obj.imageCheckBox48:setHeight(15);
    obj.imageCheckBox48:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox48:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout20);
    obj.layout30:setLeft(295);
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

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout31);
    obj.horzLine9:setTop(18);
    obj.horzLine9:setWidth(130);
    obj.horzLine9:setStrokeSize(2);
    obj.horzLine9:setStrokeColor("black");
    obj.horzLine9:setName("horzLine9");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout31);
    obj.edit25:setField("mhabilidades1_f");
    obj.edit25:setLeft(2);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(125);
    obj.edit25:setHeight(20);
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setFontColor("black");
    obj.edit25:setFontSize(14);
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setTransparent(true);
    obj.edit25:setName("edit25");

    obj.imageCheckBox49 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox49:setParent(obj.layout31);
    obj.imageCheckBox49:setField("mhabilidades1_h1");
    obj.imageCheckBox49:setLeft(137);
    obj.imageCheckBox49:setTop(4);
    obj.imageCheckBox49:setWidth(15);
    obj.imageCheckBox49:setHeight(15);
    obj.imageCheckBox49:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox49:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox49:setName("imageCheckBox49");

    obj.imageCheckBox50 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox50:setParent(obj.layout31);
    obj.imageCheckBox50:setField("mhabilidades1_h2");
    obj.imageCheckBox50:setLeft(155);
    obj.imageCheckBox50:setTop(4);
    obj.imageCheckBox50:setWidth(15);
    obj.imageCheckBox50:setHeight(15);
    obj.imageCheckBox50:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox50:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox50:setName("imageCheckBox50");

    obj.imageCheckBox51 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox51:setParent(obj.layout31);
    obj.imageCheckBox51:setField("mhabilidades1_h3");
    obj.imageCheckBox51:setLeft(173);
    obj.imageCheckBox51:setTop(4);
    obj.imageCheckBox51:setWidth(15);
    obj.imageCheckBox51:setHeight(15);
    obj.imageCheckBox51:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox51:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox51:setName("imageCheckBox51");

    obj.imageCheckBox52 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox52:setParent(obj.layout31);
    obj.imageCheckBox52:setField("mhabilidades1_h4");
    obj.imageCheckBox52:setLeft(191);
    obj.imageCheckBox52:setTop(4);
    obj.imageCheckBox52:setWidth(15);
    obj.imageCheckBox52:setHeight(15);
    obj.imageCheckBox52:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox52:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox52:setName("imageCheckBox52");

    obj.imageCheckBox53 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox53:setParent(obj.layout31);
    obj.imageCheckBox53:setField("mhabilidades1_h5");
    obj.imageCheckBox53:setLeft(209);
    obj.imageCheckBox53:setTop(4);
    obj.imageCheckBox53:setWidth(15);
    obj.imageCheckBox53:setHeight(15);
    obj.imageCheckBox53:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox53:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox53:setName("imageCheckBox53");

    obj.imageCheckBox54 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox54:setParent(obj.layout31);
    obj.imageCheckBox54:setField("mhabilidades1_h6");
    obj.imageCheckBox54:setLeft(227);
    obj.imageCheckBox54:setTop(4);
    obj.imageCheckBox54:setWidth(15);
    obj.imageCheckBox54:setHeight(15);
    obj.imageCheckBox54:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox54:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox54:setName("imageCheckBox54");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout30);
    obj.layout32:setLeft(10);
    obj.layout32:setTop(41);
    obj.layout32:setWidth(245);
    obj.layout32:setHeight(20);
    obj.layout32:setName("layout32");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout32);
    obj.horzLine10:setTop(18);
    obj.horzLine10:setWidth(130);
    obj.horzLine10:setStrokeSize(2);
    obj.horzLine10:setStrokeColor("black");
    obj.horzLine10:setName("horzLine10");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout32);
    obj.edit26:setField("mhabilidades2_f");
    obj.edit26:setLeft(2);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(125);
    obj.edit26:setHeight(20);
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setFontColor("black");
    obj.edit26:setFontSize(14);
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setTransparent(true);
    obj.edit26:setName("edit26");

    obj.imageCheckBox55 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox55:setParent(obj.layout32);
    obj.imageCheckBox55:setField("mhabilidades2_h1");
    obj.imageCheckBox55:setLeft(137);
    obj.imageCheckBox55:setTop(4);
    obj.imageCheckBox55:setWidth(15);
    obj.imageCheckBox55:setHeight(15);
    obj.imageCheckBox55:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox55:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox55:setName("imageCheckBox55");

    obj.imageCheckBox56 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox56:setParent(obj.layout32);
    obj.imageCheckBox56:setField("mhabilidades2_h2");
    obj.imageCheckBox56:setLeft(155);
    obj.imageCheckBox56:setTop(4);
    obj.imageCheckBox56:setWidth(15);
    obj.imageCheckBox56:setHeight(15);
    obj.imageCheckBox56:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox56:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox56:setName("imageCheckBox56");

    obj.imageCheckBox57 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox57:setParent(obj.layout32);
    obj.imageCheckBox57:setField("mhabilidades2_h3");
    obj.imageCheckBox57:setLeft(173);
    obj.imageCheckBox57:setTop(4);
    obj.imageCheckBox57:setWidth(15);
    obj.imageCheckBox57:setHeight(15);
    obj.imageCheckBox57:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox57:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox57:setName("imageCheckBox57");

    obj.imageCheckBox58 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox58:setParent(obj.layout32);
    obj.imageCheckBox58:setField("mhabilidades2_h4");
    obj.imageCheckBox58:setLeft(191);
    obj.imageCheckBox58:setTop(4);
    obj.imageCheckBox58:setWidth(15);
    obj.imageCheckBox58:setHeight(15);
    obj.imageCheckBox58:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox58:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox58:setName("imageCheckBox58");

    obj.imageCheckBox59 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox59:setParent(obj.layout32);
    obj.imageCheckBox59:setField("mhabilidades2_h5");
    obj.imageCheckBox59:setLeft(209);
    obj.imageCheckBox59:setTop(4);
    obj.imageCheckBox59:setWidth(15);
    obj.imageCheckBox59:setHeight(15);
    obj.imageCheckBox59:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox59:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox59:setName("imageCheckBox59");

    obj.imageCheckBox60 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox60:setParent(obj.layout32);
    obj.imageCheckBox60:setField("mhabilidades2_h6");
    obj.imageCheckBox60:setLeft(227);
    obj.imageCheckBox60:setTop(4);
    obj.imageCheckBox60:setWidth(15);
    obj.imageCheckBox60:setHeight(15);
    obj.imageCheckBox60:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox60:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox60:setName("imageCheckBox60");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout30);
    obj.layout33:setLeft(10);
    obj.layout33:setTop(71);
    obj.layout33:setWidth(245);
    obj.layout33:setHeight(20);
    obj.layout33:setName("layout33");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout33);
    obj.horzLine11:setTop(18);
    obj.horzLine11:setWidth(130);
    obj.horzLine11:setStrokeSize(2);
    obj.horzLine11:setStrokeColor("black");
    obj.horzLine11:setName("horzLine11");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout33);
    obj.edit27:setField("mhabilidades3_f");
    obj.edit27:setLeft(2);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(125);
    obj.edit27:setHeight(20);
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setFontColor("black");
    obj.edit27:setFontSize(14);
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setTransparent(true);
    obj.edit27:setName("edit27");

    obj.imageCheckBox61 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox61:setParent(obj.layout33);
    obj.imageCheckBox61:setField("mhabilidades3_h1");
    obj.imageCheckBox61:setLeft(137);
    obj.imageCheckBox61:setTop(4);
    obj.imageCheckBox61:setWidth(15);
    obj.imageCheckBox61:setHeight(15);
    obj.imageCheckBox61:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox61:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox61:setName("imageCheckBox61");

    obj.imageCheckBox62 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox62:setParent(obj.layout33);
    obj.imageCheckBox62:setField("mhabilidades3_h2");
    obj.imageCheckBox62:setLeft(155);
    obj.imageCheckBox62:setTop(4);
    obj.imageCheckBox62:setWidth(15);
    obj.imageCheckBox62:setHeight(15);
    obj.imageCheckBox62:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox62:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox62:setName("imageCheckBox62");

    obj.imageCheckBox63 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox63:setParent(obj.layout33);
    obj.imageCheckBox63:setField("mhabilidades3_h3");
    obj.imageCheckBox63:setLeft(173);
    obj.imageCheckBox63:setTop(4);
    obj.imageCheckBox63:setWidth(15);
    obj.imageCheckBox63:setHeight(15);
    obj.imageCheckBox63:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox63:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox63:setName("imageCheckBox63");

    obj.imageCheckBox64 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox64:setParent(obj.layout33);
    obj.imageCheckBox64:setField("mhabilidades3_h4");
    obj.imageCheckBox64:setLeft(191);
    obj.imageCheckBox64:setTop(4);
    obj.imageCheckBox64:setWidth(15);
    obj.imageCheckBox64:setHeight(15);
    obj.imageCheckBox64:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox64:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox64:setName("imageCheckBox64");

    obj.imageCheckBox65 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox65:setParent(obj.layout33);
    obj.imageCheckBox65:setField("mhabilidades3_h5");
    obj.imageCheckBox65:setLeft(209);
    obj.imageCheckBox65:setTop(4);
    obj.imageCheckBox65:setWidth(15);
    obj.imageCheckBox65:setHeight(15);
    obj.imageCheckBox65:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox65:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox65:setName("imageCheckBox65");

    obj.imageCheckBox66 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox66:setParent(obj.layout33);
    obj.imageCheckBox66:setField("mhabilidades3_h6");
    obj.imageCheckBox66:setLeft(227);
    obj.imageCheckBox66:setTop(4);
    obj.imageCheckBox66:setWidth(15);
    obj.imageCheckBox66:setHeight(15);
    obj.imageCheckBox66:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox66:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox66:setName("imageCheckBox66");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout30);
    obj.layout34:setLeft(10);
    obj.layout34:setTop(101);
    obj.layout34:setWidth(245);
    obj.layout34:setHeight(20);
    obj.layout34:setName("layout34");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout34);
    obj.horzLine12:setTop(18);
    obj.horzLine12:setWidth(130);
    obj.horzLine12:setStrokeSize(2);
    obj.horzLine12:setStrokeColor("black");
    obj.horzLine12:setName("horzLine12");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout34);
    obj.edit28:setField("mhabilidades4_f");
    obj.edit28:setLeft(2);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(125);
    obj.edit28:setHeight(20);
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setFontColor("black");
    obj.edit28:setFontSize(14);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setTransparent(true);
    obj.edit28:setName("edit28");

    obj.imageCheckBox67 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox67:setParent(obj.layout34);
    obj.imageCheckBox67:setField("mhabilidades4_h1");
    obj.imageCheckBox67:setLeft(137);
    obj.imageCheckBox67:setTop(4);
    obj.imageCheckBox67:setWidth(15);
    obj.imageCheckBox67:setHeight(15);
    obj.imageCheckBox67:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox67:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox67:setName("imageCheckBox67");

    obj.imageCheckBox68 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox68:setParent(obj.layout34);
    obj.imageCheckBox68:setField("mhabilidades4_h2");
    obj.imageCheckBox68:setLeft(155);
    obj.imageCheckBox68:setTop(4);
    obj.imageCheckBox68:setWidth(15);
    obj.imageCheckBox68:setHeight(15);
    obj.imageCheckBox68:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox68:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox68:setName("imageCheckBox68");

    obj.imageCheckBox69 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox69:setParent(obj.layout34);
    obj.imageCheckBox69:setField("mhabilidades4_h3");
    obj.imageCheckBox69:setLeft(173);
    obj.imageCheckBox69:setTop(4);
    obj.imageCheckBox69:setWidth(15);
    obj.imageCheckBox69:setHeight(15);
    obj.imageCheckBox69:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox69:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox69:setName("imageCheckBox69");

    obj.imageCheckBox70 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox70:setParent(obj.layout34);
    obj.imageCheckBox70:setField("mhabilidades4_h4");
    obj.imageCheckBox70:setLeft(191);
    obj.imageCheckBox70:setTop(4);
    obj.imageCheckBox70:setWidth(15);
    obj.imageCheckBox70:setHeight(15);
    obj.imageCheckBox70:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox70:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox70:setName("imageCheckBox70");

    obj.imageCheckBox71 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox71:setParent(obj.layout34);
    obj.imageCheckBox71:setField("mhabilidades4_h5");
    obj.imageCheckBox71:setLeft(209);
    obj.imageCheckBox71:setTop(4);
    obj.imageCheckBox71:setWidth(15);
    obj.imageCheckBox71:setHeight(15);
    obj.imageCheckBox71:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox71:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox71:setName("imageCheckBox71");

    obj.imageCheckBox72 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox72:setParent(obj.layout34);
    obj.imageCheckBox72:setField("mhabilidades4_h6");
    obj.imageCheckBox72:setLeft(227);
    obj.imageCheckBox72:setTop(4);
    obj.imageCheckBox72:setWidth(15);
    obj.imageCheckBox72:setHeight(15);
    obj.imageCheckBox72:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox72:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox72:setName("imageCheckBox72");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout30);
    obj.layout35:setLeft(10);
    obj.layout35:setTop(131);
    obj.layout35:setWidth(245);
    obj.layout35:setHeight(20);
    obj.layout35:setName("layout35");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout35);
    obj.horzLine13:setTop(18);
    obj.horzLine13:setWidth(130);
    obj.horzLine13:setStrokeSize(2);
    obj.horzLine13:setStrokeColor("black");
    obj.horzLine13:setName("horzLine13");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout35);
    obj.edit29:setField("mhabilidades5_f");
    obj.edit29:setLeft(2);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(125);
    obj.edit29:setHeight(20);
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setFontColor("black");
    obj.edit29:setFontSize(14);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setTransparent(true);
    obj.edit29:setName("edit29");

    obj.imageCheckBox73 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox73:setParent(obj.layout35);
    obj.imageCheckBox73:setField("mhabilidades5_h1");
    obj.imageCheckBox73:setLeft(137);
    obj.imageCheckBox73:setTop(4);
    obj.imageCheckBox73:setWidth(15);
    obj.imageCheckBox73:setHeight(15);
    obj.imageCheckBox73:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox73:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox73:setName("imageCheckBox73");

    obj.imageCheckBox74 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox74:setParent(obj.layout35);
    obj.imageCheckBox74:setField("mhabilidades5_h2");
    obj.imageCheckBox74:setLeft(155);
    obj.imageCheckBox74:setTop(4);
    obj.imageCheckBox74:setWidth(15);
    obj.imageCheckBox74:setHeight(15);
    obj.imageCheckBox74:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox74:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox74:setName("imageCheckBox74");

    obj.imageCheckBox75 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox75:setParent(obj.layout35);
    obj.imageCheckBox75:setField("mhabilidades5_h3");
    obj.imageCheckBox75:setLeft(173);
    obj.imageCheckBox75:setTop(4);
    obj.imageCheckBox75:setWidth(15);
    obj.imageCheckBox75:setHeight(15);
    obj.imageCheckBox75:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox75:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox75:setName("imageCheckBox75");

    obj.imageCheckBox76 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox76:setParent(obj.layout35);
    obj.imageCheckBox76:setField("mhabilidades5_h4");
    obj.imageCheckBox76:setLeft(191);
    obj.imageCheckBox76:setTop(4);
    obj.imageCheckBox76:setWidth(15);
    obj.imageCheckBox76:setHeight(15);
    obj.imageCheckBox76:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox76:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox76:setName("imageCheckBox76");

    obj.imageCheckBox77 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox77:setParent(obj.layout35);
    obj.imageCheckBox77:setField("mhabilidades5_h5");
    obj.imageCheckBox77:setLeft(209);
    obj.imageCheckBox77:setTop(4);
    obj.imageCheckBox77:setWidth(15);
    obj.imageCheckBox77:setHeight(15);
    obj.imageCheckBox77:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox77:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox77:setName("imageCheckBox77");

    obj.imageCheckBox78 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox78:setParent(obj.layout35);
    obj.imageCheckBox78:setField("mhabilidades5_h6");
    obj.imageCheckBox78:setLeft(227);
    obj.imageCheckBox78:setTop(4);
    obj.imageCheckBox78:setWidth(15);
    obj.imageCheckBox78:setHeight(15);
    obj.imageCheckBox78:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox78:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox78:setName("imageCheckBox78");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout30);
    obj.layout36:setLeft(10);
    obj.layout36:setTop(161);
    obj.layout36:setWidth(245);
    obj.layout36:setHeight(20);
    obj.layout36:setName("layout36");

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.layout36);
    obj.horzLine14:setTop(18);
    obj.horzLine14:setWidth(130);
    obj.horzLine14:setStrokeSize(2);
    obj.horzLine14:setStrokeColor("black");
    obj.horzLine14:setName("horzLine14");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout36);
    obj.edit30:setField("mhabilidades6_f");
    obj.edit30:setLeft(2);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(125);
    obj.edit30:setHeight(20);
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setFontColor("black");
    obj.edit30:setFontSize(14);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setTransparent(true);
    obj.edit30:setName("edit30");

    obj.imageCheckBox79 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox79:setParent(obj.layout36);
    obj.imageCheckBox79:setField("mhabilidades6_h1");
    obj.imageCheckBox79:setLeft(137);
    obj.imageCheckBox79:setTop(4);
    obj.imageCheckBox79:setWidth(15);
    obj.imageCheckBox79:setHeight(15);
    obj.imageCheckBox79:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox79:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox79:setName("imageCheckBox79");

    obj.imageCheckBox80 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox80:setParent(obj.layout36);
    obj.imageCheckBox80:setField("mhabilidades6_h2");
    obj.imageCheckBox80:setLeft(155);
    obj.imageCheckBox80:setTop(4);
    obj.imageCheckBox80:setWidth(15);
    obj.imageCheckBox80:setHeight(15);
    obj.imageCheckBox80:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox80:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox80:setName("imageCheckBox80");

    obj.imageCheckBox81 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox81:setParent(obj.layout36);
    obj.imageCheckBox81:setField("mhabilidades6_h3");
    obj.imageCheckBox81:setLeft(173);
    obj.imageCheckBox81:setTop(4);
    obj.imageCheckBox81:setWidth(15);
    obj.imageCheckBox81:setHeight(15);
    obj.imageCheckBox81:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox81:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox81:setName("imageCheckBox81");

    obj.imageCheckBox82 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox82:setParent(obj.layout36);
    obj.imageCheckBox82:setField("mhabilidades6_h4");
    obj.imageCheckBox82:setLeft(191);
    obj.imageCheckBox82:setTop(4);
    obj.imageCheckBox82:setWidth(15);
    obj.imageCheckBox82:setHeight(15);
    obj.imageCheckBox82:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox82:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox82:setName("imageCheckBox82");

    obj.imageCheckBox83 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox83:setParent(obj.layout36);
    obj.imageCheckBox83:setField("mhabilidades6_h5");
    obj.imageCheckBox83:setLeft(209);
    obj.imageCheckBox83:setTop(4);
    obj.imageCheckBox83:setWidth(15);
    obj.imageCheckBox83:setHeight(15);
    obj.imageCheckBox83:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox83:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox83:setName("imageCheckBox83");

    obj.imageCheckBox84 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox84:setParent(obj.layout36);
    obj.imageCheckBox84:setField("mhabilidades6_h6");
    obj.imageCheckBox84:setLeft(227);
    obj.imageCheckBox84:setTop(4);
    obj.imageCheckBox84:setWidth(15);
    obj.imageCheckBox84:setHeight(15);
    obj.imageCheckBox84:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox84:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox84:setName("imageCheckBox84");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout30);
    obj.layout37:setLeft(10);
    obj.layout37:setTop(191);
    obj.layout37:setWidth(245);
    obj.layout37:setHeight(20);
    obj.layout37:setName("layout37");

    obj.horzLine15 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine15:setParent(obj.layout37);
    obj.horzLine15:setTop(18);
    obj.horzLine15:setWidth(130);
    obj.horzLine15:setStrokeSize(2);
    obj.horzLine15:setStrokeColor("black");
    obj.horzLine15:setName("horzLine15");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout37);
    obj.edit31:setField("mhabilidades7_f");
    obj.edit31:setLeft(2);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(125);
    obj.edit31:setHeight(20);
    lfm_setPropAsString(obj.edit31, "fontStyle",  "bold");
    obj.edit31:setFontColor("black");
    obj.edit31:setFontSize(14);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setTransparent(true);
    obj.edit31:setName("edit31");

    obj.imageCheckBox85 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox85:setParent(obj.layout37);
    obj.imageCheckBox85:setField("mhabilidades7_h1");
    obj.imageCheckBox85:setLeft(137);
    obj.imageCheckBox85:setTop(4);
    obj.imageCheckBox85:setWidth(15);
    obj.imageCheckBox85:setHeight(15);
    obj.imageCheckBox85:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox85:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox85:setName("imageCheckBox85");

    obj.imageCheckBox86 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox86:setParent(obj.layout37);
    obj.imageCheckBox86:setField("mhabilidades7_h2");
    obj.imageCheckBox86:setLeft(155);
    obj.imageCheckBox86:setTop(4);
    obj.imageCheckBox86:setWidth(15);
    obj.imageCheckBox86:setHeight(15);
    obj.imageCheckBox86:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox86:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox86:setName("imageCheckBox86");

    obj.imageCheckBox87 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox87:setParent(obj.layout37);
    obj.imageCheckBox87:setField("mhabilidades7_h3");
    obj.imageCheckBox87:setLeft(173);
    obj.imageCheckBox87:setTop(4);
    obj.imageCheckBox87:setWidth(15);
    obj.imageCheckBox87:setHeight(15);
    obj.imageCheckBox87:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox87:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox87:setName("imageCheckBox87");

    obj.imageCheckBox88 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox88:setParent(obj.layout37);
    obj.imageCheckBox88:setField("mhabilidades7_h4");
    obj.imageCheckBox88:setLeft(191);
    obj.imageCheckBox88:setTop(4);
    obj.imageCheckBox88:setWidth(15);
    obj.imageCheckBox88:setHeight(15);
    obj.imageCheckBox88:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox88:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox88:setName("imageCheckBox88");

    obj.imageCheckBox89 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox89:setParent(obj.layout37);
    obj.imageCheckBox89:setField("mhabilidades7_h5");
    obj.imageCheckBox89:setLeft(209);
    obj.imageCheckBox89:setTop(4);
    obj.imageCheckBox89:setWidth(15);
    obj.imageCheckBox89:setHeight(15);
    obj.imageCheckBox89:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox89:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox89:setName("imageCheckBox89");

    obj.imageCheckBox90 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox90:setParent(obj.layout37);
    obj.imageCheckBox90:setField("mhabilidades7_h6");
    obj.imageCheckBox90:setLeft(227);
    obj.imageCheckBox90:setTop(4);
    obj.imageCheckBox90:setWidth(15);
    obj.imageCheckBox90:setHeight(15);
    obj.imageCheckBox90:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox90:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox90:setName("imageCheckBox90");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout30);
    obj.layout38:setLeft(10);
    obj.layout38:setTop(221);
    obj.layout38:setWidth(245);
    obj.layout38:setHeight(20);
    obj.layout38:setName("layout38");

    obj.horzLine16 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine16:setParent(obj.layout38);
    obj.horzLine16:setTop(18);
    obj.horzLine16:setWidth(130);
    obj.horzLine16:setStrokeSize(2);
    obj.horzLine16:setStrokeColor("black");
    obj.horzLine16:setName("horzLine16");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout38);
    obj.edit32:setField("mhabilidades8_f");
    obj.edit32:setLeft(2);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(125);
    obj.edit32:setHeight(20);
    lfm_setPropAsString(obj.edit32, "fontStyle",  "bold");
    obj.edit32:setFontColor("black");
    obj.edit32:setFontSize(14);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setTransparent(true);
    obj.edit32:setName("edit32");

    obj.imageCheckBox91 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox91:setParent(obj.layout38);
    obj.imageCheckBox91:setField("mhabilidades8_h1");
    obj.imageCheckBox91:setLeft(137);
    obj.imageCheckBox91:setTop(4);
    obj.imageCheckBox91:setWidth(15);
    obj.imageCheckBox91:setHeight(15);
    obj.imageCheckBox91:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox91:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox91:setName("imageCheckBox91");

    obj.imageCheckBox92 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox92:setParent(obj.layout38);
    obj.imageCheckBox92:setField("mhabilidades8_h2");
    obj.imageCheckBox92:setLeft(155);
    obj.imageCheckBox92:setTop(4);
    obj.imageCheckBox92:setWidth(15);
    obj.imageCheckBox92:setHeight(15);
    obj.imageCheckBox92:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox92:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox92:setName("imageCheckBox92");

    obj.imageCheckBox93 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox93:setParent(obj.layout38);
    obj.imageCheckBox93:setField("mhabilidades8_h3");
    obj.imageCheckBox93:setLeft(173);
    obj.imageCheckBox93:setTop(4);
    obj.imageCheckBox93:setWidth(15);
    obj.imageCheckBox93:setHeight(15);
    obj.imageCheckBox93:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox93:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox93:setName("imageCheckBox93");

    obj.imageCheckBox94 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox94:setParent(obj.layout38);
    obj.imageCheckBox94:setField("mhabilidades8_h4");
    obj.imageCheckBox94:setLeft(191);
    obj.imageCheckBox94:setTop(4);
    obj.imageCheckBox94:setWidth(15);
    obj.imageCheckBox94:setHeight(15);
    obj.imageCheckBox94:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox94:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox94:setName("imageCheckBox94");

    obj.imageCheckBox95 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox95:setParent(obj.layout38);
    obj.imageCheckBox95:setField("mhabilidades8_h5");
    obj.imageCheckBox95:setLeft(209);
    obj.imageCheckBox95:setTop(4);
    obj.imageCheckBox95:setWidth(15);
    obj.imageCheckBox95:setHeight(15);
    obj.imageCheckBox95:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox95:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox95:setName("imageCheckBox95");

    obj.imageCheckBox96 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox96:setParent(obj.layout38);
    obj.imageCheckBox96:setField("mhabilidades8_h6");
    obj.imageCheckBox96:setLeft(227);
    obj.imageCheckBox96:setTop(4);
    obj.imageCheckBox96:setWidth(15);
    obj.imageCheckBox96:setHeight(15);
    obj.imageCheckBox96:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox96:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox96:setName("imageCheckBox96");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout20);
    obj.layout39:setLeft(560);
    obj.layout39:setTop(36);
    obj.layout39:setWidth(260);
    obj.layout39:setHeight(250);
    obj.layout39:setName("layout39");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout39);
    obj.layout40:setLeft(10);
    obj.layout40:setTop(11);
    obj.layout40:setWidth(245);
    obj.layout40:setHeight(20);
    obj.layout40:setName("layout40");

    obj.horzLine17 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine17:setParent(obj.layout40);
    obj.horzLine17:setTop(18);
    obj.horzLine17:setWidth(238);
    obj.horzLine17:setStrokeSize(2);
    obj.horzLine17:setStrokeColor("black");
    obj.horzLine17:setName("horzLine17");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout40);
    obj.label31:setWidth(80);
    obj.label31:setHeight(20);
    obj.label31:setText("Nível 1 ->");
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontSize(15);
    obj.label31:setFontColor("black");
    obj.label31:setName("label31");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout40);
    obj.edit33:setField("cnivel1");
    obj.edit33:setLeft(70);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(168);
    obj.edit33:setHeight(20);
    lfm_setPropAsString(obj.edit33, "fontStyle",  "bold");
    obj.edit33:setFontColor("black");
    obj.edit33:setFontSize(15);
    obj.edit33:setTransparent(true);
    obj.edit33:setName("edit33");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout39);
    obj.layout41:setLeft(10);
    obj.layout41:setTop(53);
    obj.layout41:setWidth(245);
    obj.layout41:setHeight(20);
    obj.layout41:setName("layout41");

    obj.horzLine18 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine18:setParent(obj.layout41);
    obj.horzLine18:setTop(18);
    obj.horzLine18:setWidth(238);
    obj.horzLine18:setStrokeSize(2);
    obj.horzLine18:setStrokeColor("black");
    obj.horzLine18:setName("horzLine18");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout41);
    obj.label32:setWidth(80);
    obj.label32:setHeight(20);
    obj.label32:setText("Nível 2 ->");
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontSize(15);
    obj.label32:setFontColor("black");
    obj.label32:setName("label32");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout41);
    obj.edit34:setField("cnivel2");
    obj.edit34:setLeft(70);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(168);
    obj.edit34:setHeight(20);
    lfm_setPropAsString(obj.edit34, "fontStyle",  "bold");
    obj.edit34:setFontColor("black");
    obj.edit34:setFontSize(15);
    obj.edit34:setTransparent(true);
    obj.edit34:setName("edit34");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout39);
    obj.layout42:setLeft(10);
    obj.layout42:setTop(95);
    obj.layout42:setWidth(245);
    obj.layout42:setHeight(20);
    obj.layout42:setName("layout42");

    obj.horzLine19 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine19:setParent(obj.layout42);
    obj.horzLine19:setTop(18);
    obj.horzLine19:setWidth(238);
    obj.horzLine19:setStrokeSize(2);
    obj.horzLine19:setStrokeColor("black");
    obj.horzLine19:setName("horzLine19");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout42);
    obj.label33:setWidth(80);
    obj.label33:setHeight(20);
    obj.label33:setText("Nível 3 ->");
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");
    obj.label33:setFontSize(15);
    obj.label33:setFontColor("black");
    obj.label33:setName("label33");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout42);
    obj.edit35:setField("cnivel3");
    obj.edit35:setLeft(70);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(168);
    obj.edit35:setHeight(20);
    lfm_setPropAsString(obj.edit35, "fontStyle",  "bold");
    obj.edit35:setFontColor("black");
    obj.edit35:setFontSize(15);
    obj.edit35:setTransparent(true);
    obj.edit35:setName("edit35");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout39);
    obj.layout43:setLeft(10);
    obj.layout43:setTop(137);
    obj.layout43:setWidth(245);
    obj.layout43:setHeight(20);
    obj.layout43:setName("layout43");

    obj.horzLine20 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine20:setParent(obj.layout43);
    obj.horzLine20:setTop(18);
    obj.horzLine20:setWidth(238);
    obj.horzLine20:setStrokeSize(2);
    obj.horzLine20:setStrokeColor("black");
    obj.horzLine20:setName("horzLine20");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout43);
    obj.label34:setWidth(80);
    obj.label34:setHeight(20);
    obj.label34:setText("Nível 4 ->");
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontSize(15);
    obj.label34:setFontColor("black");
    obj.label34:setName("label34");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout43);
    obj.edit36:setField("cnivel4");
    obj.edit36:setLeft(70);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(168);
    obj.edit36:setHeight(20);
    lfm_setPropAsString(obj.edit36, "fontStyle",  "bold");
    obj.edit36:setFontColor("black");
    obj.edit36:setFontSize(15);
    obj.edit36:setTransparent(true);
    obj.edit36:setName("edit36");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout39);
    obj.layout44:setLeft(10);
    obj.layout44:setTop(179);
    obj.layout44:setWidth(245);
    obj.layout44:setHeight(20);
    obj.layout44:setName("layout44");

    obj.horzLine21 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine21:setParent(obj.layout44);
    obj.horzLine21:setTop(18);
    obj.horzLine21:setWidth(238);
    obj.horzLine21:setStrokeSize(2);
    obj.horzLine21:setStrokeColor("black");
    obj.horzLine21:setName("horzLine21");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout44);
    obj.label35:setWidth(80);
    obj.label35:setHeight(20);
    obj.label35:setText("Nível 5 ->");
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontSize(15);
    obj.label35:setFontColor("black");
    obj.label35:setName("label35");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout44);
    obj.edit37:setField("cnivel5");
    obj.edit37:setLeft(70);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(168);
    obj.edit37:setHeight(20);
    lfm_setPropAsString(obj.edit37, "fontStyle",  "bold");
    obj.edit37:setFontColor("black");
    obj.edit37:setFontSize(15);
    obj.edit37:setTransparent(true);
    obj.edit37:setName("edit37");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout39);
    obj.layout45:setLeft(10);
    obj.layout45:setTop(221);
    obj.layout45:setWidth(245);
    obj.layout45:setHeight(20);
    obj.layout45:setName("layout45");

    obj.horzLine22 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine22:setParent(obj.layout45);
    obj.horzLine22:setTop(18);
    obj.horzLine22:setWidth(238);
    obj.horzLine22:setStrokeSize(2);
    obj.horzLine22:setStrokeColor("black");
    obj.horzLine22:setName("horzLine22");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout45);
    obj.label36:setWidth(80);
    obj.label36:setHeight(20);
    obj.label36:setText("Nível 6 ->");
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setFontSize(15);
    obj.label36:setFontColor("black");
    obj.label36:setName("label36");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout45);
    obj.edit38:setField("cnivel6");
    obj.edit38:setLeft(70);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(168);
    obj.edit38:setHeight(20);
    lfm_setPropAsString(obj.edit38, "fontStyle",  "bold");
    obj.edit38:setFontColor("black");
    obj.edit38:setFontSize(15);
    obj.edit38:setTransparent(true);
    obj.edit38:setName("edit38");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.OsMundosDosMortos1);
    obj.dataLink1:setFields({'musc_1', 'musc_2', 'musc_3', 'musc_4', 'musc_5', 'musc_6', 'musc_7', 'musc_8', 'musc_9', 'musc_10', 'cereb_1', 'cereb_2', 'cereb_3', 'cereb_4', 'cereb_5', 'cereb_6', 'cereb_7', 'cereb_8', 'cereb_9', 'cereb_10', 'corac_1', 'corac_2', 'corac_3', 'corac_4', 'corac_5', 'corac_6', 'corac_7', 'corac_8', 'corac_9', 'corac_10'});
    obj.dataLink1:setName("dataLink1");

    obj.frmCodigo1 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo1:setParent(obj.OsMundosDosMortos1);
    obj.frmCodigo1:setName("frmCodigo1");
    obj.frmCodigo1:setHeight(0);
    obj.frmCodigo1:setTheme("light");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmCodigo1);
    obj.dataLink2:setFields({'musc_10', 'musc_9', 'musc_8', 'musc_7','musc_6', 'musc_5', 'musc_4', 'musc_3', 'musc_2', 'musc_1'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmCodigo1);
    obj.dataLink3:setFields({'cereb_10', 'cereb_9', 'cereb_8', 'cereb_7','cereb_6', 'cereb_5', 'cereb_4', 'cereb_3', 'cereb_2', 'cereb_1'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmCodigo1);
    obj.dataLink4:setFields({'corac_10', 'corac_9', 'corac_8', 'corac_7','corac_6', 'corac_5', 'corac_4', 'corac_3', 'corac_2', 'corac_1'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmCodigo1);
    obj.dataLink5:setFields({'mhabilidades1_6', 'mhabilidades1_5', 'mhabilidades1_4', 'mhabilidades1_3', 'mhabilidades1_2', 'mhabilidades1_1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmCodigo1);
    obj.dataLink6:setFields({'mhabilidades2_6', 'mhabilidades2_5', 'mhabilidades2_4', 'mhabilidades2_3', 'mhabilidades2_2', 'mhabilidades2_1'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmCodigo1);
    obj.dataLink7:setFields({'mhabilidades3_6', 'mhabilidades3_5', 'mhabilidades3_4', 'mhabilidades3_3', 'mhabilidades3_2', 'mhabilidades3_1'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmCodigo1);
    obj.dataLink8:setFields({'mhabilidades4_6', 'mhabilidades4_5', 'mhabilidades4_4', 'mhabilidades4_3', 'mhabilidades4_2', 'mhabilidades4_1'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmCodigo1);
    obj.dataLink9:setFields({'mhabilidades5_6', 'mhabilidades5_5', 'mhabilidades5_4', 'mhabilidades5_3', 'mhabilidades5_2', 'mhabilidades5_1'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmCodigo1);
    obj.dataLink10:setFields({'mhabilidades6_6', 'mhabilidades6_5', 'mhabilidades6_4', 'mhabilidades6_3', 'mhabilidades6_2', 'mhabilidades6_1'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmCodigo1);
    obj.dataLink11:setFields({'mhabilidades7_6', 'mhabilidades7_5', 'mhabilidades7_4', 'mhabilidades7_3', 'mhabilidades7_2', 'mhabilidades7_1'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmCodigo1);
    obj.dataLink12:setFields({'mhabilidades8_6', 'mhabilidades8_5', 'mhabilidades8_4', 'mhabilidades8_3', 'mhabilidades8_2', 'mhabilidades8_1'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.frmCodigo1);
    obj.dataLink13:setFields({'mhabilidades1_h6', 'mhabilidades1_h5', 'mhabilidades1_h4', 'mhabilidades1_h3', 'mhabilidades1_h2', 'mhabilidades1_h1'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.frmCodigo1);
    obj.dataLink14:setFields({'mhabilidades2_h6', 'mhabilidades2_h5', 'mhabilidades2_h4', 'mhabilidades2_h3', 'mhabilidades2_h2', 'mhabilidades2_h1'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.frmCodigo1);
    obj.dataLink15:setFields({'mhabilidades3_h6', 'mhabilidades3_h5', 'mhabilidades3_h4', 'mhabilidades3_h3', 'mhabilidades3_h2', 'mhabilidades3_h1'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.frmCodigo1);
    obj.dataLink16:setFields({'mhabilidades4_h6', 'mhabilidades4_h5', 'mhabilidades4_h4', 'mhabilidades4_h3', 'mhabilidades4_h2', 'mhabilidades4_h1'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.frmCodigo1);
    obj.dataLink17:setFields({'mhabilidades5_h6', 'mhabilidades5_h5', 'mhabilidades5_h4', 'mhabilidades5_h3', 'mhabilidades5_h2', 'mhabilidades5_h1'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.frmCodigo1);
    obj.dataLink18:setFields({'mhabilidades6_h6', 'mhabilidades6_h5', 'mhabilidades6_h4', 'mhabilidades6_h3', 'mhabilidades6_h2', 'mhabilidades6_h1'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.frmCodigo1);
    obj.dataLink19:setFields({'mhabilidades7_h6', 'mhabilidades7_h5', 'mhabilidades7_h4', 'mhabilidades7_h3', 'mhabilidades7_h2', 'mhabilidades7_h1'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.frmCodigo1);
    obj.dataLink20:setFields({'mhabilidades8_h6', 'mhabilidades8_h5', 'mhabilidades8_h4', 'mhabilidades8_h3', 'mhabilidades8_h2', 'mhabilidades8_h1'});
    obj.dataLink20:setName("dataLink20");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Verso");
    obj.tab2:setName("tab2");

    obj.OsMundosDosMortos2 = GUI.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortos2:setParent(obj.tab2);
    obj.OsMundosDosMortos2:setName("OsMundosDosMortos2");
    obj.OsMundosDosMortos2:setAlign("client");
    obj.OsMundosDosMortos2:setTheme("dark");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.OsMundosDosMortos2);
    obj.image11:setAlign("client");
    obj.image11:setField("backgroundimg");
    obj.image11:setStyle("stretch");
    obj.image11:setSRC("");
    obj.image11:setName("image11");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.OsMundosDosMortos2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.scrollBox2);
    obj.layout46:setLeft(0);
    obj.layout46:setTop(0);
    obj.layout46:setWidth(880);
    obj.layout46:setHeight(30);
    obj.layout46:setName("layout46");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout46);
    obj.rectangle20:setAlign("client");
    obj.rectangle20:setColor("gray");
    obj.rectangle20:setName("rectangle20");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout46);
    obj.label37:setLeft(8);
    obj.label37:setTop(5);
    obj.label37:setWidth(138);
    obj.label37:setHeight(20);
    obj.label37:setText("Histórico");
    obj.label37:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontColor("black");
    obj.label37:setName("label37");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.scrollBox2);
    obj.layout47:setLeft(10);
    obj.layout47:setTop(40);
    obj.layout47:setWidth(860);
    obj.layout47:setHeight(240);
    obj.layout47:setName("layout47");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout47);
    obj.rectangle21:setLeft(5);
    obj.rectangle21:setTop(0);
    obj.rectangle21:setColor("Gainsboro");
    obj.rectangle21:setWidth(65);
    obj.rectangle21:setXradius(2);
    obj.rectangle21:setYradius(2);
    obj.rectangle21:setName("rectangle21");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout47);
    obj.label38:setLeft(7);
    obj.label38:setWidth(80);
    obj.label38:setHeight(20);
    obj.label38:setText("Infância");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setFontSize(16);
    obj.label38:setFontColor("black");
    obj.label38:setName("label38");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout47);
    obj.textEditor1:setTop(20);
    obj.textEditor1:setWidth(860);
    obj.textEditor1:setHeight(240);
    obj.textEditor1:setField("bginfancia");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.scrollBox2);
    obj.layout48:setLeft(10);
    obj.layout48:setTop(290);
    obj.layout48:setWidth(860);
    obj.layout48:setHeight(240);
    obj.layout48:setName("layout48");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout48);
    obj.rectangle22:setLeft(5);
    obj.rectangle22:setTop(0);
    obj.rectangle22:setColor("Gainsboro");
    obj.rectangle22:setWidth(103);
    obj.rectangle22:setXradius(2);
    obj.rectangle22:setYradius(2);
    obj.rectangle22:setName("rectangle22");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout48);
    obj.label39:setLeft(7);
    obj.label39:setWidth(100);
    obj.label39:setHeight(20);
    obj.label39:setText("Adolescência");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setFontSize(16);
    obj.label39:setFontColor("black");
    obj.label39:setName("label39");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout48);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(860);
    obj.textEditor2:setHeight(240);
    obj.textEditor2:setField("bgadolescencia");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.scrollBox2);
    obj.layout49:setLeft(10);
    obj.layout49:setTop(540);
    obj.layout49:setWidth(860);
    obj.layout49:setHeight(240);
    obj.layout49:setName("layout49");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout49);
    obj.rectangle23:setLeft(5);
    obj.rectangle23:setTop(0);
    obj.rectangle23:setColor("Gainsboro");
    obj.rectangle23:setWidth(90);
    obj.rectangle23:setXradius(2);
    obj.rectangle23:setYradius(2);
    obj.rectangle23:setName("rectangle23");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout49);
    obj.label40:setLeft(7);
    obj.label40:setWidth(90);
    obj.label40:setHeight(20);
    obj.label40:setText("Fase adulta");
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setFontSize(16);
    obj.label40:setFontColor("black");
    obj.label40:setName("label40");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout49);
    obj.textEditor3:setTop(20);
    obj.textEditor3:setWidth(860);
    obj.textEditor3:setHeight(240);
    obj.textEditor3:setField("bgadulta");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Informações");
    obj.tab3:setName("tab3");

    obj.OsMundosDosMortos3 = GUI.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortos3:setParent(obj.tab3);
    obj.OsMundosDosMortos3:setName("OsMundosDosMortos3");
    obj.OsMundosDosMortos3:setAlign("client");
    obj.OsMundosDosMortos3:setTheme("dark");
    obj.OsMundosDosMortos3:setLockWhileNodeIsLoading(true);

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.OsMundosDosMortos3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.scrollBox3);
    obj.layout50:setLeft(0);
    obj.layout50:setTop(0);
    obj.layout50:setWidth(880);
    obj.layout50:setHeight(30);
    obj.layout50:setName("layout50");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout50);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setColor("gray");
    obj.rectangle24:setName("rectangle24");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout50);
    obj.label41:setLeft(8);
    obj.label41:setTop(5);
    obj.label41:setWidth(168);
    obj.label41:setHeight(20);
    obj.label41:setText("Habilidades Secundarias");
    obj.label41:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setFontColor("black");
    obj.label41:setName("label41");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.scrollBox3);
    obj.layout51:setLeft(10);
    obj.layout51:setTop(45);
    obj.layout51:setWidth(860);
    obj.layout51:setHeight(320);
    obj.layout51:setName("layout51");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout51);
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setName("rectangle25");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout51);
    obj.label42:setLeft(100);
    obj.label42:setTop(10);
    obj.label42:setWidth(130);
    obj.label42:setHeight(20);
    obj.label42:setText("Minhas Habilidades");
    obj.label42:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setFontSize(13);
    obj.label42:setFontColor("black");
    obj.label42:setName("label42");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout51);
    obj.label43:setLeft(365);
    obj.label43:setTop(10);
    obj.label43:setWidth(130);
    obj.label43:setHeight(20);
    obj.label43:setText("Minhas Habilidades");
    obj.label43:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setFontSize(13);
    obj.label43:setFontColor("black");
    obj.label43:setName("label43");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout51);
    obj.label44:setLeft(620);
    obj.label44:setTop(10);
    obj.label44:setWidth(140);
    obj.label44:setHeight(20);
    obj.label44:setText("Habilidades de Classe");
    obj.label44:setHorzTextAlign("trailing");
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setFontSize(13);
    obj.label44:setFontColor("black");
    obj.label44:setName("label44");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout51);
    obj.layout52:setLeft(30);
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

    obj.horzLine23 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine23:setParent(obj.layout53);
    obj.horzLine23:setTop(18);
    obj.horzLine23:setWidth(130);
    obj.horzLine23:setStrokeSize(2);
    obj.horzLine23:setStrokeColor("black");
    obj.horzLine23:setName("horzLine23");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout53);
    obj.edit39:setField("shabilidades1_e");
    obj.edit39:setLeft(2);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(125);
    obj.edit39:setHeight(20);
    lfm_setPropAsString(obj.edit39, "fontStyle",  "bold");
    obj.edit39:setFontColor("black");
    obj.edit39:setFontSize(14);
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setTransparent(true);
    obj.edit39:setName("edit39");

    obj.imageCheckBox97 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox97:setParent(obj.layout53);
    obj.imageCheckBox97:setField("shabilidades1_1");
    obj.imageCheckBox97:setLeft(137);
    obj.imageCheckBox97:setTop(4);
    obj.imageCheckBox97:setWidth(15);
    obj.imageCheckBox97:setHeight(15);
    obj.imageCheckBox97:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox97:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox97:setName("imageCheckBox97");

    obj.imageCheckBox98 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox98:setParent(obj.layout53);
    obj.imageCheckBox98:setField("shabilidades1_2");
    obj.imageCheckBox98:setLeft(155);
    obj.imageCheckBox98:setTop(4);
    obj.imageCheckBox98:setWidth(15);
    obj.imageCheckBox98:setHeight(15);
    obj.imageCheckBox98:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox98:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox98:setName("imageCheckBox98");

    obj.imageCheckBox99 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox99:setParent(obj.layout53);
    obj.imageCheckBox99:setField("shabilidades1_3");
    obj.imageCheckBox99:setLeft(173);
    obj.imageCheckBox99:setTop(4);
    obj.imageCheckBox99:setWidth(15);
    obj.imageCheckBox99:setHeight(15);
    obj.imageCheckBox99:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox99:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox99:setName("imageCheckBox99");

    obj.imageCheckBox100 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox100:setParent(obj.layout53);
    obj.imageCheckBox100:setField("shabilidades1_4");
    obj.imageCheckBox100:setLeft(191);
    obj.imageCheckBox100:setTop(4);
    obj.imageCheckBox100:setWidth(15);
    obj.imageCheckBox100:setHeight(15);
    obj.imageCheckBox100:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox100:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox100:setName("imageCheckBox100");

    obj.imageCheckBox101 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox101:setParent(obj.layout53);
    obj.imageCheckBox101:setField("shabilidades1_5");
    obj.imageCheckBox101:setLeft(209);
    obj.imageCheckBox101:setTop(4);
    obj.imageCheckBox101:setWidth(15);
    obj.imageCheckBox101:setHeight(15);
    obj.imageCheckBox101:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox101:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox101:setName("imageCheckBox101");

    obj.imageCheckBox102 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox102:setParent(obj.layout53);
    obj.imageCheckBox102:setField("shabilidades1_6");
    obj.imageCheckBox102:setLeft(227);
    obj.imageCheckBox102:setTop(4);
    obj.imageCheckBox102:setWidth(15);
    obj.imageCheckBox102:setHeight(15);
    obj.imageCheckBox102:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox102:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox102:setName("imageCheckBox102");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout52);
    obj.layout54:setLeft(10);
    obj.layout54:setTop(41);
    obj.layout54:setWidth(245);
    obj.layout54:setHeight(20);
    obj.layout54:setName("layout54");

    obj.horzLine24 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine24:setParent(obj.layout54);
    obj.horzLine24:setTop(18);
    obj.horzLine24:setWidth(130);
    obj.horzLine24:setStrokeSize(2);
    obj.horzLine24:setStrokeColor("black");
    obj.horzLine24:setName("horzLine24");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout54);
    obj.edit40:setField("shabilidades2_e");
    obj.edit40:setLeft(2);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(125);
    obj.edit40:setHeight(20);
    lfm_setPropAsString(obj.edit40, "fontStyle",  "bold");
    obj.edit40:setFontColor("black");
    obj.edit40:setFontSize(14);
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setTransparent(true);
    obj.edit40:setName("edit40");

    obj.imageCheckBox103 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox103:setParent(obj.layout54);
    obj.imageCheckBox103:setField("shabilidades2_1");
    obj.imageCheckBox103:setLeft(137);
    obj.imageCheckBox103:setTop(4);
    obj.imageCheckBox103:setWidth(15);
    obj.imageCheckBox103:setHeight(15);
    obj.imageCheckBox103:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox103:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox103:setName("imageCheckBox103");

    obj.imageCheckBox104 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox104:setParent(obj.layout54);
    obj.imageCheckBox104:setField("shabilidades2_2");
    obj.imageCheckBox104:setLeft(155);
    obj.imageCheckBox104:setTop(4);
    obj.imageCheckBox104:setWidth(15);
    obj.imageCheckBox104:setHeight(15);
    obj.imageCheckBox104:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox104:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox104:setName("imageCheckBox104");

    obj.imageCheckBox105 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox105:setParent(obj.layout54);
    obj.imageCheckBox105:setField("shabilidades2_3");
    obj.imageCheckBox105:setLeft(173);
    obj.imageCheckBox105:setTop(4);
    obj.imageCheckBox105:setWidth(15);
    obj.imageCheckBox105:setHeight(15);
    obj.imageCheckBox105:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox105:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox105:setName("imageCheckBox105");

    obj.imageCheckBox106 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox106:setParent(obj.layout54);
    obj.imageCheckBox106:setField("shabilidades2_4");
    obj.imageCheckBox106:setLeft(191);
    obj.imageCheckBox106:setTop(4);
    obj.imageCheckBox106:setWidth(15);
    obj.imageCheckBox106:setHeight(15);
    obj.imageCheckBox106:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox106:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox106:setName("imageCheckBox106");

    obj.imageCheckBox107 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox107:setParent(obj.layout54);
    obj.imageCheckBox107:setField("shabilidades2_5");
    obj.imageCheckBox107:setLeft(209);
    obj.imageCheckBox107:setTop(4);
    obj.imageCheckBox107:setWidth(15);
    obj.imageCheckBox107:setHeight(15);
    obj.imageCheckBox107:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox107:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox107:setName("imageCheckBox107");

    obj.imageCheckBox108 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox108:setParent(obj.layout54);
    obj.imageCheckBox108:setField("shabilidades2_6");
    obj.imageCheckBox108:setLeft(227);
    obj.imageCheckBox108:setTop(4);
    obj.imageCheckBox108:setWidth(15);
    obj.imageCheckBox108:setHeight(15);
    obj.imageCheckBox108:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox108:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox108:setName("imageCheckBox108");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout52);
    obj.layout55:setLeft(10);
    obj.layout55:setTop(71);
    obj.layout55:setWidth(245);
    obj.layout55:setHeight(20);
    obj.layout55:setName("layout55");

    obj.horzLine25 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine25:setParent(obj.layout55);
    obj.horzLine25:setTop(18);
    obj.horzLine25:setWidth(130);
    obj.horzLine25:setStrokeSize(2);
    obj.horzLine25:setStrokeColor("black");
    obj.horzLine25:setName("horzLine25");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout55);
    obj.edit41:setField("shabilidades3_e");
    obj.edit41:setLeft(2);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(125);
    obj.edit41:setHeight(20);
    lfm_setPropAsString(obj.edit41, "fontStyle",  "bold");
    obj.edit41:setFontColor("black");
    obj.edit41:setFontSize(14);
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setTransparent(true);
    obj.edit41:setName("edit41");

    obj.imageCheckBox109 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox109:setParent(obj.layout55);
    obj.imageCheckBox109:setField("shabilidades3_1");
    obj.imageCheckBox109:setLeft(137);
    obj.imageCheckBox109:setTop(4);
    obj.imageCheckBox109:setWidth(15);
    obj.imageCheckBox109:setHeight(15);
    obj.imageCheckBox109:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox109:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox109:setName("imageCheckBox109");

    obj.imageCheckBox110 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox110:setParent(obj.layout55);
    obj.imageCheckBox110:setField("shabilidades3_2");
    obj.imageCheckBox110:setLeft(155);
    obj.imageCheckBox110:setTop(4);
    obj.imageCheckBox110:setWidth(15);
    obj.imageCheckBox110:setHeight(15);
    obj.imageCheckBox110:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox110:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox110:setName("imageCheckBox110");

    obj.imageCheckBox111 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox111:setParent(obj.layout55);
    obj.imageCheckBox111:setField("shabilidades3_3");
    obj.imageCheckBox111:setLeft(173);
    obj.imageCheckBox111:setTop(4);
    obj.imageCheckBox111:setWidth(15);
    obj.imageCheckBox111:setHeight(15);
    obj.imageCheckBox111:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox111:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox111:setName("imageCheckBox111");

    obj.imageCheckBox112 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox112:setParent(obj.layout55);
    obj.imageCheckBox112:setField("shabilidades3_4");
    obj.imageCheckBox112:setLeft(191);
    obj.imageCheckBox112:setTop(4);
    obj.imageCheckBox112:setWidth(15);
    obj.imageCheckBox112:setHeight(15);
    obj.imageCheckBox112:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox112:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox112:setName("imageCheckBox112");

    obj.imageCheckBox113 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox113:setParent(obj.layout55);
    obj.imageCheckBox113:setField("shabilidades3_5");
    obj.imageCheckBox113:setLeft(209);
    obj.imageCheckBox113:setTop(4);
    obj.imageCheckBox113:setWidth(15);
    obj.imageCheckBox113:setHeight(15);
    obj.imageCheckBox113:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox113:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox113:setName("imageCheckBox113");

    obj.imageCheckBox114 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox114:setParent(obj.layout55);
    obj.imageCheckBox114:setField("shabilidades3_6");
    obj.imageCheckBox114:setLeft(227);
    obj.imageCheckBox114:setTop(4);
    obj.imageCheckBox114:setWidth(15);
    obj.imageCheckBox114:setHeight(15);
    obj.imageCheckBox114:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox114:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox114:setName("imageCheckBox114");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout52);
    obj.layout56:setLeft(10);
    obj.layout56:setTop(101);
    obj.layout56:setWidth(245);
    obj.layout56:setHeight(20);
    obj.layout56:setName("layout56");

    obj.horzLine26 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine26:setParent(obj.layout56);
    obj.horzLine26:setTop(18);
    obj.horzLine26:setWidth(130);
    obj.horzLine26:setStrokeSize(2);
    obj.horzLine26:setStrokeColor("black");
    obj.horzLine26:setName("horzLine26");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout56);
    obj.edit42:setField("shabilidades4_e");
    obj.edit42:setLeft(2);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(125);
    obj.edit42:setHeight(20);
    lfm_setPropAsString(obj.edit42, "fontStyle",  "bold");
    obj.edit42:setFontColor("black");
    obj.edit42:setFontSize(14);
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setTransparent(true);
    obj.edit42:setName("edit42");

    obj.imageCheckBox115 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox115:setParent(obj.layout56);
    obj.imageCheckBox115:setField("shabilidades4_1");
    obj.imageCheckBox115:setLeft(137);
    obj.imageCheckBox115:setTop(4);
    obj.imageCheckBox115:setWidth(15);
    obj.imageCheckBox115:setHeight(15);
    obj.imageCheckBox115:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox115:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox115:setName("imageCheckBox115");

    obj.imageCheckBox116 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox116:setParent(obj.layout56);
    obj.imageCheckBox116:setField("shabilidades4_2");
    obj.imageCheckBox116:setLeft(155);
    obj.imageCheckBox116:setTop(4);
    obj.imageCheckBox116:setWidth(15);
    obj.imageCheckBox116:setHeight(15);
    obj.imageCheckBox116:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox116:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox116:setName("imageCheckBox116");

    obj.imageCheckBox117 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox117:setParent(obj.layout56);
    obj.imageCheckBox117:setField("shabilidades4_3");
    obj.imageCheckBox117:setLeft(173);
    obj.imageCheckBox117:setTop(4);
    obj.imageCheckBox117:setWidth(15);
    obj.imageCheckBox117:setHeight(15);
    obj.imageCheckBox117:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox117:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox117:setName("imageCheckBox117");

    obj.imageCheckBox118 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox118:setParent(obj.layout56);
    obj.imageCheckBox118:setField("shabilidades4_4");
    obj.imageCheckBox118:setLeft(191);
    obj.imageCheckBox118:setTop(4);
    obj.imageCheckBox118:setWidth(15);
    obj.imageCheckBox118:setHeight(15);
    obj.imageCheckBox118:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox118:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox118:setName("imageCheckBox118");

    obj.imageCheckBox119 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox119:setParent(obj.layout56);
    obj.imageCheckBox119:setField("shabilidades4_5");
    obj.imageCheckBox119:setLeft(209);
    obj.imageCheckBox119:setTop(4);
    obj.imageCheckBox119:setWidth(15);
    obj.imageCheckBox119:setHeight(15);
    obj.imageCheckBox119:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox119:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox119:setName("imageCheckBox119");

    obj.imageCheckBox120 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox120:setParent(obj.layout56);
    obj.imageCheckBox120:setField("shabilidades4_6");
    obj.imageCheckBox120:setLeft(227);
    obj.imageCheckBox120:setTop(4);
    obj.imageCheckBox120:setWidth(15);
    obj.imageCheckBox120:setHeight(15);
    obj.imageCheckBox120:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox120:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox120:setName("imageCheckBox120");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layout52);
    obj.layout57:setLeft(10);
    obj.layout57:setTop(131);
    obj.layout57:setWidth(245);
    obj.layout57:setHeight(20);
    obj.layout57:setName("layout57");

    obj.horzLine27 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine27:setParent(obj.layout57);
    obj.horzLine27:setTop(18);
    obj.horzLine27:setWidth(130);
    obj.horzLine27:setStrokeSize(2);
    obj.horzLine27:setStrokeColor("black");
    obj.horzLine27:setName("horzLine27");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout57);
    obj.edit43:setField("shabilidades5_e");
    obj.edit43:setLeft(2);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(125);
    obj.edit43:setHeight(20);
    lfm_setPropAsString(obj.edit43, "fontStyle",  "bold");
    obj.edit43:setFontColor("black");
    obj.edit43:setFontSize(14);
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setTransparent(true);
    obj.edit43:setName("edit43");

    obj.imageCheckBox121 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox121:setParent(obj.layout57);
    obj.imageCheckBox121:setField("shabilidades5_1");
    obj.imageCheckBox121:setLeft(137);
    obj.imageCheckBox121:setTop(4);
    obj.imageCheckBox121:setWidth(15);
    obj.imageCheckBox121:setHeight(15);
    obj.imageCheckBox121:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox121:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox121:setName("imageCheckBox121");

    obj.imageCheckBox122 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox122:setParent(obj.layout57);
    obj.imageCheckBox122:setField("shabilidades5_2");
    obj.imageCheckBox122:setLeft(155);
    obj.imageCheckBox122:setTop(4);
    obj.imageCheckBox122:setWidth(15);
    obj.imageCheckBox122:setHeight(15);
    obj.imageCheckBox122:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox122:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox122:setName("imageCheckBox122");

    obj.imageCheckBox123 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox123:setParent(obj.layout57);
    obj.imageCheckBox123:setField("shabilidades5_3");
    obj.imageCheckBox123:setLeft(173);
    obj.imageCheckBox123:setTop(4);
    obj.imageCheckBox123:setWidth(15);
    obj.imageCheckBox123:setHeight(15);
    obj.imageCheckBox123:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox123:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox123:setName("imageCheckBox123");

    obj.imageCheckBox124 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox124:setParent(obj.layout57);
    obj.imageCheckBox124:setField("shabilidades5_4");
    obj.imageCheckBox124:setLeft(191);
    obj.imageCheckBox124:setTop(4);
    obj.imageCheckBox124:setWidth(15);
    obj.imageCheckBox124:setHeight(15);
    obj.imageCheckBox124:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox124:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox124:setName("imageCheckBox124");

    obj.imageCheckBox125 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox125:setParent(obj.layout57);
    obj.imageCheckBox125:setField("shabilidades5_5");
    obj.imageCheckBox125:setLeft(209);
    obj.imageCheckBox125:setTop(4);
    obj.imageCheckBox125:setWidth(15);
    obj.imageCheckBox125:setHeight(15);
    obj.imageCheckBox125:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox125:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox125:setName("imageCheckBox125");

    obj.imageCheckBox126 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox126:setParent(obj.layout57);
    obj.imageCheckBox126:setField("shabilidades5_6");
    obj.imageCheckBox126:setLeft(227);
    obj.imageCheckBox126:setTop(4);
    obj.imageCheckBox126:setWidth(15);
    obj.imageCheckBox126:setHeight(15);
    obj.imageCheckBox126:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox126:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox126:setName("imageCheckBox126");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.layout52);
    obj.layout58:setLeft(10);
    obj.layout58:setTop(161);
    obj.layout58:setWidth(245);
    obj.layout58:setHeight(20);
    obj.layout58:setName("layout58");

    obj.horzLine28 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine28:setParent(obj.layout58);
    obj.horzLine28:setTop(18);
    obj.horzLine28:setWidth(130);
    obj.horzLine28:setStrokeSize(2);
    obj.horzLine28:setStrokeColor("black");
    obj.horzLine28:setName("horzLine28");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout58);
    obj.edit44:setField("shabilidades6_e");
    obj.edit44:setLeft(2);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(125);
    obj.edit44:setHeight(20);
    lfm_setPropAsString(obj.edit44, "fontStyle",  "bold");
    obj.edit44:setFontColor("black");
    obj.edit44:setFontSize(14);
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setTransparent(true);
    obj.edit44:setName("edit44");

    obj.imageCheckBox127 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox127:setParent(obj.layout58);
    obj.imageCheckBox127:setField("shabilidades6_1");
    obj.imageCheckBox127:setLeft(137);
    obj.imageCheckBox127:setTop(4);
    obj.imageCheckBox127:setWidth(15);
    obj.imageCheckBox127:setHeight(15);
    obj.imageCheckBox127:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox127:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox127:setName("imageCheckBox127");

    obj.imageCheckBox128 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox128:setParent(obj.layout58);
    obj.imageCheckBox128:setField("shabilidades6_2");
    obj.imageCheckBox128:setLeft(155);
    obj.imageCheckBox128:setTop(4);
    obj.imageCheckBox128:setWidth(15);
    obj.imageCheckBox128:setHeight(15);
    obj.imageCheckBox128:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox128:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox128:setName("imageCheckBox128");

    obj.imageCheckBox129 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox129:setParent(obj.layout58);
    obj.imageCheckBox129:setField("shabilidades6_3");
    obj.imageCheckBox129:setLeft(173);
    obj.imageCheckBox129:setTop(4);
    obj.imageCheckBox129:setWidth(15);
    obj.imageCheckBox129:setHeight(15);
    obj.imageCheckBox129:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox129:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox129:setName("imageCheckBox129");

    obj.imageCheckBox130 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox130:setParent(obj.layout58);
    obj.imageCheckBox130:setField("shabilidades6_4");
    obj.imageCheckBox130:setLeft(191);
    obj.imageCheckBox130:setTop(4);
    obj.imageCheckBox130:setWidth(15);
    obj.imageCheckBox130:setHeight(15);
    obj.imageCheckBox130:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox130:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox130:setName("imageCheckBox130");

    obj.imageCheckBox131 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox131:setParent(obj.layout58);
    obj.imageCheckBox131:setField("shabilidades6_5");
    obj.imageCheckBox131:setLeft(209);
    obj.imageCheckBox131:setTop(4);
    obj.imageCheckBox131:setWidth(15);
    obj.imageCheckBox131:setHeight(15);
    obj.imageCheckBox131:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox131:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox131:setName("imageCheckBox131");

    obj.imageCheckBox132 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox132:setParent(obj.layout58);
    obj.imageCheckBox132:setField("shabilidades6_6");
    obj.imageCheckBox132:setLeft(227);
    obj.imageCheckBox132:setTop(4);
    obj.imageCheckBox132:setWidth(15);
    obj.imageCheckBox132:setHeight(15);
    obj.imageCheckBox132:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox132:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox132:setName("imageCheckBox132");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout52);
    obj.layout59:setLeft(10);
    obj.layout59:setTop(191);
    obj.layout59:setWidth(245);
    obj.layout59:setHeight(20);
    obj.layout59:setName("layout59");

    obj.horzLine29 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine29:setParent(obj.layout59);
    obj.horzLine29:setTop(18);
    obj.horzLine29:setWidth(130);
    obj.horzLine29:setStrokeSize(2);
    obj.horzLine29:setStrokeColor("black");
    obj.horzLine29:setName("horzLine29");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout59);
    obj.edit45:setField("shabilidades7_e");
    obj.edit45:setLeft(2);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(125);
    obj.edit45:setHeight(20);
    lfm_setPropAsString(obj.edit45, "fontStyle",  "bold");
    obj.edit45:setFontColor("black");
    obj.edit45:setFontSize(14);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setTransparent(true);
    obj.edit45:setName("edit45");

    obj.imageCheckBox133 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox133:setParent(obj.layout59);
    obj.imageCheckBox133:setField("shabilidades7_1");
    obj.imageCheckBox133:setLeft(137);
    obj.imageCheckBox133:setTop(4);
    obj.imageCheckBox133:setWidth(15);
    obj.imageCheckBox133:setHeight(15);
    obj.imageCheckBox133:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox133:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox133:setName("imageCheckBox133");

    obj.imageCheckBox134 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox134:setParent(obj.layout59);
    obj.imageCheckBox134:setField("shabilidades7_2");
    obj.imageCheckBox134:setLeft(155);
    obj.imageCheckBox134:setTop(4);
    obj.imageCheckBox134:setWidth(15);
    obj.imageCheckBox134:setHeight(15);
    obj.imageCheckBox134:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox134:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox134:setName("imageCheckBox134");

    obj.imageCheckBox135 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox135:setParent(obj.layout59);
    obj.imageCheckBox135:setField("shabilidades7_3");
    obj.imageCheckBox135:setLeft(173);
    obj.imageCheckBox135:setTop(4);
    obj.imageCheckBox135:setWidth(15);
    obj.imageCheckBox135:setHeight(15);
    obj.imageCheckBox135:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox135:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox135:setName("imageCheckBox135");

    obj.imageCheckBox136 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox136:setParent(obj.layout59);
    obj.imageCheckBox136:setField("shabilidades7_4");
    obj.imageCheckBox136:setLeft(191);
    obj.imageCheckBox136:setTop(4);
    obj.imageCheckBox136:setWidth(15);
    obj.imageCheckBox136:setHeight(15);
    obj.imageCheckBox136:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox136:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox136:setName("imageCheckBox136");

    obj.imageCheckBox137 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox137:setParent(obj.layout59);
    obj.imageCheckBox137:setField("shabilidades7_5");
    obj.imageCheckBox137:setLeft(209);
    obj.imageCheckBox137:setTop(4);
    obj.imageCheckBox137:setWidth(15);
    obj.imageCheckBox137:setHeight(15);
    obj.imageCheckBox137:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox137:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox137:setName("imageCheckBox137");

    obj.imageCheckBox138 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox138:setParent(obj.layout59);
    obj.imageCheckBox138:setField("shabilidades7_6");
    obj.imageCheckBox138:setLeft(227);
    obj.imageCheckBox138:setTop(4);
    obj.imageCheckBox138:setWidth(15);
    obj.imageCheckBox138:setHeight(15);
    obj.imageCheckBox138:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox138:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox138:setName("imageCheckBox138");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout52);
    obj.layout60:setLeft(10);
    obj.layout60:setTop(221);
    obj.layout60:setWidth(245);
    obj.layout60:setHeight(20);
    obj.layout60:setName("layout60");

    obj.horzLine30 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine30:setParent(obj.layout60);
    obj.horzLine30:setTop(18);
    obj.horzLine30:setWidth(130);
    obj.horzLine30:setStrokeSize(2);
    obj.horzLine30:setStrokeColor("black");
    obj.horzLine30:setName("horzLine30");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout60);
    obj.edit46:setField("shabilidades8_e");
    obj.edit46:setLeft(2);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(125);
    obj.edit46:setHeight(20);
    lfm_setPropAsString(obj.edit46, "fontStyle",  "bold");
    obj.edit46:setFontColor("black");
    obj.edit46:setFontSize(14);
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setTransparent(true);
    obj.edit46:setName("edit46");

    obj.imageCheckBox139 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox139:setParent(obj.layout60);
    obj.imageCheckBox139:setField("shabilidades8_1");
    obj.imageCheckBox139:setLeft(137);
    obj.imageCheckBox139:setTop(4);
    obj.imageCheckBox139:setWidth(15);
    obj.imageCheckBox139:setHeight(15);
    obj.imageCheckBox139:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox139:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox139:setName("imageCheckBox139");

    obj.imageCheckBox140 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox140:setParent(obj.layout60);
    obj.imageCheckBox140:setField("shabilidades8_2");
    obj.imageCheckBox140:setLeft(155);
    obj.imageCheckBox140:setTop(4);
    obj.imageCheckBox140:setWidth(15);
    obj.imageCheckBox140:setHeight(15);
    obj.imageCheckBox140:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox140:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox140:setName("imageCheckBox140");

    obj.imageCheckBox141 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox141:setParent(obj.layout60);
    obj.imageCheckBox141:setField("shabilidades8_3");
    obj.imageCheckBox141:setLeft(173);
    obj.imageCheckBox141:setTop(4);
    obj.imageCheckBox141:setWidth(15);
    obj.imageCheckBox141:setHeight(15);
    obj.imageCheckBox141:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox141:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox141:setName("imageCheckBox141");

    obj.imageCheckBox142 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox142:setParent(obj.layout60);
    obj.imageCheckBox142:setField("shabilidades8_4");
    obj.imageCheckBox142:setLeft(191);
    obj.imageCheckBox142:setTop(4);
    obj.imageCheckBox142:setWidth(15);
    obj.imageCheckBox142:setHeight(15);
    obj.imageCheckBox142:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox142:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox142:setName("imageCheckBox142");

    obj.imageCheckBox143 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox143:setParent(obj.layout60);
    obj.imageCheckBox143:setField("shabilidades8_5");
    obj.imageCheckBox143:setLeft(209);
    obj.imageCheckBox143:setTop(4);
    obj.imageCheckBox143:setWidth(15);
    obj.imageCheckBox143:setHeight(15);
    obj.imageCheckBox143:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox143:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox143:setName("imageCheckBox143");

    obj.imageCheckBox144 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox144:setParent(obj.layout60);
    obj.imageCheckBox144:setField("shabilidades8_6");
    obj.imageCheckBox144:setLeft(227);
    obj.imageCheckBox144:setTop(4);
    obj.imageCheckBox144:setWidth(15);
    obj.imageCheckBox144:setHeight(15);
    obj.imageCheckBox144:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox144:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox144:setName("imageCheckBox144");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.layout51);
    obj.layout61:setLeft(295);
    obj.layout61:setTop(36);
    obj.layout61:setWidth(260);
    obj.layout61:setHeight(250);
    obj.layout61:setName("layout61");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout61);
    obj.layout62:setLeft(10);
    obj.layout62:setTop(11);
    obj.layout62:setWidth(245);
    obj.layout62:setHeight(20);
    obj.layout62:setName("layout62");

    obj.horzLine31 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine31:setParent(obj.layout62);
    obj.horzLine31:setTop(18);
    obj.horzLine31:setWidth(130);
    obj.horzLine31:setStrokeSize(2);
    obj.horzLine31:setStrokeColor("black");
    obj.horzLine31:setName("horzLine31");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout62);
    obj.edit47:setField("shabilidades1_f");
    obj.edit47:setLeft(2);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(125);
    obj.edit47:setHeight(20);
    lfm_setPropAsString(obj.edit47, "fontStyle",  "bold");
    obj.edit47:setFontColor("black");
    obj.edit47:setFontSize(14);
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setTransparent(true);
    obj.edit47:setName("edit47");

    obj.imageCheckBox145 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox145:setParent(obj.layout62);
    obj.imageCheckBox145:setField("shabilidades1_h1");
    obj.imageCheckBox145:setLeft(137);
    obj.imageCheckBox145:setTop(4);
    obj.imageCheckBox145:setWidth(15);
    obj.imageCheckBox145:setHeight(15);
    obj.imageCheckBox145:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox145:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox145:setName("imageCheckBox145");

    obj.imageCheckBox146 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox146:setParent(obj.layout62);
    obj.imageCheckBox146:setField("shabilidades1_h2");
    obj.imageCheckBox146:setLeft(155);
    obj.imageCheckBox146:setTop(4);
    obj.imageCheckBox146:setWidth(15);
    obj.imageCheckBox146:setHeight(15);
    obj.imageCheckBox146:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox146:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox146:setName("imageCheckBox146");

    obj.imageCheckBox147 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox147:setParent(obj.layout62);
    obj.imageCheckBox147:setField("shabilidades1_h3");
    obj.imageCheckBox147:setLeft(173);
    obj.imageCheckBox147:setTop(4);
    obj.imageCheckBox147:setWidth(15);
    obj.imageCheckBox147:setHeight(15);
    obj.imageCheckBox147:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox147:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox147:setName("imageCheckBox147");

    obj.imageCheckBox148 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox148:setParent(obj.layout62);
    obj.imageCheckBox148:setField("shabilidades1_h4");
    obj.imageCheckBox148:setLeft(191);
    obj.imageCheckBox148:setTop(4);
    obj.imageCheckBox148:setWidth(15);
    obj.imageCheckBox148:setHeight(15);
    obj.imageCheckBox148:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox148:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox148:setName("imageCheckBox148");

    obj.imageCheckBox149 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox149:setParent(obj.layout62);
    obj.imageCheckBox149:setField("shabilidades1_h5");
    obj.imageCheckBox149:setLeft(209);
    obj.imageCheckBox149:setTop(4);
    obj.imageCheckBox149:setWidth(15);
    obj.imageCheckBox149:setHeight(15);
    obj.imageCheckBox149:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox149:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox149:setName("imageCheckBox149");

    obj.imageCheckBox150 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox150:setParent(obj.layout62);
    obj.imageCheckBox150:setField("shabilidades1_h6");
    obj.imageCheckBox150:setLeft(227);
    obj.imageCheckBox150:setTop(4);
    obj.imageCheckBox150:setWidth(15);
    obj.imageCheckBox150:setHeight(15);
    obj.imageCheckBox150:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox150:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox150:setName("imageCheckBox150");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.layout61);
    obj.layout63:setLeft(10);
    obj.layout63:setTop(41);
    obj.layout63:setWidth(245);
    obj.layout63:setHeight(20);
    obj.layout63:setName("layout63");

    obj.horzLine32 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine32:setParent(obj.layout63);
    obj.horzLine32:setTop(18);
    obj.horzLine32:setWidth(130);
    obj.horzLine32:setStrokeSize(2);
    obj.horzLine32:setStrokeColor("black");
    obj.horzLine32:setName("horzLine32");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout63);
    obj.edit48:setField("shabilidades2_f");
    obj.edit48:setLeft(2);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(125);
    obj.edit48:setHeight(20);
    lfm_setPropAsString(obj.edit48, "fontStyle",  "bold");
    obj.edit48:setFontColor("black");
    obj.edit48:setFontSize(14);
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setTransparent(true);
    obj.edit48:setName("edit48");

    obj.imageCheckBox151 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox151:setParent(obj.layout63);
    obj.imageCheckBox151:setField("shabilidades2_h1");
    obj.imageCheckBox151:setLeft(137);
    obj.imageCheckBox151:setTop(4);
    obj.imageCheckBox151:setWidth(15);
    obj.imageCheckBox151:setHeight(15);
    obj.imageCheckBox151:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox151:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox151:setName("imageCheckBox151");

    obj.imageCheckBox152 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox152:setParent(obj.layout63);
    obj.imageCheckBox152:setField("shabilidades2_h2");
    obj.imageCheckBox152:setLeft(155);
    obj.imageCheckBox152:setTop(4);
    obj.imageCheckBox152:setWidth(15);
    obj.imageCheckBox152:setHeight(15);
    obj.imageCheckBox152:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox152:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox152:setName("imageCheckBox152");

    obj.imageCheckBox153 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox153:setParent(obj.layout63);
    obj.imageCheckBox153:setField("shabilidades2_h3");
    obj.imageCheckBox153:setLeft(173);
    obj.imageCheckBox153:setTop(4);
    obj.imageCheckBox153:setWidth(15);
    obj.imageCheckBox153:setHeight(15);
    obj.imageCheckBox153:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox153:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox153:setName("imageCheckBox153");

    obj.imageCheckBox154 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox154:setParent(obj.layout63);
    obj.imageCheckBox154:setField("shabilidades2_h4");
    obj.imageCheckBox154:setLeft(191);
    obj.imageCheckBox154:setTop(4);
    obj.imageCheckBox154:setWidth(15);
    obj.imageCheckBox154:setHeight(15);
    obj.imageCheckBox154:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox154:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox154:setName("imageCheckBox154");

    obj.imageCheckBox155 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox155:setParent(obj.layout63);
    obj.imageCheckBox155:setField("shabilidades2_h5");
    obj.imageCheckBox155:setLeft(209);
    obj.imageCheckBox155:setTop(4);
    obj.imageCheckBox155:setWidth(15);
    obj.imageCheckBox155:setHeight(15);
    obj.imageCheckBox155:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox155:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox155:setName("imageCheckBox155");

    obj.imageCheckBox156 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox156:setParent(obj.layout63);
    obj.imageCheckBox156:setField("shabilidades2_h6");
    obj.imageCheckBox156:setLeft(227);
    obj.imageCheckBox156:setTop(4);
    obj.imageCheckBox156:setWidth(15);
    obj.imageCheckBox156:setHeight(15);
    obj.imageCheckBox156:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox156:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox156:setName("imageCheckBox156");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.layout61);
    obj.layout64:setLeft(10);
    obj.layout64:setTop(71);
    obj.layout64:setWidth(245);
    obj.layout64:setHeight(20);
    obj.layout64:setName("layout64");

    obj.horzLine33 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine33:setParent(obj.layout64);
    obj.horzLine33:setTop(18);
    obj.horzLine33:setWidth(130);
    obj.horzLine33:setStrokeSize(2);
    obj.horzLine33:setStrokeColor("black");
    obj.horzLine33:setName("horzLine33");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout64);
    obj.edit49:setField("shabilidades3_f");
    obj.edit49:setLeft(2);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(125);
    obj.edit49:setHeight(20);
    lfm_setPropAsString(obj.edit49, "fontStyle",  "bold");
    obj.edit49:setFontColor("black");
    obj.edit49:setFontSize(14);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setTransparent(true);
    obj.edit49:setName("edit49");

    obj.imageCheckBox157 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox157:setParent(obj.layout64);
    obj.imageCheckBox157:setField("shabilidades3_h1");
    obj.imageCheckBox157:setLeft(137);
    obj.imageCheckBox157:setTop(4);
    obj.imageCheckBox157:setWidth(15);
    obj.imageCheckBox157:setHeight(15);
    obj.imageCheckBox157:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox157:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox157:setName("imageCheckBox157");

    obj.imageCheckBox158 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox158:setParent(obj.layout64);
    obj.imageCheckBox158:setField("shabilidades3_h2");
    obj.imageCheckBox158:setLeft(155);
    obj.imageCheckBox158:setTop(4);
    obj.imageCheckBox158:setWidth(15);
    obj.imageCheckBox158:setHeight(15);
    obj.imageCheckBox158:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox158:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox158:setName("imageCheckBox158");

    obj.imageCheckBox159 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox159:setParent(obj.layout64);
    obj.imageCheckBox159:setField("shabilidades3_h3");
    obj.imageCheckBox159:setLeft(173);
    obj.imageCheckBox159:setTop(4);
    obj.imageCheckBox159:setWidth(15);
    obj.imageCheckBox159:setHeight(15);
    obj.imageCheckBox159:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox159:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox159:setName("imageCheckBox159");

    obj.imageCheckBox160 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox160:setParent(obj.layout64);
    obj.imageCheckBox160:setField("shabilidades3_h4");
    obj.imageCheckBox160:setLeft(191);
    obj.imageCheckBox160:setTop(4);
    obj.imageCheckBox160:setWidth(15);
    obj.imageCheckBox160:setHeight(15);
    obj.imageCheckBox160:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox160:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox160:setName("imageCheckBox160");

    obj.imageCheckBox161 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox161:setParent(obj.layout64);
    obj.imageCheckBox161:setField("shabilidades3_h5");
    obj.imageCheckBox161:setLeft(209);
    obj.imageCheckBox161:setTop(4);
    obj.imageCheckBox161:setWidth(15);
    obj.imageCheckBox161:setHeight(15);
    obj.imageCheckBox161:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox161:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox161:setName("imageCheckBox161");

    obj.imageCheckBox162 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox162:setParent(obj.layout64);
    obj.imageCheckBox162:setField("shabilidades3_h6");
    obj.imageCheckBox162:setLeft(227);
    obj.imageCheckBox162:setTop(4);
    obj.imageCheckBox162:setWidth(15);
    obj.imageCheckBox162:setHeight(15);
    obj.imageCheckBox162:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox162:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox162:setName("imageCheckBox162");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.layout61);
    obj.layout65:setLeft(10);
    obj.layout65:setTop(101);
    obj.layout65:setWidth(245);
    obj.layout65:setHeight(20);
    obj.layout65:setName("layout65");

    obj.horzLine34 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine34:setParent(obj.layout65);
    obj.horzLine34:setTop(18);
    obj.horzLine34:setWidth(130);
    obj.horzLine34:setStrokeSize(2);
    obj.horzLine34:setStrokeColor("black");
    obj.horzLine34:setName("horzLine34");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout65);
    obj.edit50:setField("shabilidades4_f");
    obj.edit50:setLeft(2);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(125);
    obj.edit50:setHeight(20);
    lfm_setPropAsString(obj.edit50, "fontStyle",  "bold");
    obj.edit50:setFontColor("black");
    obj.edit50:setFontSize(14);
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setTransparent(true);
    obj.edit50:setName("edit50");

    obj.imageCheckBox163 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox163:setParent(obj.layout65);
    obj.imageCheckBox163:setField("shabilidades4_h1");
    obj.imageCheckBox163:setLeft(137);
    obj.imageCheckBox163:setTop(4);
    obj.imageCheckBox163:setWidth(15);
    obj.imageCheckBox163:setHeight(15);
    obj.imageCheckBox163:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox163:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox163:setName("imageCheckBox163");

    obj.imageCheckBox164 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox164:setParent(obj.layout65);
    obj.imageCheckBox164:setField("shabilidades4_h2");
    obj.imageCheckBox164:setLeft(155);
    obj.imageCheckBox164:setTop(4);
    obj.imageCheckBox164:setWidth(15);
    obj.imageCheckBox164:setHeight(15);
    obj.imageCheckBox164:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox164:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox164:setName("imageCheckBox164");

    obj.imageCheckBox165 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox165:setParent(obj.layout65);
    obj.imageCheckBox165:setField("shabilidades4_h3");
    obj.imageCheckBox165:setLeft(173);
    obj.imageCheckBox165:setTop(4);
    obj.imageCheckBox165:setWidth(15);
    obj.imageCheckBox165:setHeight(15);
    obj.imageCheckBox165:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox165:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox165:setName("imageCheckBox165");

    obj.imageCheckBox166 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox166:setParent(obj.layout65);
    obj.imageCheckBox166:setField("shabilidades4_h4");
    obj.imageCheckBox166:setLeft(191);
    obj.imageCheckBox166:setTop(4);
    obj.imageCheckBox166:setWidth(15);
    obj.imageCheckBox166:setHeight(15);
    obj.imageCheckBox166:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox166:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox166:setName("imageCheckBox166");

    obj.imageCheckBox167 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox167:setParent(obj.layout65);
    obj.imageCheckBox167:setField("shabilidades4_h5");
    obj.imageCheckBox167:setLeft(209);
    obj.imageCheckBox167:setTop(4);
    obj.imageCheckBox167:setWidth(15);
    obj.imageCheckBox167:setHeight(15);
    obj.imageCheckBox167:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox167:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox167:setName("imageCheckBox167");

    obj.imageCheckBox168 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox168:setParent(obj.layout65);
    obj.imageCheckBox168:setField("shabilidades4_h6");
    obj.imageCheckBox168:setLeft(227);
    obj.imageCheckBox168:setTop(4);
    obj.imageCheckBox168:setWidth(15);
    obj.imageCheckBox168:setHeight(15);
    obj.imageCheckBox168:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox168:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox168:setName("imageCheckBox168");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.layout61);
    obj.layout66:setLeft(10);
    obj.layout66:setTop(131);
    obj.layout66:setWidth(245);
    obj.layout66:setHeight(20);
    obj.layout66:setName("layout66");

    obj.horzLine35 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine35:setParent(obj.layout66);
    obj.horzLine35:setTop(18);
    obj.horzLine35:setWidth(130);
    obj.horzLine35:setStrokeSize(2);
    obj.horzLine35:setStrokeColor("black");
    obj.horzLine35:setName("horzLine35");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout66);
    obj.edit51:setField("shabilidades5_f");
    obj.edit51:setLeft(2);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(125);
    obj.edit51:setHeight(20);
    lfm_setPropAsString(obj.edit51, "fontStyle",  "bold");
    obj.edit51:setFontColor("black");
    obj.edit51:setFontSize(14);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setTransparent(true);
    obj.edit51:setName("edit51");

    obj.imageCheckBox169 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox169:setParent(obj.layout66);
    obj.imageCheckBox169:setField("shabilidades5_h1");
    obj.imageCheckBox169:setLeft(137);
    obj.imageCheckBox169:setTop(4);
    obj.imageCheckBox169:setWidth(15);
    obj.imageCheckBox169:setHeight(15);
    obj.imageCheckBox169:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox169:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox169:setName("imageCheckBox169");

    obj.imageCheckBox170 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox170:setParent(obj.layout66);
    obj.imageCheckBox170:setField("shabilidades5_h2");
    obj.imageCheckBox170:setLeft(155);
    obj.imageCheckBox170:setTop(4);
    obj.imageCheckBox170:setWidth(15);
    obj.imageCheckBox170:setHeight(15);
    obj.imageCheckBox170:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox170:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox170:setName("imageCheckBox170");

    obj.imageCheckBox171 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox171:setParent(obj.layout66);
    obj.imageCheckBox171:setField("shabilidades5_h3");
    obj.imageCheckBox171:setLeft(173);
    obj.imageCheckBox171:setTop(4);
    obj.imageCheckBox171:setWidth(15);
    obj.imageCheckBox171:setHeight(15);
    obj.imageCheckBox171:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox171:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox171:setName("imageCheckBox171");

    obj.imageCheckBox172 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox172:setParent(obj.layout66);
    obj.imageCheckBox172:setField("shabilidades5_h4");
    obj.imageCheckBox172:setLeft(191);
    obj.imageCheckBox172:setTop(4);
    obj.imageCheckBox172:setWidth(15);
    obj.imageCheckBox172:setHeight(15);
    obj.imageCheckBox172:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox172:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox172:setName("imageCheckBox172");

    obj.imageCheckBox173 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox173:setParent(obj.layout66);
    obj.imageCheckBox173:setField("shabilidades5_h5");
    obj.imageCheckBox173:setLeft(209);
    obj.imageCheckBox173:setTop(4);
    obj.imageCheckBox173:setWidth(15);
    obj.imageCheckBox173:setHeight(15);
    obj.imageCheckBox173:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox173:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox173:setName("imageCheckBox173");

    obj.imageCheckBox174 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox174:setParent(obj.layout66);
    obj.imageCheckBox174:setField("shabilidades5_h6");
    obj.imageCheckBox174:setLeft(227);
    obj.imageCheckBox174:setTop(4);
    obj.imageCheckBox174:setWidth(15);
    obj.imageCheckBox174:setHeight(15);
    obj.imageCheckBox174:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox174:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox174:setName("imageCheckBox174");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.layout61);
    obj.layout67:setLeft(10);
    obj.layout67:setTop(161);
    obj.layout67:setWidth(245);
    obj.layout67:setHeight(20);
    obj.layout67:setName("layout67");

    obj.horzLine36 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine36:setParent(obj.layout67);
    obj.horzLine36:setTop(18);
    obj.horzLine36:setWidth(130);
    obj.horzLine36:setStrokeSize(2);
    obj.horzLine36:setStrokeColor("black");
    obj.horzLine36:setName("horzLine36");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout67);
    obj.edit52:setField("shabilidades6_f");
    obj.edit52:setLeft(2);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(125);
    obj.edit52:setHeight(20);
    lfm_setPropAsString(obj.edit52, "fontStyle",  "bold");
    obj.edit52:setFontColor("black");
    obj.edit52:setFontSize(14);
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setTransparent(true);
    obj.edit52:setName("edit52");

    obj.imageCheckBox175 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox175:setParent(obj.layout67);
    obj.imageCheckBox175:setField("shabilidades6_h1");
    obj.imageCheckBox175:setLeft(137);
    obj.imageCheckBox175:setTop(4);
    obj.imageCheckBox175:setWidth(15);
    obj.imageCheckBox175:setHeight(15);
    obj.imageCheckBox175:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox175:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox175:setName("imageCheckBox175");

    obj.imageCheckBox176 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox176:setParent(obj.layout67);
    obj.imageCheckBox176:setField("shabilidades6_h2");
    obj.imageCheckBox176:setLeft(155);
    obj.imageCheckBox176:setTop(4);
    obj.imageCheckBox176:setWidth(15);
    obj.imageCheckBox176:setHeight(15);
    obj.imageCheckBox176:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox176:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox176:setName("imageCheckBox176");

    obj.imageCheckBox177 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox177:setParent(obj.layout67);
    obj.imageCheckBox177:setField("shabilidades6_h3");
    obj.imageCheckBox177:setLeft(173);
    obj.imageCheckBox177:setTop(4);
    obj.imageCheckBox177:setWidth(15);
    obj.imageCheckBox177:setHeight(15);
    obj.imageCheckBox177:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox177:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox177:setName("imageCheckBox177");

    obj.imageCheckBox178 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox178:setParent(obj.layout67);
    obj.imageCheckBox178:setField("shabilidades6_h4");
    obj.imageCheckBox178:setLeft(191);
    obj.imageCheckBox178:setTop(4);
    obj.imageCheckBox178:setWidth(15);
    obj.imageCheckBox178:setHeight(15);
    obj.imageCheckBox178:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox178:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox178:setName("imageCheckBox178");

    obj.imageCheckBox179 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox179:setParent(obj.layout67);
    obj.imageCheckBox179:setField("shabilidades6_h5");
    obj.imageCheckBox179:setLeft(209);
    obj.imageCheckBox179:setTop(4);
    obj.imageCheckBox179:setWidth(15);
    obj.imageCheckBox179:setHeight(15);
    obj.imageCheckBox179:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox179:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox179:setName("imageCheckBox179");

    obj.imageCheckBox180 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox180:setParent(obj.layout67);
    obj.imageCheckBox180:setField("shabilidades6_h6");
    obj.imageCheckBox180:setLeft(227);
    obj.imageCheckBox180:setTop(4);
    obj.imageCheckBox180:setWidth(15);
    obj.imageCheckBox180:setHeight(15);
    obj.imageCheckBox180:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox180:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox180:setName("imageCheckBox180");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.layout61);
    obj.layout68:setLeft(10);
    obj.layout68:setTop(191);
    obj.layout68:setWidth(245);
    obj.layout68:setHeight(20);
    obj.layout68:setName("layout68");

    obj.horzLine37 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine37:setParent(obj.layout68);
    obj.horzLine37:setTop(18);
    obj.horzLine37:setWidth(130);
    obj.horzLine37:setStrokeSize(2);
    obj.horzLine37:setStrokeColor("black");
    obj.horzLine37:setName("horzLine37");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout68);
    obj.edit53:setField("shabilidades7_f");
    obj.edit53:setLeft(2);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(125);
    obj.edit53:setHeight(20);
    lfm_setPropAsString(obj.edit53, "fontStyle",  "bold");
    obj.edit53:setFontColor("black");
    obj.edit53:setFontSize(14);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setTransparent(true);
    obj.edit53:setName("edit53");

    obj.imageCheckBox181 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox181:setParent(obj.layout68);
    obj.imageCheckBox181:setField("shabilidades7_h1");
    obj.imageCheckBox181:setLeft(137);
    obj.imageCheckBox181:setTop(4);
    obj.imageCheckBox181:setWidth(15);
    obj.imageCheckBox181:setHeight(15);
    obj.imageCheckBox181:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox181:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox181:setName("imageCheckBox181");

    obj.imageCheckBox182 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox182:setParent(obj.layout68);
    obj.imageCheckBox182:setField("shabilidades7_h2");
    obj.imageCheckBox182:setLeft(155);
    obj.imageCheckBox182:setTop(4);
    obj.imageCheckBox182:setWidth(15);
    obj.imageCheckBox182:setHeight(15);
    obj.imageCheckBox182:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox182:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox182:setName("imageCheckBox182");

    obj.imageCheckBox183 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox183:setParent(obj.layout68);
    obj.imageCheckBox183:setField("shabilidades7_h3");
    obj.imageCheckBox183:setLeft(173);
    obj.imageCheckBox183:setTop(4);
    obj.imageCheckBox183:setWidth(15);
    obj.imageCheckBox183:setHeight(15);
    obj.imageCheckBox183:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox183:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox183:setName("imageCheckBox183");

    obj.imageCheckBox184 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox184:setParent(obj.layout68);
    obj.imageCheckBox184:setField("shabilidades7_h4");
    obj.imageCheckBox184:setLeft(191);
    obj.imageCheckBox184:setTop(4);
    obj.imageCheckBox184:setWidth(15);
    obj.imageCheckBox184:setHeight(15);
    obj.imageCheckBox184:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox184:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox184:setName("imageCheckBox184");

    obj.imageCheckBox185 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox185:setParent(obj.layout68);
    obj.imageCheckBox185:setField("shabilidades7_h5");
    obj.imageCheckBox185:setLeft(209);
    obj.imageCheckBox185:setTop(4);
    obj.imageCheckBox185:setWidth(15);
    obj.imageCheckBox185:setHeight(15);
    obj.imageCheckBox185:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox185:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox185:setName("imageCheckBox185");

    obj.imageCheckBox186 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox186:setParent(obj.layout68);
    obj.imageCheckBox186:setField("shabilidades7_h6");
    obj.imageCheckBox186:setLeft(227);
    obj.imageCheckBox186:setTop(4);
    obj.imageCheckBox186:setWidth(15);
    obj.imageCheckBox186:setHeight(15);
    obj.imageCheckBox186:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox186:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox186:setName("imageCheckBox186");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layout61);
    obj.layout69:setLeft(10);
    obj.layout69:setTop(221);
    obj.layout69:setWidth(245);
    obj.layout69:setHeight(20);
    obj.layout69:setName("layout69");

    obj.horzLine38 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine38:setParent(obj.layout69);
    obj.horzLine38:setTop(18);
    obj.horzLine38:setWidth(130);
    obj.horzLine38:setStrokeSize(2);
    obj.horzLine38:setStrokeColor("black");
    obj.horzLine38:setName("horzLine38");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout69);
    obj.edit54:setField("shabilidades8_f");
    obj.edit54:setLeft(2);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(125);
    obj.edit54:setHeight(20);
    lfm_setPropAsString(obj.edit54, "fontStyle",  "bold");
    obj.edit54:setFontColor("black");
    obj.edit54:setFontSize(14);
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setTransparent(true);
    obj.edit54:setName("edit54");

    obj.imageCheckBox187 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox187:setParent(obj.layout69);
    obj.imageCheckBox187:setField("shabilidades8_h1");
    obj.imageCheckBox187:setLeft(137);
    obj.imageCheckBox187:setTop(4);
    obj.imageCheckBox187:setWidth(15);
    obj.imageCheckBox187:setHeight(15);
    obj.imageCheckBox187:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox187:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox187:setName("imageCheckBox187");

    obj.imageCheckBox188 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox188:setParent(obj.layout69);
    obj.imageCheckBox188:setField("shabilidades8_h2");
    obj.imageCheckBox188:setLeft(155);
    obj.imageCheckBox188:setTop(4);
    obj.imageCheckBox188:setWidth(15);
    obj.imageCheckBox188:setHeight(15);
    obj.imageCheckBox188:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox188:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox188:setName("imageCheckBox188");

    obj.imageCheckBox189 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox189:setParent(obj.layout69);
    obj.imageCheckBox189:setField("shabilidades8_h3");
    obj.imageCheckBox189:setLeft(173);
    obj.imageCheckBox189:setTop(4);
    obj.imageCheckBox189:setWidth(15);
    obj.imageCheckBox189:setHeight(15);
    obj.imageCheckBox189:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox189:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox189:setName("imageCheckBox189");

    obj.imageCheckBox190 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox190:setParent(obj.layout69);
    obj.imageCheckBox190:setField("shabilidades8_h4");
    obj.imageCheckBox190:setLeft(191);
    obj.imageCheckBox190:setTop(4);
    obj.imageCheckBox190:setWidth(15);
    obj.imageCheckBox190:setHeight(15);
    obj.imageCheckBox190:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox190:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox190:setName("imageCheckBox190");

    obj.imageCheckBox191 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox191:setParent(obj.layout69);
    obj.imageCheckBox191:setField("shabilidades8_h5");
    obj.imageCheckBox191:setLeft(209);
    obj.imageCheckBox191:setTop(4);
    obj.imageCheckBox191:setWidth(15);
    obj.imageCheckBox191:setHeight(15);
    obj.imageCheckBox191:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox191:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox191:setName("imageCheckBox191");

    obj.imageCheckBox192 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox192:setParent(obj.layout69);
    obj.imageCheckBox192:setField("shabilidades8_h6");
    obj.imageCheckBox192:setLeft(227);
    obj.imageCheckBox192:setTop(4);
    obj.imageCheckBox192:setWidth(15);
    obj.imageCheckBox192:setHeight(15);
    obj.imageCheckBox192:setImageChecked("/OsMundosDosMortos/img/bboll2.png");
    obj.imageCheckBox192:setImageUnchecked("/OsMundosDosMortos/img/bboll1.png");
    obj.imageCheckBox192:setName("imageCheckBox192");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.layout51);
    obj.layout70:setLeft(560);
    obj.layout70:setTop(36);
    obj.layout70:setWidth(260);
    obj.layout70:setHeight(250);
    obj.layout70:setName("layout70");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layout70);
    obj.layout71:setLeft(10);
    obj.layout71:setTop(11);
    obj.layout71:setWidth(245);
    obj.layout71:setHeight(20);
    obj.layout71:setName("layout71");

    obj.horzLine39 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine39:setParent(obj.layout71);
    obj.horzLine39:setTop(18);
    obj.horzLine39:setWidth(238);
    obj.horzLine39:setStrokeSize(2);
    obj.horzLine39:setStrokeColor("black");
    obj.horzLine39:setName("horzLine39");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout71);
    obj.label45:setWidth(80);
    obj.label45:setHeight(20);
    obj.label45:setText("Nível 1 ->");
    lfm_setPropAsString(obj.label45, "fontStyle",  "bold");
    obj.label45:setFontSize(15);
    obj.label45:setFontColor("black");
    obj.label45:setName("label45");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout71);
    obj.edit55:setField("snivel1");
    obj.edit55:setLeft(70);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(168);
    obj.edit55:setHeight(20);
    lfm_setPropAsString(obj.edit55, "fontStyle",  "bold");
    obj.edit55:setFontColor("black");
    obj.edit55:setFontSize(15);
    obj.edit55:setTransparent(true);
    obj.edit55:setName("edit55");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layout70);
    obj.layout72:setLeft(10);
    obj.layout72:setTop(53);
    obj.layout72:setWidth(245);
    obj.layout72:setHeight(20);
    obj.layout72:setName("layout72");

    obj.horzLine40 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine40:setParent(obj.layout72);
    obj.horzLine40:setTop(18);
    obj.horzLine40:setWidth(238);
    obj.horzLine40:setStrokeSize(2);
    obj.horzLine40:setStrokeColor("black");
    obj.horzLine40:setName("horzLine40");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout72);
    obj.label46:setWidth(80);
    obj.label46:setHeight(20);
    obj.label46:setText("Nível 2 ->");
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setFontSize(15);
    obj.label46:setFontColor("black");
    obj.label46:setName("label46");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout72);
    obj.edit56:setField("snivel2");
    obj.edit56:setLeft(70);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(168);
    obj.edit56:setHeight(20);
    lfm_setPropAsString(obj.edit56, "fontStyle",  "bold");
    obj.edit56:setFontColor("black");
    obj.edit56:setFontSize(15);
    obj.edit56:setTransparent(true);
    obj.edit56:setName("edit56");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layout70);
    obj.layout73:setLeft(10);
    obj.layout73:setTop(95);
    obj.layout73:setWidth(245);
    obj.layout73:setHeight(20);
    obj.layout73:setName("layout73");

    obj.horzLine41 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine41:setParent(obj.layout73);
    obj.horzLine41:setTop(18);
    obj.horzLine41:setWidth(238);
    obj.horzLine41:setStrokeSize(2);
    obj.horzLine41:setStrokeColor("black");
    obj.horzLine41:setName("horzLine41");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout73);
    obj.label47:setWidth(80);
    obj.label47:setHeight(20);
    obj.label47:setText("Nível 3 ->");
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontSize(15);
    obj.label47:setFontColor("black");
    obj.label47:setName("label47");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout73);
    obj.edit57:setField("snivel3");
    obj.edit57:setLeft(70);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(168);
    obj.edit57:setHeight(20);
    lfm_setPropAsString(obj.edit57, "fontStyle",  "bold");
    obj.edit57:setFontColor("black");
    obj.edit57:setFontSize(15);
    obj.edit57:setTransparent(true);
    obj.edit57:setName("edit57");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.layout70);
    obj.layout74:setLeft(10);
    obj.layout74:setTop(137);
    obj.layout74:setWidth(245);
    obj.layout74:setHeight(20);
    obj.layout74:setName("layout74");

    obj.horzLine42 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine42:setParent(obj.layout74);
    obj.horzLine42:setTop(18);
    obj.horzLine42:setWidth(238);
    obj.horzLine42:setStrokeSize(2);
    obj.horzLine42:setStrokeColor("black");
    obj.horzLine42:setName("horzLine42");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout74);
    obj.label48:setWidth(80);
    obj.label48:setHeight(20);
    obj.label48:setText("Nível 4 ->");
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontSize(15);
    obj.label48:setFontColor("black");
    obj.label48:setName("label48");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout74);
    obj.edit58:setField("snivel4");
    obj.edit58:setLeft(70);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(168);
    obj.edit58:setHeight(20);
    lfm_setPropAsString(obj.edit58, "fontStyle",  "bold");
    obj.edit58:setFontColor("black");
    obj.edit58:setFontSize(15);
    obj.edit58:setTransparent(true);
    obj.edit58:setName("edit58");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layout70);
    obj.layout75:setLeft(10);
    obj.layout75:setTop(179);
    obj.layout75:setWidth(245);
    obj.layout75:setHeight(20);
    obj.layout75:setName("layout75");

    obj.horzLine43 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine43:setParent(obj.layout75);
    obj.horzLine43:setTop(18);
    obj.horzLine43:setWidth(238);
    obj.horzLine43:setStrokeSize(2);
    obj.horzLine43:setStrokeColor("black");
    obj.horzLine43:setName("horzLine43");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout75);
    obj.label49:setWidth(80);
    obj.label49:setHeight(20);
    obj.label49:setText("Nível 5 ->");
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontSize(15);
    obj.label49:setFontColor("black");
    obj.label49:setName("label49");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout75);
    obj.edit59:setField("snivel5");
    obj.edit59:setLeft(70);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(168);
    obj.edit59:setHeight(20);
    lfm_setPropAsString(obj.edit59, "fontStyle",  "bold");
    obj.edit59:setFontColor("black");
    obj.edit59:setFontSize(15);
    obj.edit59:setTransparent(true);
    obj.edit59:setName("edit59");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.layout70);
    obj.layout76:setLeft(10);
    obj.layout76:setTop(221);
    obj.layout76:setWidth(245);
    obj.layout76:setHeight(20);
    obj.layout76:setName("layout76");

    obj.horzLine44 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine44:setParent(obj.layout76);
    obj.horzLine44:setTop(18);
    obj.horzLine44:setWidth(238);
    obj.horzLine44:setStrokeSize(2);
    obj.horzLine44:setStrokeColor("black");
    obj.horzLine44:setName("horzLine44");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout76);
    obj.label50:setWidth(80);
    obj.label50:setHeight(20);
    obj.label50:setText("Nível 6 ->");
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setFontSize(15);
    obj.label50:setFontColor("black");
    obj.label50:setName("label50");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout76);
    obj.edit60:setField("snivel6");
    obj.edit60:setLeft(70);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(168);
    obj.edit60:setHeight(20);
    lfm_setPropAsString(obj.edit60, "fontStyle",  "bold");
    obj.edit60:setFontColor("black");
    obj.edit60:setFontSize(15);
    obj.edit60:setTransparent(true);
    obj.edit60:setName("edit60");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.scrollBox3);
    obj.layout77:setLeft(0);
    obj.layout77:setTop(380);
    obj.layout77:setWidth(880);
    obj.layout77:setHeight(30);
    obj.layout77:setName("layout77");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout77);
    obj.rectangle26:setAlign("client");
    obj.rectangle26:setColor("gray");
    obj.rectangle26:setName("rectangle26");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout77);
    obj.label51:setLeft(8);
    obj.label51:setTop(5);
    obj.label51:setWidth(138);
    obj.label51:setHeight(20);
    obj.label51:setText("Informações");
    obj.label51:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setFontColor("black");
    obj.label51:setName("label51");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.scrollBox3);
    obj.layout78:setLeft(10);
    obj.layout78:setTop(425);
    obj.layout78:setWidth(860);
    obj.layout78:setHeight(165);
    obj.layout78:setName("layout78");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout78);
    obj.rectangle27:setLeft(5);
    obj.rectangle27:setTop(0);
    obj.rectangle27:setColor("Gainsboro");
    obj.rectangle27:setWidth(84);
    obj.rectangle27:setXradius(2);
    obj.rectangle27:setYradius(2);
    obj.rectangle27:setName("rectangle27");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout78);
    obj.label52:setLeft(7);
    obj.label52:setWidth(90);
    obj.label52:setHeight(20);
    obj.label52:setText("Anotações");
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setFontSize(16);
    obj.label52:setFontColor("black");
    obj.label52:setName("label52");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout78);
    obj.textEditor4:setTop(20);
    obj.textEditor4:setWidth(860);
    obj.textEditor4:setHeight(165);
    obj.textEditor4:setField("anotacoes");
    lfm_setPropAsString(obj.textEditor4, "fontStyle",  "bold");
    obj.textEditor4:setName("textEditor4");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.scrollBox3);
    obj.layout79:setLeft(10);
    obj.layout79:setTop(600);
    obj.layout79:setWidth(860);
    obj.layout79:setHeight(165);
    obj.layout79:setName("layout79");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout79);
    obj.rectangle28:setLeft(5);
    obj.rectangle28:setTop(0);
    obj.rectangle28:setColor("Gainsboro");
    obj.rectangle28:setWidth(100);
    obj.rectangle28:setXradius(2);
    obj.rectangle28:setYradius(2);
    obj.rectangle28:setName("rectangle28");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout79);
    obj.label53:setLeft(7);
    obj.label53:setWidth(100);
    obj.label53:setHeight(20);
    obj.label53:setText("Experiência");
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setFontSize(16);
    obj.label53:setFontColor("black");
    obj.label53:setName("label53");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout79);
    obj.textEditor5:setTop(20);
    obj.textEditor5:setWidth(860);
    obj.textEditor5:setHeight(165);
    obj.textEditor5:setField("experiencia");
    lfm_setPropAsString(obj.textEditor5, "fontStyle",  "bold");
    obj.textEditor5:setName("textEditor5");

    obj.frmCodigo2 = GUI.fromHandle(_obj_newObject("form"));
    obj.frmCodigo2:setParent(obj.OsMundosDosMortos3);
    obj.frmCodigo2:setName("frmCodigo2");
    obj.frmCodigo2:setHeight(0);
    obj.frmCodigo2:setTheme("light");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.frmCodigo2);
    obj.dataLink21:setFields({'shabilidades1_6', 'shabilidades1_5', 'shabilidades1_4', 'shabilidades1_3', 'shabilidades1_2', 'shabilidades1_1'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.frmCodigo2);
    obj.dataLink22:setFields({'shabilidades2_6', 'shabilidades2_5', 'shabilidades2_4', 'shabilidades2_3', 'shabilidades2_2', 'shabilidades2_1'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.frmCodigo2);
    obj.dataLink23:setFields({'shabilidades3_6', 'shabilidades3_5', 'shabilidades3_4', 'shabilidades3_3', 'shabilidades3_2', 'shabilidades3_1'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.frmCodigo2);
    obj.dataLink24:setFields({'shabilidades4_6', 'shabilidades4_5', 'shabilidades4_4', 'shabilidades4_3', 'shabilidades4_2', 'shabilidades4_1'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.frmCodigo2);
    obj.dataLink25:setFields({'shabilidades5_6', 'shabilidades5_5', 'shabilidades5_4', 'shabilidades5_3', 'shabilidades5_2', 'shabilidades5_1'});
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.frmCodigo2);
    obj.dataLink26:setFields({'shabilidades6_6', 'shabilidades6_5', 'shabilidades6_4', 'shabilidades6_3', 'shabilidades6_2', 'shabilidades6_1'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.frmCodigo2);
    obj.dataLink27:setFields({'shabilidades7_6', 'shabilidades7_5', 'shabilidades7_4', 'shabilidades7_3', 'shabilidades7_2', 'shabilidades7_1'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.frmCodigo2);
    obj.dataLink28:setFields({'shabilidades8_6', 'shabilidades8_5', 'shabilidades8_4', 'shabilidades8_3', 'shabilidades8_2', 'shabilidades8_1'});
    obj.dataLink28:setName("dataLink28");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.frmCodigo2);
    obj.dataLink29:setFields({'shabilidades1_h6', 'shabilidades1_h5', 'shabilidades1_h4', 'shabilidades1_h3', 'shabilidades1_h2', 'shabilidades1_h1'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.frmCodigo2);
    obj.dataLink30:setFields({'shabilidades2_h6', 'shabilidades2_h5', 'shabilidades2_h4', 'shabilidades2_h3', 'shabilidades2_h2', 'shabilidades2_h1'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.frmCodigo2);
    obj.dataLink31:setFields({'shabilidades3_h6', 'shabilidades3_h5', 'shabilidades3_h4', 'shabilidades3_h3', 'shabilidades3_h2', 'shabilidades3_h1'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.frmCodigo2);
    obj.dataLink32:setFields({'shabilidades4_h6', 'shabilidades4_h5', 'shabilidades4_h4', 'shabilidades4_h3', 'shabilidades4_h2', 'shabilidades4_h1'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.frmCodigo2);
    obj.dataLink33:setFields({'shabilidades5_h6', 'shabilidades5_h5', 'shabilidades5_h4', 'shabilidades5_h3', 'shabilidades5_h2', 'shabilidades5_h1'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.frmCodigo2);
    obj.dataLink34:setFields({'shabilidades6_h6', 'shabilidades6_h5', 'shabilidades6_h4', 'shabilidades6_h3', 'shabilidades6_h2', 'shabilidades6_h1'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.frmCodigo2);
    obj.dataLink35:setFields({'shabilidades7_h6', 'shabilidades7_h5', 'shabilidades7_h4', 'shabilidades7_h3', 'shabilidades7_h2', 'shabilidades7_h1'});
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.frmCodigo2);
    obj.dataLink36:setFields({'shabilidades8_h6', 'shabilidades8_h5', 'shabilidades8_h4', 'shabilidades8_h3', 'shabilidades8_h2', 'shabilidades8_h1'});
    obj.dataLink36:setName("dataLink36");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Objetos");
    obj.tab4:setName("tab4");

    obj.OsMundosDosMortos4 = GUI.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortos4:setParent(obj.tab4);
    obj.OsMundosDosMortos4:setName("OsMundosDosMortos4");
    obj.OsMundosDosMortos4:setAlign("client");
    obj.OsMundosDosMortos4:setTheme("dark");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.OsMundosDosMortos4);
    obj.layout80:setAlign("top");
    obj.layout80:setHeight(30);
    obj.layout80:setMargins({bottom=4});
    obj.layout80:setName("layout80");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout80);
    obj.button1:setText("Adicionar Novo Objeto");
    obj.button1:setWidth(150);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.OsMundosDosMortos4);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("client");
    obj.rclListaDosItens:setSelectable(true);

    obj.boxDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.OsMundosDosMortos4);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setAlign("right");
    obj.boxDetalhesDoItem:setWidth(400);
    obj.boxDetalhesDoItem:setMargins({left=4, right=4});

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.boxDetalhesDoItem);
    obj.rectangle29:setAlign("top");
    obj.rectangle29:setColor("black");
    obj.rectangle29:setXradius(10);
    obj.rectangle29:setYradius(10);
    obj.rectangle29:setHeight(180);
    obj.rectangle29:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle29:setName("rectangle29");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle29);
    obj.layout81:setAlign("top");
    obj.layout81:setHeight(30);
    obj.layout81:setMargins({bottom=4});
    obj.layout81:setName("layout81");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout81);
    obj.label54:setAlign("left");
    obj.label54:setText("  Titulo do Objeto:");
    obj.label54:setAutoSize(true);
    obj.label54:setName("label54");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout81);
    obj.edit61:setAlign("client");
    obj.edit61:setField("campoTitulo");
    obj.edit61:setName("edit61");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle29);
    obj.layout82:setAlign("top");
    obj.layout82:setHeight(130);
    obj.layout82:setName("layout82");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.layout82);
    obj.image12:setAlign("left");
    obj.image12:setEditable(true);
    obj.image12:setField("campoURLImagem");
    obj.image12:setWidth(130);
    obj.image12:setName("image12");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.layout82);
    obj.layout83:setAlign("client");
    obj.layout83:setMargins({left=2});
    obj.layout83:setName("layout83");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout83);
    obj.edit62:setAlign("top");
    obj.edit62:setField("campoSubTitulo");
    obj.edit62:setHeight(30);
    obj.edit62:setName("edit62");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout83);
    obj.textEditor6:setAlign("top");
    obj.textEditor6:setField("campoTextoGrande");
    obj.textEditor6:setHeight(100);
    obj.textEditor6:setName("textEditor6");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Créditos");
    obj.tab5:setName("tab5");

    obj.OsMundosDosMortosC = GUI.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortosC:setParent(obj.tab5);
    obj.OsMundosDosMortosC:setName("OsMundosDosMortosC");
    obj.OsMundosDosMortosC:setAlign("client");
    obj.OsMundosDosMortosC:setTheme("dark");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.OsMundosDosMortosC);
    obj.rectangle30:setAlign("top");
    obj.rectangle30:setHeight(30);
    obj.rectangle30:setColor("gray");
    obj.rectangle30:setName("rectangle30");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.OsMundosDosMortosC);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(500);
    obj.flowPart1:setMaxWidth(510);
    obj.flowPart1:setHeight(350);
    obj.flowPart1:setName("flowPart1");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.flowPart1);
    obj.rectangle31:setTop(10);
    obj.rectangle31:setWidth(500);
    obj.rectangle31:setHeight(200);
    obj.rectangle31:setColor("Gray");
    obj.rectangle31:setXradius(10);
    obj.rectangle31:setYradius(10);
    obj.rectangle31:setName("rectangle31");

    obj.path1 = GUI.fromHandle(_obj_newObject("path"));
    obj.path1:setParent(obj.flowPart1);
    obj.path1:setLeft(10);
    obj.path1:setTop(20);
    obj.path1:setWidth(150);
    obj.path1:setHeight(177);
    obj.path1:setRoundToPixel(true);
    obj.path1:setRotationAngle(180.0);
    obj.path1:setMargins({left=10, right=10, bottom=10, top=10});
    obj.path1:setMode("fit");
    obj.path1:setColor("Black");
    obj.path1:setPathData("M360 2430 c0 -5 -6 -9 -12 -7 -8 1 -12 -6 -10 -17 2 -10 0 -16 -5 -13 -5 3 -9 -2 -10 -11 -1 -26 -76 -191 -84 -186 -4 2 -5 -6 -1 -18 4 -16 2 -19 -8 -13 -10 6 -12 3 -8 -13 4 -13 -3 -40 -14 -63 -38 -79 -106 -449 -96 -525 2 -16 7 7 12 51 4 44 20 143 34 220 l27 140 6 -210 c4 -115 11 -221 17 -235 6 -14 11 -18 11 -10 1 16 53 -88 54 -107 0 -7 4 -10 9 -7 4 3 8 -3 8 -13 0 -33 -28 -188 -39 -216 -15 -39 -13 -47 4 -15 16 28 64 254 67 310 0 18 4 -7 8 -57 10 -130 21 -185 31 -160 l8 20 1 -20 c2 -17 3 -16 10 5 7 21 8 22 9 5 2 -19 2 -19 12 -1 10 16 14 12 33 -35 12 -30 28 -54 35 -54 8 0 18 -13 22 -28 6 -23 5 -26 -6 -17 -7 6 -16 7 -19 2 -12 -20 -7 -110 8 -152 32 -85 65 -185 62 -188 -6 -6 -45 68 -56 105 -13 46 -39 94 -40 73 0 -13 -1 -13 -11 0 -19 28 2 -31 38 -105 18 -38 44 -81 57 -95 20 -21 26 -43 36 -133 7 -59 18 -133 25 -163 12 -53 11 -58 -11 -97 -13 -23 -24 -54 -24 -69 0 -46 -16 -40 -37 15 -59 146 -74 231 -81 431 -3 101 -9 178 -17 192 -9 18 -11 -4 -9 -119 3 -202 45 -411 109 -549 14 -29 25 -69 25 -88 0 -19 8 -70 17 -112 l16 -78 744 0 743 0 0 1060 c0 1062 -2 1116 -34 1104 -20 -8 -64 120 -45 132 5 3 9 14 9 25 0 23 -52 129 -56 114 -1 -5 -5 -23 -9 -40 -7 -27 -8 -28 -15 -10 -12 28 -12 37 0 30 6 -3 7 1 4 9 -8 21 -31 20 -42 0 -8 -15 -10 -15 -15 0 -6 14 -37 16 -273 16 l-266 0 7 -27 c4 -16 3 -25 -1 -21 -4 4 -13 0 -20 -10 -12 -16 -13 -16 -14 0 0 9 5 20 10 23 6 3 10 13 10 21 0 11 -25 14 -144 14 -142 0 -145 0 -149 -22 l-4 -23 -2 23 c0 12 -7 22 -15 22 -9 0 -12 -7 -10 -18 3 -9 1 -28 -5 -42 -9 -23 -10 -21 -10 18 l-1 42 -205 0 c-171 0 -203 -2 -199 -14 3 -8 1 -17 -5 -21 -7 -3 -11 3 -11 15 0 19 -5 21 -52 18 -45 -3 -52 -6 -53 -25 -2 -21 -34 -67 -42 -59 -2 2 1 16 7 32 14 35 5 27 -26 -23 -32 -52 -30 -27 2 31 l26 46 -26 0 c-14 0 -26 -4 -26 -10z m343 -442 c4 -62 3 -68 -14 -68 -11 0 -19 -5 -19 -11 0 -6 8 -8 19 -4 38 12 30 -13 -12 -39 -36 -22 -39 -25 -18 -26 19 0 21 -3 12 -14 -10 -12 -6 -15 18 -21 35 -7 40 -18 36 -74 l-4 -44 59 6 c59 7 130 33 130 50 0 4 -9 6 -19 2 -16 -5 -18 -2 -14 16 5 18 3 21 -11 16 -10 -4 -15 -3 -11 3 3 6 12 10 19 10 8 0 16 10 19 21 5 19 11 21 38 15 44 -9 46 -12 18 -42 l-24 -26 25 7 c14 4 41 22 60 41 20 19 40 34 46 34 6 0 21 -34 34 -76 23 -72 48 -118 30 -52 -14 45 -4 47 10 2 24 -72 0 -297 -44 -429 -4 -11 0 -7 10 10 21 36 44 119 44 160 0 23 3 27 10 15 5 -8 10 -53 11 -100 2 -79 2 -82 9 -35 5 28 9 86 10 130 l2 80 14 -50 13 -50 -5 55 c-3 30 -9 89 -13 130 -5 41 -7 76 -6 78 6 7 35 -31 30 -39 -4 -5 -1 -9 4 -9 7 0 11 -37 11 -103 0 -106 -26 -239 -55 -280 -7 -11 -11 -26 -8 -34 3 -8 0 -13 -7 -11 -6 2 -19 -8 -27 -22 l-15 -25 21 24 c28 31 26 19 -5 -35 -14 -24 -31 -41 -36 -37 -7 3 -8 1 -4 -6 4 -6 2 -20 -4 -29 -7 -9 3 0 21 20 75 82 159 287 159 389 0 45 17 42 29 -6 12 -47 15 -224 5 -297 -6 -43 -9 -46 -83 -91 -180 -109 -433 -181 -595 -170 -44 3 -61 27 -99 143 -90 274 -105 346 -69 333 9 -4 -7 16 -35 43 -29 28 -53 55 -53 62 0 6 27 41 60 77 42 47 61 77 65 103 9 50 13 61 14 35 1 -12 5 -24 10 -27 4 -3 6 6 3 19 -3 20 -1 24 12 19 12 -4 22 7 40 48 l24 53 2 -50 3 -50 7 40 c34 180 52 244 73 257 15 9 14 13 20 -64z m-438 -106 c1 -126 5 -182 18 -229 17 -61 21 -223 6 -223 -18 0 -66 171 -75 270 -7 77 8 219 33 296 9 30 17 54 17 54 1 0 1 -75 1 -168z m1000 -871 c-14 -56 -35 -124 -46 -153 -11 -28 -18 -52 -16 -55 7 -7 47 96 65 165 17 66 17 66 20 27 5 -53 -15 -171 -39 -241 -11 -31 -17 -65 -14 -77 5 -16 4 -18 -3 -8 -8 11 -14 6 -27 -24 -8 -22 -23 -47 -32 -57 -9 -10 -13 -18 -10 -18 4 0 20 19 37 42 16 22 30 36 30 30 0 -13 -112 -182 -120 -182 -13 0 -45 87 -105 291 -9 30 -32 77 -51 105 l-34 49 33 28 c17 15 61 41 97 58 112 53 209 103 205 108 -3 2 3 10 13 17 9 7 18 9 20 4 2 -4 -9 -53 -23 -109z");
    obj.path1:setName("path1");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.flowPart1);
    obj.layout84:setLeft(140);
    obj.layout84:setTop(28);
    obj.layout84:setWidth(250);
    obj.layout84:setHeight(200);
    obj.layout84:setName("layout84");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout84);
    obj.label55:setLeft(0);
    obj.label55:setTop(30);
    obj.label55:setWidth(250);
    obj.label55:setFontColor("silver");
    obj.label55:setHeight(20);
    obj.label55:setText("Programador: CastielAngels e Tricket");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setName("label55");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout84);
    obj.label56:setLeft(0);
    obj.label56:setTop(55);
    obj.label56:setWidth(250);
    obj.label56:setFontColor("silver");
    obj.label56:setHeight(20);
    obj.label56:setText("Os Mundos Dos Mortos RRPG Firecast");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout84);
    obj.label57:setLeft(0);
    obj.label57:setTop(80);
    obj.label57:setWidth(250);
    obj.label57:setFontColor("silver");
    obj.label57:setHeight(20);
    obj.label57:setText("Versão: 1.5 14/06/22");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setFontSize(13);
    obj.label57:setName("label57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout84);
    obj.label58:setLeft(0);
    obj.label58:setTop(105);
    obj.label58:setWidth(250);
    obj.label58:setFontColor("silver");
    obj.label58:setHeight(20);
    obj.label58:setText("Por favor, mantenha seu plugin atualizado.");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setFontSize(13);
    obj.label58:setName("label58");

    obj._e_event0 = obj.backgroundimg:addEventListener("onClick",
        function (_)
            Dialogs.selectImageURL('', function(url) sheet.backgroundimg = url end)
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            function booton(value)
              				return value and 1 or 0
            			end
            			sheet.vmusculos = math.floor(booton(self.musc_n1.checked) or 0)+math.floor(booton(self.musc_n2.checked) or 0)+math.floor(booton(self.musc_n3.checked) or 0)+math.floor(booton(self.musc_n4.checked) or 0)+math.floor(booton(self.musc_n5.checked) or 0)+math.floor(booton(self.musc_n6.checked) or 0)+math.floor(booton(self.musc_n7.checked) or 0)+math.floor(booton(self.musc_n8.checked) or 0)+math.floor(booton(self.musc_n9.checked) or 0)+math.floor(booton(self.musc_n10.checked) or 0)
            			sheet.vcerebro = math.floor(booton(self.cereb_n1.checked) or 0)+math.floor(booton(self.cereb_n2.checked) or 0)+math.floor(booton(self.cereb_n3.checked) or 0)+math.floor(booton(self.cereb_n4.checked) or 0)+math.floor(booton(self.cereb_n5.checked) or 0)+math.floor(booton(self.cereb_n6.checked) or 0)+math.floor(booton(self.cereb_n7.checked) or 0)+math.floor(booton(self.cereb_n8.checked) or 0)+math.floor(booton(self.cereb_n9.checked) or 0)+math.floor(booton(self.cereb_n10.checked) or 0)
            			sheet.vcoracao = math.floor(booton(self.corac_n1.checked) or 0)+math.floor(booton(self.corac_n2.checked) or 0)+math.floor(booton(self.corac_n3.checked) or 0)+math.floor(booton(self.corac_n4.checked) or 0)+math.floor(booton(self.corac_n5.checked) or 0)+math.floor(booton(self.corac_n6.checked) or 0)+math.floor(booton(self.corac_n7.checked) or 0)+math.floor(booton(self.corac_n8.checked) or 0)+math.floor(booton(self.corac_n9.checked) or 0)+math.floor(booton(self.corac_n10.checked) or 0)
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
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

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
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

    obj._e_event4 = obj.dataLink4:addEventListener("onChange",
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

    obj._e_event5 = obj.dataLink5:addEventListener("onChange",
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

    obj._e_event6 = obj.dataLink6:addEventListener("onChange",
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

    obj._e_event7 = obj.dataLink7:addEventListener("onChange",
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

    obj._e_event8 = obj.dataLink8:addEventListener("onChange",
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

    obj._e_event9 = obj.dataLink9:addEventListener("onChange",
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

    obj._e_event10 = obj.dataLink10:addEventListener("onChange",
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

    obj._e_event11 = obj.dataLink11:addEventListener("onChange",
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

    obj._e_event12 = obj.dataLink12:addEventListener("onChange",
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

    obj._e_event13 = obj.dataLink13:addEventListener("onChange",
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

    obj._e_event14 = obj.dataLink14:addEventListener("onChange",
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

    obj._e_event15 = obj.dataLink15:addEventListener("onChange",
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

    obj._e_event16 = obj.dataLink16:addEventListener("onChange",
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

    obj._e_event17 = obj.dataLink17:addEventListener("onChange",
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

    obj._e_event18 = obj.dataLink18:addEventListener("onChange",
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

    obj._e_event19 = obj.dataLink19:addEventListener("onChange",
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

    obj._e_event20 = obj.dataLink20:addEventListener("onChange",
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

    obj._e_event21 = obj.dataLink21:addEventListener("onChange",
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

    obj._e_event22 = obj.dataLink22:addEventListener("onChange",
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

    obj._e_event23 = obj.dataLink23:addEventListener("onChange",
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

    obj._e_event24 = obj.dataLink24:addEventListener("onChange",
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

    obj._e_event25 = obj.dataLink25:addEventListener("onChange",
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

    obj._e_event26 = obj.dataLink26:addEventListener("onChange",
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

    obj._e_event27 = obj.dataLink27:addEventListener("onChange",
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

    obj._e_event28 = obj.dataLink28:addEventListener("onChange",
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

    obj._e_event29 = obj.dataLink29:addEventListener("onChange",
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

    obj._e_event30 = obj.dataLink30:addEventListener("onChange",
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

    obj._e_event31 = obj.dataLink31:addEventListener("onChange",
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

    obj._e_event32 = obj.dataLink32:addEventListener("onChange",
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

    obj._e_event33 = obj.dataLink33:addEventListener("onChange",
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

    obj._e_event34 = obj.dataLink34:addEventListener("onChange",
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

    obj._e_event35 = obj.dataLink35:addEventListener("onChange",
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

    obj._e_event36 = obj.dataLink36:addEventListener("onChange",
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

    obj._e_event37 = obj.button1:addEventListener("onClick",
        function (_)
            self.rclListaDosItens:append();
        end, obj);

    obj._e_event38 = obj.rclListaDosItens:addEventListener("onSelect",
        function (_)
            local node = self.rclListaDosItens.selectedNode;  
                                     self.boxDetalhesDoItem.node = node;                       
                                      self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    function obj:_releaseEvents()
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

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.horzLine35 ~= nil then self.horzLine35:destroy(); self.horzLine35 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.imageCheckBox58 ~= nil then self.imageCheckBox58:destroy(); self.imageCheckBox58 = nil; end;
        if self.imageCheckBox175 ~= nil then self.imageCheckBox175:destroy(); self.imageCheckBox175 = nil; end;
        if self.musc_n8 ~= nil then self.musc_n8:destroy(); self.musc_n8 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.imageCheckBox50 ~= nil then self.imageCheckBox50:destroy(); self.imageCheckBox50 = nil; end;
        if self.imageCheckBox185 ~= nil then self.imageCheckBox185:destroy(); self.imageCheckBox185 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.imageCheckBox148 ~= nil then self.imageCheckBox148:destroy(); self.imageCheckBox148 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.imageCheckBox115 ~= nil then self.imageCheckBox115:destroy(); self.imageCheckBox115 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.imageCheckBox67 ~= nil then self.imageCheckBox67:destroy(); self.imageCheckBox67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.cereb_n2 ~= nil then self.cereb_n2:destroy(); self.cereb_n2 = nil; end;
        if self.horzLine19 ~= nil then self.horzLine19:destroy(); self.horzLine19 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.imageCheckBox126 ~= nil then self.imageCheckBox126:destroy(); self.imageCheckBox126 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.frmCodigo1 ~= nil then self.frmCodigo1:destroy(); self.frmCodigo1 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.imageCheckBox166 ~= nil then self.imageCheckBox166:destroy(); self.imageCheckBox166 = nil; end;
        if self.imageCheckBox190 ~= nil then self.imageCheckBox190:destroy(); self.imageCheckBox190 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.horzLine30 ~= nil then self.horzLine30:destroy(); self.horzLine30 = nil; end;
        if self.imageCheckBox176 ~= nil then self.imageCheckBox176:destroy(); self.imageCheckBox176 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.imageCheckBox181 ~= nil then self.imageCheckBox181:destroy(); self.imageCheckBox181 = nil; end;
        if self.imageCheckBox174 ~= nil then self.imageCheckBox174:destroy(); self.imageCheckBox174 = nil; end;
        if self.horzLine37 ~= nil then self.horzLine37:destroy(); self.horzLine37 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.imageCheckBox129 ~= nil then self.imageCheckBox129:destroy(); self.imageCheckBox129 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox99 ~= nil then self.imageCheckBox99:destroy(); self.imageCheckBox99 = nil; end;
        if self.imageCheckBox133 ~= nil then self.imageCheckBox133:destroy(); self.imageCheckBox133 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox63 ~= nil then self.imageCheckBox63:destroy(); self.imageCheckBox63 = nil; end;
        if self.imageCheckBox168 ~= nil then self.imageCheckBox168:destroy(); self.imageCheckBox168 = nil; end;
        if self.imageCheckBox141 ~= nil then self.imageCheckBox141:destroy(); self.imageCheckBox141 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.imageCheckBox191 ~= nil then self.imageCheckBox191:destroy(); self.imageCheckBox191 = nil; end;
        if self.imageCheckBox145 ~= nil then self.imageCheckBox145:destroy(); self.imageCheckBox145 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.cereb_n1 ~= nil then self.cereb_n1:destroy(); self.cereb_n1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.imageCheckBox79 ~= nil then self.imageCheckBox79:destroy(); self.imageCheckBox79 = nil; end;
        if self.imageCheckBox150 ~= nil then self.imageCheckBox150:destroy(); self.imageCheckBox150 = nil; end;
        if self.imageCheckBox136 ~= nil then self.imageCheckBox136:destroy(); self.imageCheckBox136 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.horzLine41 ~= nil then self.horzLine41:destroy(); self.horzLine41 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.imageCheckBox78 ~= nil then self.imageCheckBox78:destroy(); self.imageCheckBox78 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.imageCheckBox103 ~= nil then self.imageCheckBox103:destroy(); self.imageCheckBox103 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.imageCheckBox104 ~= nil then self.imageCheckBox104:destroy(); self.imageCheckBox104 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.imageCheckBox131 ~= nil then self.imageCheckBox131:destroy(); self.imageCheckBox131 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.imageCheckBox68 ~= nil then self.imageCheckBox68:destroy(); self.imageCheckBox68 = nil; end;
        if self.imageCheckBox154 ~= nil then self.imageCheckBox154:destroy(); self.imageCheckBox154 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.OsMundosDosMortos4 ~= nil then self.OsMundosDosMortos4:destroy(); self.OsMundosDosMortos4 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.cereb_n3 ~= nil then self.cereb_n3:destroy(); self.cereb_n3 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.imageCheckBox159 ~= nil then self.imageCheckBox159:destroy(); self.imageCheckBox159 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.imageCheckBox117 ~= nil then self.imageCheckBox117:destroy(); self.imageCheckBox117 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.OsMundosDosMortosC ~= nil then self.OsMundosDosMortosC:destroy(); self.OsMundosDosMortosC = nil; end;
        if self.imageCheckBox112 ~= nil then self.imageCheckBox112:destroy(); self.imageCheckBox112 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.exptotal ~= nil then self.exptotal:destroy(); self.exptotal = nil; end;
        if self.imageCheckBox91 ~= nil then self.imageCheckBox91:destroy(); self.imageCheckBox91 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.corac_n3 ~= nil then self.corac_n3:destroy(); self.corac_n3 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.imageCheckBox155 ~= nil then self.imageCheckBox155:destroy(); self.imageCheckBox155 = nil; end;
        if self.corac_n5 ~= nil then self.corac_n5:destroy(); self.corac_n5 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.horzLine29 ~= nil then self.horzLine29:destroy(); self.horzLine29 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.imageCheckBox59 ~= nil then self.imageCheckBox59:destroy(); self.imageCheckBox59 = nil; end;
        if self.imageCheckBox90 ~= nil then self.imageCheckBox90:destroy(); self.imageCheckBox90 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox182 ~= nil then self.imageCheckBox182:destroy(); self.imageCheckBox182 = nil; end;
        if self.imageCheckBox93 ~= nil then self.imageCheckBox93:destroy(); self.imageCheckBox93 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.horzLine39 ~= nil then self.horzLine39:destroy(); self.horzLine39 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.horzLine38 ~= nil then self.horzLine38:destroy(); self.horzLine38 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.corac_n7 ~= nil then self.corac_n7:destroy(); self.corac_n7 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.horzLine23 ~= nil then self.horzLine23:destroy(); self.horzLine23 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.imageCheckBox55 ~= nil then self.imageCheckBox55:destroy(); self.imageCheckBox55 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.corac_n1 ~= nil then self.corac_n1:destroy(); self.corac_n1 = nil; end;
        if self.horzLine22 ~= nil then self.horzLine22:destroy(); self.horzLine22 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox106 ~= nil then self.imageCheckBox106:destroy(); self.imageCheckBox106 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox83 ~= nil then self.imageCheckBox83:destroy(); self.imageCheckBox83 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.imageCheckBox128 ~= nil then self.imageCheckBox128:destroy(); self.imageCheckBox128 = nil; end;
        if self.imageCheckBox173 ~= nil then self.imageCheckBox173:destroy(); self.imageCheckBox173 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.imageCheckBox107 ~= nil then self.imageCheckBox107:destroy(); self.imageCheckBox107 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.musc_n10 ~= nil then self.musc_n10:destroy(); self.musc_n10 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.imageCheckBox62 ~= nil then self.imageCheckBox62:destroy(); self.imageCheckBox62 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.imageCheckBox124 ~= nil then self.imageCheckBox124:destroy(); self.imageCheckBox124 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.imageCheckBox94 ~= nil then self.imageCheckBox94:destroy(); self.imageCheckBox94 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.imageCheckBox110 ~= nil then self.imageCheckBox110:destroy(); self.imageCheckBox110 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.musc_n1 ~= nil then self.musc_n1:destroy(); self.musc_n1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.imageCheckBox189 ~= nil then self.imageCheckBox189:destroy(); self.imageCheckBox189 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.imageCheckBox71 ~= nil then self.imageCheckBox71:destroy(); self.imageCheckBox71 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.OsMundosDosMortos2 ~= nil then self.OsMundosDosMortos2:destroy(); self.OsMundosDosMortos2 = nil; end;
        if self.imageCheckBox137 ~= nil then self.imageCheckBox137:destroy(); self.imageCheckBox137 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.expatual ~= nil then self.expatual:destroy(); self.expatual = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.imageCheckBox125 ~= nil then self.imageCheckBox125:destroy(); self.imageCheckBox125 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.horzLine20 ~= nil then self.horzLine20:destroy(); self.horzLine20 = nil; end;
        if self.horzLine31 ~= nil then self.horzLine31:destroy(); self.horzLine31 = nil; end;
        if self.imageCheckBox87 ~= nil then self.imageCheckBox87:destroy(); self.imageCheckBox87 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.cereb_n10 ~= nil then self.cereb_n10:destroy(); self.cereb_n10 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.imageCheckBox56 ~= nil then self.imageCheckBox56:destroy(); self.imageCheckBox56 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.imageCheckBox142 ~= nil then self.imageCheckBox142:destroy(); self.imageCheckBox142 = nil; end;
        if self.horzLine26 ~= nil then self.horzLine26:destroy(); self.horzLine26 = nil; end;
        if self.musc_n3 ~= nil then self.musc_n3:destroy(); self.musc_n3 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.imageCheckBox180 ~= nil then self.imageCheckBox180:destroy(); self.imageCheckBox180 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.imageCheckBox85 ~= nil then self.imageCheckBox85:destroy(); self.imageCheckBox85 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.imageCheckBox157 ~= nil then self.imageCheckBox157:destroy(); self.imageCheckBox157 = nil; end;
        if self.imageCheckBox172 ~= nil then self.imageCheckBox172:destroy(); self.imageCheckBox172 = nil; end;
        if self.imageCheckBox156 ~= nil then self.imageCheckBox156:destroy(); self.imageCheckBox156 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.imageCheckBox116 ~= nil then self.imageCheckBox116:destroy(); self.imageCheckBox116 = nil; end;
        if self.imageCheckBox118 ~= nil then self.imageCheckBox118:destroy(); self.imageCheckBox118 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.imageCheckBox86 ~= nil then self.imageCheckBox86:destroy(); self.imageCheckBox86 = nil; end;
        if self.imageCheckBox127 ~= nil then self.imageCheckBox127:destroy(); self.imageCheckBox127 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.imageCheckBox158 ~= nil then self.imageCheckBox158:destroy(); self.imageCheckBox158 = nil; end;
        if self.imageCheckBox179 ~= nil then self.imageCheckBox179:destroy(); self.imageCheckBox179 = nil; end;
        if self.corac_n8 ~= nil then self.corac_n8:destroy(); self.corac_n8 = nil; end;
        if self.imageCheckBox171 ~= nil then self.imageCheckBox171:destroy(); self.imageCheckBox171 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.imageCheckBox111 ~= nil then self.imageCheckBox111:destroy(); self.imageCheckBox111 = nil; end;
        if self.imageCheckBox65 ~= nil then self.imageCheckBox65:destroy(); self.imageCheckBox65 = nil; end;
        if self.imageCheckBox73 ~= nil then self.imageCheckBox73:destroy(); self.imageCheckBox73 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.imageCheckBox96 ~= nil then self.imageCheckBox96:destroy(); self.imageCheckBox96 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.imageCheckBox165 ~= nil then self.imageCheckBox165:destroy(); self.imageCheckBox165 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.imageCheckBox105 ~= nil then self.imageCheckBox105:destroy(); self.imageCheckBox105 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.backgroundimg ~= nil then self.backgroundimg:destroy(); self.backgroundimg = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.imageCheckBox76 ~= nil then self.imageCheckBox76:destroy(); self.imageCheckBox76 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.corac_n6 ~= nil then self.corac_n6:destroy(); self.corac_n6 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.corac_n2 ~= nil then self.corac_n2:destroy(); self.corac_n2 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.imageCheckBox186 ~= nil then self.imageCheckBox186:destroy(); self.imageCheckBox186 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.imageCheckBox149 ~= nil then self.imageCheckBox149:destroy(); self.imageCheckBox149 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.path1 ~= nil then self.path1:destroy(); self.path1 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.horzLine36 ~= nil then self.horzLine36:destroy(); self.horzLine36 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.cereb_n9 ~= nil then self.cereb_n9:destroy(); self.cereb_n9 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.imageCheckBox153 ~= nil then self.imageCheckBox153:destroy(); self.imageCheckBox153 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.imageCheckBox192 ~= nil then self.imageCheckBox192:destroy(); self.imageCheckBox192 = nil; end;
        if self.horzLine40 ~= nil then self.horzLine40:destroy(); self.horzLine40 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.imageCheckBox138 ~= nil then self.imageCheckBox138:destroy(); self.imageCheckBox138 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.imageCheckBox101 ~= nil then self.imageCheckBox101:destroy(); self.imageCheckBox101 = nil; end;
        if self.musc_n6 ~= nil then self.musc_n6:destroy(); self.musc_n6 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.horzLine44 ~= nil then self.horzLine44:destroy(); self.horzLine44 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.corac_n9 ~= nil then self.corac_n9:destroy(); self.corac_n9 = nil; end;
        if self.horzLine28 ~= nil then self.horzLine28:destroy(); self.horzLine28 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.imageCheckBox130 ~= nil then self.imageCheckBox130:destroy(); self.imageCheckBox130 = nil; end;
        if self.horzLine34 ~= nil then self.horzLine34:destroy(); self.horzLine34 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.imageCheckBox80 ~= nil then self.imageCheckBox80:destroy(); self.imageCheckBox80 = nil; end;
        if self.imageCheckBox119 ~= nil then self.imageCheckBox119:destroy(); self.imageCheckBox119 = nil; end;
        if self.imageCheckBox54 ~= nil then self.imageCheckBox54:destroy(); self.imageCheckBox54 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.imageCheckBox81 ~= nil then self.imageCheckBox81:destroy(); self.imageCheckBox81 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.cereb_n4 ~= nil then self.cereb_n4:destroy(); self.cereb_n4 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.cereb_n8 ~= nil then self.cereb_n8:destroy(); self.cereb_n8 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.imageCheckBox92 ~= nil then self.imageCheckBox92:destroy(); self.imageCheckBox92 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.imageCheckBox123 ~= nil then self.imageCheckBox123:destroy(); self.imageCheckBox123 = nil; end;
        if self.horzLine33 ~= nil then self.horzLine33:destroy(); self.horzLine33 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.imageCheckBox184 ~= nil then self.imageCheckBox184:destroy(); self.imageCheckBox184 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox169 ~= nil then self.imageCheckBox169:destroy(); self.imageCheckBox169 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.OsMundosDosMortos1 ~= nil then self.OsMundosDosMortos1:destroy(); self.OsMundosDosMortos1 = nil; end;
        if self.imageCheckBox66 ~= nil then self.imageCheckBox66:destroy(); self.imageCheckBox66 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox82 ~= nil then self.imageCheckBox82:destroy(); self.imageCheckBox82 = nil; end;
        if self.imageCheckBox74 ~= nil then self.imageCheckBox74:destroy(); self.imageCheckBox74 = nil; end;
        if self.imageCheckBox134 ~= nil then self.imageCheckBox134:destroy(); self.imageCheckBox134 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.imageCheckBox146 ~= nil then self.imageCheckBox146:destroy(); self.imageCheckBox146 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.horzLine16 ~= nil then self.horzLine16:destroy(); self.horzLine16 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.imageCheckBox95 ~= nil then self.imageCheckBox95:destroy(); self.imageCheckBox95 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.horzLine25 ~= nil then self.horzLine25:destroy(); self.horzLine25 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.imageCheckBox135 ~= nil then self.imageCheckBox135:destroy(); self.imageCheckBox135 = nil; end;
        if self.musc_n4 ~= nil then self.musc_n4:destroy(); self.musc_n4 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox120 ~= nil then self.imageCheckBox120:destroy(); self.imageCheckBox120 = nil; end;
        if self.imageCheckBox162 ~= nil then self.imageCheckBox162:destroy(); self.imageCheckBox162 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.imageCheckBox139 ~= nil then self.imageCheckBox139:destroy(); self.imageCheckBox139 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.imageCheckBox102 ~= nil then self.imageCheckBox102:destroy(); self.imageCheckBox102 = nil; end;
        if self.imageCheckBox187 ~= nil then self.imageCheckBox187:destroy(); self.imageCheckBox187 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.imageCheckBox163 ~= nil then self.imageCheckBox163:destroy(); self.imageCheckBox163 = nil; end;
        if self.imageCheckBox109 ~= nil then self.imageCheckBox109:destroy(); self.imageCheckBox109 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.horzLine42 ~= nil then self.horzLine42:destroy(); self.horzLine42 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.imageCheckBox164 ~= nil then self.imageCheckBox164:destroy(); self.imageCheckBox164 = nil; end;
        if self.musc_n5 ~= nil then self.musc_n5:destroy(); self.musc_n5 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.imageCheckBox160 ~= nil then self.imageCheckBox160:destroy(); self.imageCheckBox160 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.corac_n4 ~= nil then self.corac_n4:destroy(); self.corac_n4 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.imageCheckBox88 ~= nil then self.imageCheckBox88:destroy(); self.imageCheckBox88 = nil; end;
        if self.imageCheckBox114 ~= nil then self.imageCheckBox114:destroy(); self.imageCheckBox114 = nil; end;
        if self.frmCodigo2 ~= nil then self.frmCodigo2:destroy(); self.frmCodigo2 = nil; end;
        if self.horzLine43 ~= nil then self.horzLine43:destroy(); self.horzLine43 = nil; end;
        if self.cereb_n6 ~= nil then self.cereb_n6:destroy(); self.cereb_n6 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.imageCheckBox61 ~= nil then self.imageCheckBox61:destroy(); self.imageCheckBox61 = nil; end;
        if self.imageCheckBox75 ~= nil then self.imageCheckBox75:destroy(); self.imageCheckBox75 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.imageCheckBox51 ~= nil then self.imageCheckBox51:destroy(); self.imageCheckBox51 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.horzLine21 ~= nil then self.horzLine21:destroy(); self.horzLine21 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.horzLine17 ~= nil then self.horzLine17:destroy(); self.horzLine17 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.horzLine27 ~= nil then self.horzLine27:destroy(); self.horzLine27 = nil; end;
        if self.imageCheckBox64 ~= nil then self.imageCheckBox64:destroy(); self.imageCheckBox64 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.imageCheckBox161 ~= nil then self.imageCheckBox161:destroy(); self.imageCheckBox161 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.cereb_n5 ~= nil then self.cereb_n5:destroy(); self.cereb_n5 = nil; end;
        if self.imageCheckBox60 ~= nil then self.imageCheckBox60:destroy(); self.imageCheckBox60 = nil; end;
        if self.imageCheckBox52 ~= nil then self.imageCheckBox52:destroy(); self.imageCheckBox52 = nil; end;
        if self.imageCheckBox77 ~= nil then self.imageCheckBox77:destroy(); self.imageCheckBox77 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.imageCheckBox121 ~= nil then self.imageCheckBox121:destroy(); self.imageCheckBox121 = nil; end;
        if self.imageCheckBox152 ~= nil then self.imageCheckBox152:destroy(); self.imageCheckBox152 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.imageCheckBox170 ~= nil then self.imageCheckBox170:destroy(); self.imageCheckBox170 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.musc_n2 ~= nil then self.musc_n2:destroy(); self.musc_n2 = nil; end;
        if self.imageCheckBox113 ~= nil then self.imageCheckBox113:destroy(); self.imageCheckBox113 = nil; end;
        if self.imageCheckBox89 ~= nil then self.imageCheckBox89:destroy(); self.imageCheckBox89 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox69 ~= nil then self.imageCheckBox69:destroy(); self.imageCheckBox69 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.musc_n7 ~= nil then self.musc_n7:destroy(); self.musc_n7 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.imageCheckBox178 ~= nil then self.imageCheckBox178:destroy(); self.imageCheckBox178 = nil; end;
        if self.imageCheckBox177 ~= nil then self.imageCheckBox177:destroy(); self.imageCheckBox177 = nil; end;
        if self.imageCheckBox188 ~= nil then self.imageCheckBox188:destroy(); self.imageCheckBox188 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.imageCheckBox132 ~= nil then self.imageCheckBox132:destroy(); self.imageCheckBox132 = nil; end;
        if self.corac_n10 ~= nil then self.corac_n10:destroy(); self.corac_n10 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.imageCheckBox97 ~= nil then self.imageCheckBox97:destroy(); self.imageCheckBox97 = nil; end;
        if self.imageCheckBox100 ~= nil then self.imageCheckBox100:destroy(); self.imageCheckBox100 = nil; end;
        if self.imageCheckBox147 ~= nil then self.imageCheckBox147:destroy(); self.imageCheckBox147 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.cereb_n7 ~= nil then self.cereb_n7:destroy(); self.cereb_n7 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.horzLine32 ~= nil then self.horzLine32:destroy(); self.horzLine32 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.horzLine18 ~= nil then self.horzLine18:destroy(); self.horzLine18 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.imageCheckBox144 ~= nil then self.imageCheckBox144:destroy(); self.imageCheckBox144 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox151 ~= nil then self.imageCheckBox151:destroy(); self.imageCheckBox151 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.imageCheckBox49 ~= nil then self.imageCheckBox49:destroy(); self.imageCheckBox49 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.horzLine15 ~= nil then self.horzLine15:destroy(); self.horzLine15 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.imageCheckBox70 ~= nil then self.imageCheckBox70:destroy(); self.imageCheckBox70 = nil; end;
        if self.imageCheckBox140 ~= nil then self.imageCheckBox140:destroy(); self.imageCheckBox140 = nil; end;
        if self.OsMundosDosMortos3 ~= nil then self.OsMundosDosMortos3:destroy(); self.OsMundosDosMortos3 = nil; end;
        if self.musc_n9 ~= nil then self.musc_n9:destroy(); self.musc_n9 = nil; end;
        if self.imageCheckBox53 ~= nil then self.imageCheckBox53:destroy(); self.imageCheckBox53 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.imageCheckBox57 ~= nil then self.imageCheckBox57:destroy(); self.imageCheckBox57 = nil; end;
        if self.imageCheckBox143 ~= nil then self.imageCheckBox143:destroy(); self.imageCheckBox143 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.imageCheckBox84 ~= nil then self.imageCheckBox84:destroy(); self.imageCheckBox84 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.imageCheckBox108 ~= nil then self.imageCheckBox108:destroy(); self.imageCheckBox108 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.imageCheckBox122 ~= nil then self.imageCheckBox122:destroy(); self.imageCheckBox122 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.horzLine24 ~= nil then self.horzLine24:destroy(); self.horzLine24 = nil; end;
        if self.imageCheckBox72 ~= nil then self.imageCheckBox72:destroy(); self.imageCheckBox72 = nil; end;
        if self.imageCheckBox183 ~= nil then self.imageCheckBox183:destroy(); self.imageCheckBox183 = nil; end;
        if self.imageCheckBox98 ~= nil then self.imageCheckBox98:destroy(); self.imageCheckBox98 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.imageCheckBox167 ~= nil then self.imageCheckBox167:destroy(); self.imageCheckBox167 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newOsMundosDosMortosfrm()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_OsMundosDosMortosfrm();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _OsMundosDosMortosfrm = {
    newEditor = newOsMundosDosMortosfrm, 
    new = newOsMundosDosMortosfrm, 
    name = "OsMundosDosMortosfrm", 
    dataType = "Cast.OsMundosDosMortos", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Os Mundos Dos Mortos", 
    description=""};

OsMundosDosMortosfrm = _OsMundosDosMortosfrm;
Firecast.registrarForm(_OsMundosDosMortosfrm);
Firecast.registrarDataType(_OsMundosDosMortosfrm);

return _OsMundosDosMortosfrm;
