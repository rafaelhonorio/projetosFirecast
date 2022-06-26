require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_VampiroAMascara3()
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
    obj:setName("VampiroAMascara3");
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
    obj.label1:setLeft(355);
    obj.label1:setTop(2);
    obj.label1:setWidth(250);
    obj.label1:setHeight(20);
    obj.label1:setText("Descrição dos Antecedentes");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("White");
    obj.label1:setName("label1");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setTop(205);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(600);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(20);
    obj.layout5:setTop(35);
    obj.layout5:setWidth(400);
    obj.layout5:setHeight(400);
    obj.layout5:setName("layout5");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout5);
    obj.label2:setWidth(200);
    obj.label2:setTop(0);
    obj.label2:setLeft(180);
    obj.label2:setText("Aliados");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("Black");
    obj.label2:setName("label2");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout4);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(55);
    obj.layout6:setWidth(500);
    obj.layout6:setHeight(400);
    obj.layout6:setName("layout6");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setLeft(20);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(415);
    obj.textEditor1:setHeight(80);
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setField("aliados");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout4);
    obj.layout7:setLeft(450);
    obj.layout7:setTop(35);
    obj.layout7:setWidth(400);
    obj.layout7:setHeight(400);
    obj.layout7:setName("layout7");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout7);
    obj.label3:setWidth(200);
    obj.label3:setTop(0);
    obj.label3:setLeft(180);
    obj.label3:setText("Mentor");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("Black");
    obj.label3:setName("label3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout4);
    obj.layout8:setLeft(430);
    obj.layout8:setTop(55);
    obj.layout8:setWidth(500);
    obj.layout8:setHeight(400);
    obj.layout8:setName("layout8");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout8);
    obj.textEditor2:setLeft(20);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(415);
    obj.textEditor2:setHeight(80);
    obj.textEditor2:setFontColor("black");
    obj.textEditor2:setField("mentor");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout4);
    obj.layout9:setLeft(20);
    obj.layout9:setTop(135);
    obj.layout9:setWidth(400);
    obj.layout9:setHeight(400);
    obj.layout9:setName("layout9");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout9);
    obj.label4:setWidth(200);
    obj.label4:setTop(0);
    obj.label4:setLeft(175);
    obj.label4:setText("Contatos");
    obj.label4:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("Black");
    obj.label4:setName("label4");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout4);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(155);
    obj.layout10:setWidth(500);
    obj.layout10:setHeight(400);
    obj.layout10:setName("layout10");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout10);
    obj.textEditor3:setLeft(20);
    obj.textEditor3:setTop(0);
    obj.textEditor3:setWidth(415);
    obj.textEditor3:setHeight(80);
    obj.textEditor3:setFontColor("black");
    obj.textEditor3:setField("contatos");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout4);
    obj.layout11:setLeft(450);
    obj.layout11:setTop(135);
    obj.layout11:setWidth(400);
    obj.layout11:setHeight(400);
    obj.layout11:setName("layout11");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout11);
    obj.label5:setWidth(200);
    obj.label5:setTop(0);
    obj.label5:setLeft(175);
    obj.label5:setText("Recursos");
    obj.label5:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("Black");
    obj.label5:setName("label5");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout4);
    obj.layout12:setLeft(430);
    obj.layout12:setTop(155);
    obj.layout12:setWidth(500);
    obj.layout12:setHeight(400);
    obj.layout12:setName("layout12");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout12);
    obj.textEditor4:setLeft(20);
    obj.textEditor4:setTop(0);
    obj.textEditor4:setWidth(415);
    obj.textEditor4:setHeight(80);
    obj.textEditor4:setFontColor("black");
    obj.textEditor4:setField("recursos");
    lfm_setPropAsString(obj.textEditor4, "fontStyle",  "bold");
    obj.textEditor4:setName("textEditor4");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout4);
    obj.layout13:setLeft(20);
    obj.layout13:setTop(235);
    obj.layout13:setWidth(400);
    obj.layout13:setHeight(400);
    obj.layout13:setName("layout13");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout13);
    obj.label6:setWidth(200);
    obj.label6:setTop(0);
    obj.label6:setLeft(185);
    obj.label6:setText("Fama");
    obj.label6:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("Black");
    obj.label6:setName("label6");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout4);
    obj.layout14:setLeft(0);
    obj.layout14:setTop(255);
    obj.layout14:setWidth(500);
    obj.layout14:setHeight(400);
    obj.layout14:setName("layout14");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout14);
    obj.textEditor5:setLeft(20);
    obj.textEditor5:setTop(0);
    obj.textEditor5:setWidth(415);
    obj.textEditor5:setHeight(80);
    obj.textEditor5:setFontColor("black");
    obj.textEditor5:setField("fama");
    lfm_setPropAsString(obj.textEditor5, "fontStyle",  "bold");
    obj.textEditor5:setName("textEditor5");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout4);
    obj.layout15:setLeft(450);
    obj.layout15:setTop(235);
    obj.layout15:setWidth(400);
    obj.layout15:setHeight(400);
    obj.layout15:setName("layout15");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout15);
    obj.label7:setWidth(200);
    obj.label7:setTop(0);
    obj.label7:setLeft(180);
    obj.label7:setText("Lacaios");
    obj.label7:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("Black");
    obj.label7:setName("label7");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout4);
    obj.layout16:setLeft(430);
    obj.layout16:setTop(255);
    obj.layout16:setWidth(500);
    obj.layout16:setHeight(400);
    obj.layout16:setName("layout16");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout16);
    obj.textEditor6:setLeft(20);
    obj.textEditor6:setTop(0);
    obj.textEditor6:setWidth(415);
    obj.textEditor6:setHeight(80);
    obj.textEditor6:setFontColor("black");
    obj.textEditor6:setField("lacaios");
    lfm_setPropAsString(obj.textEditor6, "fontStyle",  "bold");
    obj.textEditor6:setName("textEditor6");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout4);
    obj.layout17:setLeft(20);
    obj.layout17:setTop(335);
    obj.layout17:setWidth(400);
    obj.layout17:setHeight(400);
    obj.layout17:setName("layout17");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout17);
    obj.label8:setWidth(200);
    obj.label8:setTop(0);
    obj.label8:setLeft(175);
    obj.label8:setText("Rebanho");
    obj.label8:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("Black");
    obj.label8:setName("label8");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout4);
    obj.layout18:setLeft(0);
    obj.layout18:setTop(355);
    obj.layout18:setWidth(500);
    obj.layout18:setHeight(400);
    obj.layout18:setName("layout18");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout18);
    obj.textEditor7:setLeft(20);
    obj.textEditor7:setTop(0);
    obj.textEditor7:setWidth(415);
    obj.textEditor7:setHeight(80);
    obj.textEditor7:setFontColor("black");
    obj.textEditor7:setField("rebanho");
    lfm_setPropAsString(obj.textEditor7, "fontStyle",  "bold");
    obj.textEditor7:setName("textEditor7");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout4);
    obj.layout19:setLeft(450);
    obj.layout19:setTop(335);
    obj.layout19:setWidth(400);
    obj.layout19:setHeight(400);
    obj.layout19:setName("layout19");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout19);
    obj.label9:setWidth(200);
    obj.label9:setTop(0);
    obj.label9:setLeft(185);
    obj.label9:setText("Status");
    obj.label9:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("Black");
    obj.label9:setName("label9");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout4);
    obj.layout20:setLeft(430);
    obj.layout20:setTop(355);
    obj.layout20:setWidth(500);
    obj.layout20:setHeight(400);
    obj.layout20:setName("layout20");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout20);
    obj.textEditor8:setLeft(20);
    obj.textEditor8:setTop(0);
    obj.textEditor8:setWidth(415);
    obj.textEditor8:setHeight(80);
    obj.textEditor8:setFontColor("black");
    obj.textEditor8:setField("status");
    lfm_setPropAsString(obj.textEditor8, "fontStyle",  "bold");
    obj.textEditor8:setName("textEditor8");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout4);
    obj.layout21:setLeft(20);
    obj.layout21:setTop(435);
    obj.layout21:setWidth(400);
    obj.layout21:setHeight(400);
    obj.layout21:setName("layout21");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout21);
    obj.label10:setWidth(200);
    obj.label10:setTop(0);
    obj.label10:setLeft(170);
    obj.label10:setText("Influência");
    obj.label10:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("Black");
    obj.label10:setName("label10");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout4);
    obj.layout22:setLeft(0);
    obj.layout22:setTop(455);
    obj.layout22:setWidth(500);
    obj.layout22:setHeight(400);
    obj.layout22:setName("layout22");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout22);
    obj.textEditor9:setLeft(20);
    obj.textEditor9:setTop(0);
    obj.textEditor9:setWidth(415);
    obj.textEditor9:setHeight(80);
    obj.textEditor9:setFontColor("black");
    obj.textEditor9:setField("influencia");
    lfm_setPropAsString(obj.textEditor9, "fontStyle",  "bold");
    obj.textEditor9:setName("textEditor9");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout4);
    obj.layout23:setLeft(450);
    obj.layout23:setTop(435);
    obj.layout23:setWidth(400);
    obj.layout23:setHeight(400);
    obj.layout23:setName("layout23");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout23);
    obj.label11:setWidth(200);
    obj.label11:setTop(0);
    obj.label11:setLeft(185);
    obj.label11:setText("Outros");
    obj.label11:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("Black");
    obj.label11:setName("label11");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout4);
    obj.layout24:setLeft(430);
    obj.layout24:setTop(455);
    obj.layout24:setWidth(500);
    obj.layout24:setHeight(400);
    obj.layout24:setName("layout24");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout24);
    obj.textEditor10:setLeft(20);
    obj.textEditor10:setTop(0);
    obj.textEditor10:setWidth(415);
    obj.textEditor10:setHeight(80);
    obj.textEditor10:setFontColor("black");
    obj.textEditor10:setField("outros");
    lfm_setPropAsString(obj.textEditor10, "fontStyle",  "bold");
    obj.textEditor10:setName("textEditor10");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox1);
    obj.layout25:setTop(755);
    obj.layout25:setWidth(880);
    obj.layout25:setHeight(25);
    obj.layout25:setName("layout25");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout25);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setWidth(880);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout25);
    obj.label12:setLeft(420);
    obj.label12:setTop(2);
    obj.label12:setWidth(250);
    obj.label12:setHeight(20);
    obj.label12:setText("Posses");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("White");
    obj.label12:setName("label12");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.scrollBox1);
    obj.layout26:setTop(755);
    obj.layout26:setWidth(880);
    obj.layout26:setHeight(200);
    obj.layout26:setName("layout26");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout26);
    obj.layout27:setLeft(20);
    obj.layout27:setTop(35);
    obj.layout27:setWidth(400);
    obj.layout27:setHeight(400);
    obj.layout27:setName("layout27");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout27);
    obj.label13:setWidth(200);
    obj.label13:setTop(0);
    obj.label13:setLeft(145);
    obj.label13:setText("Campos de Caça");
    obj.label13:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("Black");
    obj.label13:setName("label13");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout26);
    obj.layout28:setLeft(0);
    obj.layout28:setTop(55);
    obj.layout28:setWidth(500);
    obj.layout28:setHeight(400);
    obj.layout28:setName("layout28");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout28);
    obj.textEditor11:setLeft(20);
    obj.textEditor11:setTop(0);
    obj.textEditor11:setWidth(415);
    obj.textEditor11:setHeight(80);
    obj.textEditor11:setFontColor("black");
    obj.textEditor11:setField("caca");
    lfm_setPropAsString(obj.textEditor11, "fontStyle",  "bold");
    obj.textEditor11:setName("textEditor11");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout26);
    obj.layout29:setLeft(450);
    obj.layout29:setTop(35);
    obj.layout29:setWidth(400);
    obj.layout29:setHeight(400);
    obj.layout29:setName("layout29");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout29);
    obj.label14:setWidth(200);
    obj.label14:setTop(0);
    obj.label14:setLeft(185);
    obj.label14:setText("Veículos");
    obj.label14:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("Black");
    obj.label14:setName("label14");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout26);
    obj.layout30:setLeft(430);
    obj.layout30:setTop(55);
    obj.layout30:setWidth(500);
    obj.layout30:setHeight(400);
    obj.layout30:setName("layout30");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout30);
    obj.textEditor12:setLeft(20);
    obj.textEditor12:setTop(0);
    obj.textEditor12:setWidth(415);
    obj.textEditor12:setHeight(80);
    obj.textEditor12:setFontColor("black");
    obj.textEditor12:setField("veiculos");
    lfm_setPropAsString(obj.textEditor12, "fontStyle",  "bold");
    obj.textEditor12:setName("textEditor12");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.scrollBox1);
    obj.layout31:setTop(905);
    obj.layout31:setWidth(880);
    obj.layout31:setHeight(25);
    obj.layout31:setName("layout31");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout31);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setWidth(880);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setName("rectangle5");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout31);
    obj.label15:setLeft(400);
    obj.label15:setTop(2);
    obj.label15:setWidth(250);
    obj.label15:setHeight(20);
    obj.label15:setText("Anotações");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("White");
    obj.label15:setName("label15");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.scrollBox1);
    obj.layout32:setTop(925);
    obj.layout32:setWidth(880);
    obj.layout32:setHeight(270);
    obj.layout32:setName("layout32");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout32);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(15);
    obj.layout33:setWidth(880);
    obj.layout33:setHeight(270);
    obj.layout33:setName("layout33");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout33);
    obj.textEditor13:setLeft(20);
    obj.textEditor13:setTop(0);
    obj.textEditor13:setWidth(845);
    obj.textEditor13:setHeight(250);
    obj.textEditor13:setFontColor("black");
    obj.textEditor13:setField("anotacoes");
    lfm_setPropAsString(obj.textEditor13, "fontStyle",  "bold");
    obj.textEditor13:setName("textEditor13");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
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
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newVampiroAMascara3()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_VampiroAMascara3();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _VampiroAMascara3 = {
    newEditor = newVampiroAMascara3, 
    new = newVampiroAMascara3, 
    name = "VampiroAMascara3", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

VampiroAMascara3 = _VampiroAMascara3;
Firecast.registrarForm(_VampiroAMascara3);

return _VampiroAMascara3;
