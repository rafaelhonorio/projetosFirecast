require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newTormenta03()
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
    obj:setName("Tormenta03");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.page = gui.fromHandle(_obj_newObject("layout"));
    obj.page:setParent(obj.scrollBox1);
    obj.page:setName("page");
    obj.page:setAlign("none");
    obj.page:setLeft(0);
    obj.page:setTop(0);
    obj.page:setWidth(1010);
    obj.page:setHeight(700);
    obj.page:setMargins({left=0,top=0,right=0,bottom=0});

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.page);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("LightGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.content = gui.fromHandle(_obj_newObject("layout"));
    obj.content:setParent(obj.page);
    obj.content:setName("content");
    obj.content:setAlign("client");
    obj.content:setMargins({top=8,bottom=8});

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.content);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(170);
    obj.layout1:setMargins({top=8,bottom=4});
    obj.layout1:setName("layout1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("Gray");
    obj.rectangle2:setXradius(6);
    obj.rectangle2:setYradius(6);
    obj.rectangle2:setName("rectangle2");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(28);
    obj.layout2:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout2:setName("layout2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("Black");
    obj.rectangle3:setXradius(4);
    obj.rectangle3:setYradius(4);
    obj.rectangle3:setName("rectangle3");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setAlign("client");
    obj.label1:setFontSize(14);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("white");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("ARMAS");
    obj.label1:setName("label1");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(24);
    obj.layout3:setMargins({left=6,right=6,top=0,bottom=2});
    obj.layout3:setName("layout3");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout3);
    obj.button1:setAlign("left");
    obj.button1:setWidth(160);
    obj.button1:setText("Adicionar Arma");
    obj.button1:setName("button1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout3);
    obj.label2:setAlign("left");
    obj.label2:setWidth(200);
    obj.label2:setText("(peso em kg)");
    obj.label2:setName("label2");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(20);
    obj.layout4:setMargins({left=6,right=6,top=0,bottom=0});
    obj.layout4:setName("layout4");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout4);
    obj.label3:setAlign("left");
    obj.label3:setWidth(226);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setText("Arma");
    obj.label3:setName("label3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setAlign("left");
    obj.label4:setWidth(55);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setText("Ataque");
    obj.label4:setName("label4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout4);
    obj.label5:setAlign("left");
    obj.label5:setWidth(85);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setText("Dano");
    obj.label5:setName("label5");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout4);
    obj.label6:setAlign("left");
    obj.label6:setWidth(70);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setText("Crítico");
    obj.label6:setName("label6");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setAlign("left");
    obj.label7:setWidth(70);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setText("Dist.");
    obj.label7:setName("label7");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout4);
    obj.label8:setAlign("left");
    obj.label8:setWidth(90);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setText("Tipo");
    obj.label8:setName("label8");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout4);
    obj.label9:setAlign("left");
    obj.label9:setWidth(60);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setText("Peso");
    obj.label9:setName("label9");

    obj.rclArmas = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclArmas:setParent(obj.layout1);
    obj.rclArmas:setName("rclArmas");
    obj.rclArmas:setField("listaArmas");
    obj.rclArmas:setTemplateForm("frmArmaLinha");
    obj.rclArmas:setAlign("top");
    obj.rclArmas:setHeight(120);
    obj.rclArmas:setMargins({left=6,right=6,top=0,bottom=6});
    obj.rclArmas:setSelectable(true);

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.content);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(150);
    obj.layout5:setMargins({top=0,bottom=4});
    obj.layout5:setName("layout5");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout5);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("Gray");
    obj.rectangle4:setXradius(6);
    obj.rectangle4:setYradius(6);
    obj.rectangle4:setName("rectangle4");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(28);
    obj.layout6:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout6:setName("layout6");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout6);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("Black");
    obj.rectangle5:setXradius(4);
    obj.rectangle5:setYradius(4);
    obj.rectangle5:setName("rectangle5");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout6);
    obj.label10:setAlign("client");
    obj.label10:setFontSize(14);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("white");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setText("ARMADURA / ESCUDO");
    obj.label10:setName("label10");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout5);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(24);
    obj.layout7:setMargins({left=6,right=6,top=0,bottom=2});
    obj.layout7:setName("layout7");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout7);
    obj.button2:setAlign("left");
    obj.button2:setWidth(170);
    obj.button2:setText("Adicionar Armadura");
    obj.button2:setName("button2");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout7);
    obj.button3:setAlign("left");
    obj.button3:setWidth(170);
    obj.button3:setMargins({left=8});
    obj.button3:setText("Adicionar Escudo");
    obj.button3:setName("button3");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout5);
    obj.layout8:setAlign("top");
    obj.layout8:setHeight(20);
    obj.layout8:setMargins({left=6,right=6,top=0,bottom=0});
    obj.layout8:setName("layout8");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout8);
    obj.label11:setAlign("left");
    obj.label11:setWidth(110);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setText("Categoria");
    obj.label11:setName("label11");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout8);
    obj.label12:setAlign("left");
    obj.label12:setWidth(190);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setText("Nome");
    obj.label12:setName("label12");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout8);
    obj.label13:setAlign("left");
    obj.label13:setWidth(90);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setText("Bônus CA");
    obj.label13:setName("label13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout8);
    obj.label14:setAlign("left");
    obj.label14:setWidth(140);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setText("Bônus Máx. DES");
    obj.label14:setName("label14");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout8);
    obj.label15:setAlign("left");
    obj.label15:setWidth(120);
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setText("Penalidade");
    obj.label15:setName("label15");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout8);
    obj.label16:setAlign("left");
    obj.label16:setWidth(70);
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setText("Peso");
    obj.label16:setName("label16");

    obj.rclDefesas = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclDefesas:setParent(obj.layout5);
    obj.rclDefesas:setName("rclDefesas");
    obj.rclDefesas:setField("listaDefesas");
    obj.rclDefesas:setTemplateForm("frmDefesaLinha");
    obj.rclDefesas:setAlign("top");
    obj.rclDefesas:setHeight(60);
    obj.rclDefesas:setMargins({left=6,right=6,top=0,bottom=6});
    obj.rclDefesas:setSelectable(true);

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.content);
    obj.layout9:setAlign("top");
    obj.layout9:setHeight(260);
    obj.layout9:setMargins({top=0,bottom=4});
    obj.layout9:setName("layout9");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout9);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("Gray");
    obj.rectangle6:setXradius(6);
    obj.rectangle6:setYradius(6);
    obj.rectangle6:setName("rectangle6");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(28);
    obj.layout10:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout10:setName("layout10");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout10);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("Black");
    obj.rectangle7:setXradius(4);
    obj.rectangle7:setYradius(4);
    obj.rectangle7:setName("rectangle7");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout10);
    obj.label17:setAlign("client");
    obj.label17:setFontSize(14);
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("white");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setText("EQUIPAMENTO");
    obj.label17:setName("label17");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setAlign("top");
    obj.layout11:setHeight(24);
    obj.layout11:setMargins({left=6,right=6,top=0,bottom=4});
    obj.layout11:setName("layout11");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout11);
    obj.button4:setAlign("left");
    obj.button4:setWidth(190);
    obj.button4:setText("Adicionar Item");
    obj.button4:setName("button4");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout9);
    obj.layout12:setAlign("client");
    obj.layout12:setMargins({left=6,right=6,top=0,bottom=6});
    obj.layout12:setName("layout12");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout12);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("Transparent");
    obj.rectangle8:setHitTest(true);
    obj.rectangle8:setName("rectangle8");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout12);
    obj.layout13:setAlign("left");
    obj.layout13:setWidth(560);
    obj.layout13:setName("layout13");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout13);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(20);
    obj.layout14:setMargins({bottom=2});
    obj.layout14:setName("layout14");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout14);
    obj.label18:setAlign("left");
    obj.label18:setWidth(334);
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setText("Nome");
    obj.label18:setName("label18");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout14);
    obj.label19:setAlign("left");
    obj.label19:setWidth(100);
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setText("Valor");
    obj.label19:setName("label19");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout14);
    obj.label20:setAlign("left");
    obj.label20:setWidth(70);
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setText("Peso");
    obj.label20:setName("label20");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout14);
    obj.label21:setAlign("left");
    obj.label21:setWidth(26);
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setText("");
    obj.label21:setName("label21");

    obj.rclEquip = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclEquip:setParent(obj.layout13);
    obj.rclEquip:setName("rclEquip");
    obj.rclEquip:setField("listaEquipamentos");
    obj.rclEquip:setTemplateForm("frmEquipLinha");
    obj.rclEquip:setAlign("client");
    obj.rclEquip:setSelectable(true);

    obj.pnlEquipDetalhes = gui.fromHandle(_obj_newObject("layout"));
    obj.pnlEquipDetalhes:setParent(obj.layout12);
    obj.pnlEquipDetalhes:setName("pnlEquipDetalhes");
    obj.pnlEquipDetalhes:setAlign("left");
    obj.pnlEquipDetalhes:setWidth(420);
    obj.pnlEquipDetalhes:setMargins({left=8});
    obj.pnlEquipDetalhes:setVisible(false);

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.pnlEquipDetalhes);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("LightGray");
    obj.rectangle9:setXradius(6);
    obj.rectangle9:setYradius(6);
    obj.rectangle9:setName("rectangle9");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.pnlEquipDetalhes);
    obj.layout15:setAlign("top");
    obj.layout15:setHeight(26);
    obj.layout15:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout15:setName("layout15");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout15);
    obj.label22:setAlign("client");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setText("Detalhes do Item: $(nome)");
    obj.label22:setName("label22");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.pnlEquipDetalhes);
    obj.layout16:setAlign("client");
    obj.layout16:setMargins({left=6,right=6,top=0,bottom=6});
    obj.layout16:setName("layout16");

    obj.boxEquipDetalhes = gui.fromHandle(_obj_newObject("layout"));
    obj.boxEquipDetalhes:setParent(obj.layout16);
    obj.boxEquipDetalhes:setName("boxEquipDetalhes");
    obj.boxEquipDetalhes:setAlign("client");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.boxEquipDetalhes);
    obj.label23:setAlign("top");
    obj.label23:setHeight(18);
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setText("Descrição");
    obj.label23:setName("label23");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.boxEquipDetalhes);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("descricao");
    obj.textEditor1:setName("textEditor1");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.content);
    obj.layout17:setAlign("top");
    obj.layout17:setHeight(110);
    obj.layout17:setMargins({top=0,bottom=8});
    obj.layout17:setName("layout17");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout17);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("Gray");
    obj.rectangle10:setXradius(6);
    obj.rectangle10:setYradius(6);
    obj.rectangle10:setName("rectangle10");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout17);
    obj.layout18:setAlign("top");
    obj.layout18:setHeight(28);
    obj.layout18:setMargins({left=6,right=6,top=6,bottom=2});
    obj.layout18:setName("layout18");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout18);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("Black");
    obj.rectangle11:setXradius(4);
    obj.rectangle11:setYradius(4);
    obj.rectangle11:setName("rectangle11");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout18);
    obj.label24:setAlign("client");
    obj.label24:setFontSize(14);
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontColor("white");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setText("CARGA / DINHEIRO / ANOTAÇÕES");
    obj.label24:setName("label24");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout17);
    obj.layout19:setAlign("client");
    obj.layout19:setMargins({left=6,right=6,top=0,bottom=6});
    obj.layout19:setName("layout19");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout19);
    obj.layout20:setAlign("left");
    obj.layout20:setWidth(360);
    obj.layout20:setName("layout20");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout20);
    obj.label25:setAlign("top");
    obj.label25:setHeight(18);
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setText("Carga (regra automática)");
    obj.label25:setName("label25");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout20);
    obj.label26:setAlign("top");
    obj.label26:setHeight(18);
    obj.label26:setText("Peso total:");
    obj.label26:setName("label26");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout20);
    obj.edit1:setAlign("top");
    obj.edit1:setHeight(24);
    obj.edit1:setField("pesototal");
    obj.edit1:setType("number");
    obj.edit1:setMin(0);
    obj.edit1:setMax(999999);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setCanFocus(false);
    obj.edit1:setName("edit1");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout20);
    obj.label27:setAlign("top");
    obj.label27:setHeight(18);
    obj.label27:setText("Sem penalidade até:");
    obj.label27:setName("label27");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout20);
    obj.edit2:setAlign("top");
    obj.edit2:setHeight(24);
    obj.edit2:setField("cargaSemPenal");
    obj.edit2:setType("number");
    obj.edit2:setMin(0);
    obj.edit2:setMax(999999);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setCanFocus(false);
    obj.edit2:setName("edit2");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout20);
    obj.label28:setAlign("top");
    obj.label28:setHeight(18);
    obj.label28:setText("Máximo:");
    obj.label28:setName("label28");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout20);
    obj.edit3:setAlign("top");
    obj.edit3:setHeight(24);
    obj.edit3:setField("cargaMaxima");
    obj.edit3:setType("number");
    obj.edit3:setMin(0);
    obj.edit3:setMax(999999);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setCanFocus(false);
    obj.edit3:setName("edit3");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout20);
    obj.label29:setAlign("top");
    obj.label29:setHeight(18);
    obj.label29:setText("Deslocamento efetivo:");
    obj.label29:setName("label29");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout20);
    obj.edit4:setAlign("top");
    obj.edit4:setHeight(24);
    obj.edit4:setField("deslocamentoEfetivo");
    obj.edit4:setCanFocus(false);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout20);
    obj.label30:setAlign("top");
    obj.label30:setHeight(18);
    obj.label30:setText("Status:");
    obj.label30:setName("label30");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout20);
    obj.edit5:setAlign("top");
    obj.edit5:setHeight(24);
    obj.edit5:setField("cargaStatus");
    obj.edit5:setCanFocus(false);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout19);
    obj.layout21:setAlign("left");
    obj.layout21:setWidth(240);
    obj.layout21:setMargins({left=10});
    obj.layout21:setName("layout21");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout21);
    obj.label31:setAlign("top");
    obj.label31:setHeight(18);
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setText("Dinheiro");
    obj.label31:setName("label31");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout21);
    obj.label32:setAlign("top");
    obj.label32:setHeight(18);
    obj.label32:setText("T$ (Cobre)");
    obj.label32:setName("label32");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout21);
    obj.edit6:setAlign("top");
    obj.edit6:setHeight(24);
    obj.edit6:setField("totalCobre");
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(999999);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout21);
    obj.label33:setAlign("top");
    obj.label33:setHeight(18);
    obj.label33:setText("TP (Prata)");
    obj.label33:setName("label33");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout21);
    obj.edit7:setAlign("top");
    obj.edit7:setHeight(24);
    obj.edit7:setField("totalPrata");
    obj.edit7:setType("number");
    obj.edit7:setMin(0);
    obj.edit7:setMax(999999);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setName("edit7");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout21);
    obj.label34:setAlign("top");
    obj.label34:setHeight(18);
    obj.label34:setText("TO (Ouro)");
    obj.label34:setName("label34");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout21);
    obj.edit8:setAlign("top");
    obj.edit8:setHeight(24);
    obj.edit8:setField("totalOuro");
    obj.edit8:setType("number");
    obj.edit8:setMin(0);
    obj.edit8:setMax(999999);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setName("edit8");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout21);
    obj.label35:setAlign("top");
    obj.label35:setHeight(18);
    obj.label35:setText("TL (Platina)");
    obj.label35:setName("label35");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout21);
    obj.edit9:setAlign("top");
    obj.edit9:setHeight(24);
    obj.edit9:setField("totalPlatina");
    obj.edit9:setType("number");
    obj.edit9:setMin(0);
    obj.edit9:setMax(999999);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setName("edit9");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout19);
    obj.layout22:setAlign("left");
    obj.layout22:setWidth(360);
    obj.layout22:setMargins({left=10});
    obj.layout22:setName("layout22");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout22);
    obj.label36:setAlign("top");
    obj.label36:setHeight(18);
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setText("Anotações");
    obj.label36:setName("label36");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout22);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("eqanotacoes");
    obj.textEditor2:setName("textEditor2");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclArmas:append();
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (self)
            local n = self.rclDefesas:append();
            							if n ~= nil then n.categoria = "Armadura"; end;
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (self)
            local n = self.rclDefesas:append();
            							if n ~= nil then n.categoria = "Escudo"; end;
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (self)
            local n = self.rclEquip:append();
            								if n ~= nil then
            									-- cria limpo
            									n.nome = "";
            									n.descricao = "";
            									n.valor = "";
            									n.peso = 0;
            
            									-- seleciona e abre detalhes
            									self.rclEquip.selectedNode = n;
            									self.pnlEquipDetalhes.node = n;
            									self.boxEquipDetalhes.node = n;
            									self.pnlEquipDetalhes.visible = true;
            								end;
        end, obj);

    obj._e_event4 = obj.rectangle8:addEventListener("onClick",
        function (self)
            self.rclEquip.selectedNode = nil;
            								self.pnlEquipDetalhes.visible = false;
            								self.pnlEquipDetalhes.node = nil;
            								self.boxEquipDetalhes.node = nil;
        end, obj);

    obj._e_event5 = obj.rclEquip:addEventListener("onSelect",
        function (self)
            local node = self.rclEquip.selectedNode;
            
            									self.pnlEquipDetalhes.node = node;
            									self.boxEquipDetalhes.node = node;
            									self.pnlEquipDetalhes.visible = (node ~= nil);
        end, obj);

    function obj:_releaseEvents()
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

        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.rclArmas ~= nil then self.rclArmas:destroy(); self.rclArmas = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.rclDefesas ~= nil then self.rclDefesas:destroy(); self.rclDefesas = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rclEquip ~= nil then self.rclEquip:destroy(); self.rclEquip = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.boxEquipDetalhes ~= nil then self.boxEquipDetalhes:destroy(); self.boxEquipDetalhes = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.content ~= nil then self.content:destroy(); self.content = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.page ~= nil then self.page:destroy(); self.page = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.pnlEquipDetalhes ~= nil then self.pnlEquipDetalhes:destroy(); self.pnlEquipDetalhes = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Tormenta03 = {
    newEditor = newTormenta03, 
    new = newTormenta03, 
    name = "Tormenta03", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta03 = _Tormenta03;
rrpg.registrarForm(_Tormenta03);

return _Tormenta03;
