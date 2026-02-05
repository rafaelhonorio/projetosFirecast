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
    obj.content:setMargins({top=8,bottom=8,left=8,right=8});

    obj.grid = gui.fromHandle(_obj_newObject("layout"));
    obj.grid:setParent(obj.content);
    obj.grid:setName("grid");
    obj.grid:setAlign("client");

    obj.colEsq = gui.fromHandle(_obj_newObject("layout"));
    obj.colEsq:setParent(obj.grid);
    obj.colEsq:setName("colEsq");
    obj.colEsq:setAlign("left");
    obj.colEsq:setWidth(500);

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.colEsq);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(335);
    obj.layout1:setMargins({bottom=6});
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
    obj.button1:setFontColor("black");
    obj.button1:setText("Adicionar Arma");
    obj.button1:setName("button1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout3);
    obj.label2:setAlign("left");
    obj.label2:setWidth(200);
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
    obj.label3:setWidth(140);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setText("Arma");
    obj.label3:setName("label3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setAlign("left");
    obj.label4:setWidth(48);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setText("Ataque");
    obj.label4:setName("label4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout4);
    obj.label5:setAlign("left");
    obj.label5:setWidth(60);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setText("Dano");
    obj.label5:setName("label5");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout4);
    obj.label6:setAlign("left");
    obj.label6:setWidth(52);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setText("Crítico");
    obj.label6:setName("label6");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setAlign("left");
    obj.label7:setWidth(48);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setText("Dist.");
    obj.label7:setHitTest(true);
    obj.label7:setHint("Distância");
    obj.label7:setName("label7");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout4);
    obj.label8:setAlign("left");
    obj.label8:setWidth(62);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setText("Tipo");
    obj.label8:setName("label8");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout4);
    obj.label9:setAlign("left");
    obj.label9:setWidth(40);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setText("Peso");
    obj.label9:setHitTest(true);
    obj.label9:setHint("Peso em Kg");
    obj.label9:setName("label9");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout4);
    obj.label10:setAlign("left");
    obj.label10:setWidth(24);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setText("");
    obj.label10:setName("label10");

    obj.rclArmas = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclArmas:setParent(obj.layout1);
    obj.rclArmas:setName("rclArmas");
    obj.rclArmas:setField("listaArmas");
    obj.rclArmas:setTemplateForm("frmArmaLinha");
    obj.rclArmas:setAlign("client");
    obj.rclArmas:setMargins({left=6,right=6,top=0,bottom=6});
    obj.rclArmas:setSelectable(true);

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.colEsq);
    obj.layout5:setAlign("client");
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

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout6);
    obj.label11:setAlign("client");
    obj.label11:setFontSize(14);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("white");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setText("ARMADURAS / ESCUDOS / OUTROS");
    obj.label11:setName("label11");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout5);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(24);
    obj.layout7:setMargins({left=6,right=6,top=0,bottom=2});
    obj.layout7:setName("layout7");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout7);
    obj.button2:setAlign("left");
    obj.button2:setWidth(150);
    obj.button2:setFontColor("black");
    obj.button2:setText("Adicionar Armadura");
    obj.button2:setName("button2");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout7);
    obj.button3:setAlign("left");
    obj.button3:setWidth(150);
    obj.button3:setMargins({left=8});
    obj.button3:setFontColor("black");
    obj.button3:setText("Adicionar Escudo");
    obj.button3:setName("button3");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout7);
    obj.button4:setAlign("left");
    obj.button4:setWidth(150);
    obj.button4:setFontColor("black");
    obj.button4:setMargins({left=8});
    obj.button4:setText("Adicionar Outros");
    obj.button4:setName("button4");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout5);
    obj.layout8:setAlign("top");
    obj.layout8:setHeight(20);
    obj.layout8:setMargins({left=6,right=6,top=0,bottom=0});
    obj.layout8:setName("layout8");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout8);
    obj.label12:setAlign("left");
    obj.label12:setWidth(80);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setText("Categoria");
    obj.label12:setName("label12");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout8);
    obj.label13:setAlign("left");
    obj.label13:setWidth(140);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setText("Nome");
    obj.label13:setName("label13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout8);
    obj.label14:setAlign("left");
    obj.label14:setWidth(55);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setText("B. CA");
    obj.label14:setHitTest(true);
    obj.label14:setHint("Bônus na Classe de Armadura");
    obj.label14:setName("label14");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout8);
    obj.label15:setAlign("left");
    obj.label15:setWidth(70);
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setText("B. M. Dex");
    obj.label15:setHitTest(true);
    obj.label15:setHint("Bônus Máximo de Destreza");
    obj.label15:setName("label15");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout8);
    obj.label16:setAlign("left");
    obj.label16:setWidth(65);
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setText("Penal.");
    obj.label16:setHitTest(true);
    obj.label16:setHint("Penalidade de Armadura");
    obj.label16:setName("label16");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout8);
    obj.label17:setAlign("left");
    obj.label17:setWidth(40);
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("black");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setText("Peso");
    obj.label17:setHitTest(true);
    obj.label17:setHint("Peso em Kg");
    obj.label17:setName("label17");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout8);
    obj.label18:setAlign("left");
    obj.label18:setWidth(24);
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("black");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setText("");
    obj.label18:setName("label18");

    obj.rclDefesas = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclDefesas:setParent(obj.layout5);
    obj.rclDefesas:setName("rclDefesas");
    obj.rclDefesas:setField("listaDefesas");
    obj.rclDefesas:setTemplateForm("frmDefesaLinha");
    obj.rclDefesas:setAlign("client");
    obj.rclDefesas:setMargins({left=6,right=6,top=0,bottom=6});
    obj.rclDefesas:setSelectable(true);

    obj.colDir = gui.fromHandle(_obj_newObject("layout"));
    obj.colDir:setParent(obj.grid);
    obj.colDir:setName("colDir");
    obj.colDir:setAlign("client");
    obj.colDir:setMargins({left=6});

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.colDir);
    obj.layout9:setAlign("top");
    obj.layout9:setHeight(410);
    obj.layout9:setMargins({top=0,bottom=4});
    obj.layout9:setName("layout9");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout9);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("Gray");
    obj.rectangle6:setXradius(6);
    obj.rectangle6:setYradius(6);
    obj.rectangle6:setHitTest(false);
    obj.rectangle6:setName("rectangle6");

    obj.rcEquipCloseArea = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rcEquipCloseArea:setParent(obj.layout9);
    obj.rcEquipCloseArea:setName("rcEquipCloseArea");
    obj.rcEquipCloseArea:setAlign("client");
    obj.rcEquipCloseArea:setColor("Transparent");
    obj.rcEquipCloseArea:setHitTest(true);

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setAlign("client");
    obj.layout10:setMargins({left=6,right=6,top=6,bottom=6});
    obj.layout10:setHitTest(true);
    obj.layout10:setName("layout10");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout10);
    obj.layout11:setAlign("top");
    obj.layout11:setHeight(28);
    obj.layout11:setMargins({bottom=2});
    obj.layout11:setHitTest(false);
    obj.layout11:setName("layout11");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout11);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("Black");
    obj.rectangle7:setXradius(4);
    obj.rectangle7:setYradius(4);
    obj.rectangle7:setHitTest(false);
    obj.rectangle7:setName("rectangle7");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout11);
    obj.label19:setAlign("client");
    obj.label19:setFontSize(14);
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("white");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setText("EQUIPAMENTO");
    obj.label19:setHitTest(false);
    obj.label19:setName("label19");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout10);
    obj.layout12:setAlign("top");
    obj.layout12:setHeight(24);
    obj.layout12:setMargins({bottom=4});
    obj.layout12:setHitTest(true);
    obj.layout12:setName("layout12");

    obj.button5 = gui.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout12);
    obj.button5:setAlign("left");
    obj.button5:setWidth(190);
    obj.button5:setFontColor("black");
    obj.button5:setText("Adicionar Item");
    obj.button5:setName("button5");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout12);
    obj.label20:setAlign("left");
    obj.label20:setWidth(140);
    obj.label20:setMargins({left=8});
    obj.label20:setHitTest(false);
    obj.label20:setName("label20");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout10);
    obj.layout13:setAlign("top");
    obj.layout13:setHeight(185);
    obj.layout13:setHitTest(true);
    obj.layout13:setName("layout13");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout13);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(20);
    obj.layout14:setMargins({bottom=2});
    obj.layout14:setHitTest(false);
    obj.layout14:setName("layout14");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout14);
    obj.label21:setAlign("left");
    obj.label21:setWidth(296);
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontColor("black");
    obj.label21:setText("Nome");
    obj.label21:setHitTest(false);
    obj.label21:setName("label21");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout14);
    obj.label22:setAlign("left");
    obj.label22:setWidth(70);
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontColor("black");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setText("Valor");
    obj.label22:setHitTest(false);
    obj.label22:setName("label22");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout14);
    obj.label23:setAlign("left");
    obj.label23:setWidth(70);
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontColor("black");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setText("Peso");
    obj.label23:setHitTest(false);
    obj.label23:setName("label23");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout14);
    obj.label24:setAlign("left");
    obj.label24:setWidth(26);
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontColor("black");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setText("");
    obj.label24:setHitTest(false);
    obj.label24:setName("label24");

    obj.rclEquip = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclEquip:setParent(obj.layout13);
    obj.rclEquip:setName("rclEquip");
    obj.rclEquip:setField("listaEquipamentos");
    obj.rclEquip:setTemplateForm("frmEquipLinha");
    obj.rclEquip:setAlign("client");
    obj.rclEquip:setSelectable(true);

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout10);
    obj.layout15:setAlign("client");
    obj.layout15:setMargins({top=6});
    obj.layout15:setHitTest(true);
    obj.layout15:setName("layout15");

    obj.boxEquipDetalhes = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxEquipDetalhes:setParent(obj.layout15);
    obj.boxEquipDetalhes:setName("boxEquipDetalhes");
    obj.boxEquipDetalhes:setVisible(false);
    obj.boxEquipDetalhes:setAlign("client");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.boxEquipDetalhes);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("LightGray");
    obj.rectangle8:setXradius(6);
    obj.rectangle8:setYradius(6);
    obj.rectangle8:setPadding({left=6,right=6,top=6,bottom=6});
    obj.rectangle8:setName("rectangle8");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle8);
    obj.layout16:setAlign("top");
    obj.layout16:setHeight(26);
    obj.layout16:setMargins({bottom=6});
    obj.layout16:setHitTest(true);
    obj.layout16:setName("layout16");

    obj.lblEquipTitulo = gui.fromHandle(_obj_newObject("label"));
    obj.lblEquipTitulo:setParent(obj.layout16);
    obj.lblEquipTitulo:setName("lblEquipTitulo");
    obj.lblEquipTitulo:setAlign("client");
    lfm_setPropAsString(obj.lblEquipTitulo, "fontStyle",  "bold");
    obj.lblEquipTitulo:setFontColor("black");
    obj.lblEquipTitulo:setHorzTextAlign("center");
    obj.lblEquipTitulo:setText("Detalhes do Item");
    obj.lblEquipTitulo:setHitTest(false);

    obj.button6 = gui.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout16);
    obj.button6:setAlign("right");
    obj.button6:setWidth(90);
    obj.button6:setFontColor("black");
    obj.button6:setText("Fechar");
    obj.button6:setName("button6");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle8);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setFontColor("black");
    obj.textEditor1:setField("descricao");
    obj.textEditor1:setName("textEditor1");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle8);
    obj.dataLink1:setFields({'nome'});
    obj.dataLink1:setName("dataLink1");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.colDir);
    obj.layout17:setAlign("client");
    obj.layout17:setMargins({left=6,right=6,top=0,bottom=6});
    obj.layout17:setName("layout17");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout17);
    obj.layout18:setAlign("top");
    obj.layout18:setHeight(120);
    obj.layout18:setName("layout18");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout18);
    obj.layout19:setAlign("left");
    obj.layout19:setWidth(240);
    obj.layout19:setName("layout19");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout19);
    obj.label25:setAlign("top");
    obj.label25:setHeight(18);
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontColor("black");
    obj.label25:setText("Carga (regra automática)");
    obj.label25:setName("label25");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout19);
    obj.layout20:setAlign("top");
    obj.layout20:setHeight(24);
    obj.layout20:setName("layout20");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout20);
    obj.label26:setAlign("left");
    obj.label26:setWidth(120);
    obj.label26:setFontColor("black");
    obj.label26:setText("Peso total:");
    obj.label26:setName("label26");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout20);
    obj.edit1:setAlign("client");
    obj.edit1:setField("pesototal");
    obj.edit1:setFontColor("black");
    obj.edit1:setType("float");
    obj.edit1:setDecimalPlaces(3);
    obj.edit1:setMin(0);
    obj.edit1:setMax(999999);
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setCanFocus(false);
    obj.edit1:setName("edit1");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout19);
    obj.layout21:setAlign("top");
    obj.layout21:setHeight(24);
    obj.layout21:setName("layout21");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout21);
    obj.label27:setAlign("left");
    obj.label27:setWidth(120);
    obj.label27:setFontColor("black");
    obj.label27:setText("Sem penalidade:");
    obj.label27:setName("label27");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout21);
    obj.edit2:setAlign("client");
    obj.edit2:setField("cargaSemPenal");
    obj.edit2:setFontColor("black");
    obj.edit2:setType("float");
    obj.edit2:setMin(0);
    obj.edit2:setMax(999999);
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setCanFocus(false);
    obj.edit2:setName("edit2");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout19);
    obj.layout22:setAlign("top");
    obj.layout22:setHeight(24);
    obj.layout22:setName("layout22");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout22);
    obj.label28:setAlign("left");
    obj.label28:setWidth(120);
    obj.label28:setFontColor("black");
    obj.label28:setText("Máximo:");
    obj.label28:setName("label28");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout22);
    obj.edit3:setAlign("client");
    obj.edit3:setField("cargaMaxima");
    obj.edit3:setFontColor("black");
    obj.edit3:setType("float");
    obj.edit3:setMin(0);
    obj.edit3:setMax(999999);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setCanFocus(false);
    obj.edit3:setName("edit3");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout19);
    obj.layout23:setAlign("top");
    obj.layout23:setHeight(24);
    obj.layout23:setName("layout23");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout23);
    obj.label29:setAlign("left");
    obj.label29:setWidth(120);
    obj.label29:setFontColor("black");
    obj.label29:setText("Status:");
    obj.label29:setName("label29");

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout23);
    obj.layout24:setAlign("client");
    obj.layout24:setName("layout24");

    obj.edtCargaStatus = gui.fromHandle(_obj_newObject("edit"));
    obj.edtCargaStatus:setParent(obj.layout24);
    obj.edtCargaStatus:setName("edtCargaStatus");
    obj.edtCargaStatus:setAlign("client");
    obj.edtCargaStatus:setField("cargaStatus");
    obj.edtCargaStatus:setFontColor("black");
    obj.edtCargaStatus:setCanFocus(false);
    obj.edtCargaStatus:setHorzTextAlign("center");

    obj.btnHintCargaStatus = gui.fromHandle(_obj_newObject("button"));
    obj.btnHintCargaStatus:setParent(obj.layout24);
    obj.btnHintCargaStatus:setName("btnHintCargaStatus");
    obj.btnHintCargaStatus:setAlign("client");
    obj.btnHintCargaStatus:setOpacity(0.0);
    obj.btnHintCargaStatus:setCanFocus(false);
    obj.btnHintCargaStatus:setCursor("help");
    obj.btnHintCargaStatus:setHint("");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout18);
    obj.layout25:setAlign("client");
    obj.layout25:setMargins({left=10});
    obj.layout25:setName("layout25");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout25);
    obj.label30:setAlign("top");
    obj.label30:setHeight(18);
    obj.label30:setFontColor("black");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setText("Dinheiro");
    obj.label30:setName("label30");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout25);
    obj.layout26:setAlign("top");
    obj.layout26:setHeight(24);
    obj.layout26:setName("layout26");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout26);
    obj.label31:setAlign("left");
    obj.label31:setWidth(90);
    obj.label31:setFontColor("black");
    obj.label31:setText("T$ (Cobre)");
    obj.label31:setName("label31");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout26);
    obj.edit4:setAlign("client");
    obj.edit4:setField("totalCobre");
    obj.edit4:setFontColor("black");
    obj.edit4:setType("number");
    obj.edit4:setMin(0);
    obj.edit4:setMax(999999);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout25);
    obj.layout27:setAlign("top");
    obj.layout27:setHeight(24);
    obj.layout27:setName("layout27");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout27);
    obj.label32:setAlign("left");
    obj.label32:setWidth(90);
    obj.label32:setFontColor("black");
    obj.label32:setText("TP (Prata)");
    obj.label32:setName("label32");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout27);
    obj.edit5:setAlign("client");
    obj.edit5:setField("totalPrata");
    obj.edit5:setFontColor("black");
    obj.edit5:setType("number");
    obj.edit5:setMin(0);
    obj.edit5:setMax(999999);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout25);
    obj.layout28:setAlign("top");
    obj.layout28:setHeight(24);
    obj.layout28:setName("layout28");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout28);
    obj.label33:setAlign("left");
    obj.label33:setWidth(90);
    obj.label33:setFontColor("black");
    obj.label33:setText("TO (Ouro)");
    obj.label33:setName("label33");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout28);
    obj.edit6:setAlign("client");
    obj.edit6:setField("totalOuro");
    obj.edit6:setFontColor("black");
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(999999);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout25);
    obj.layout29:setAlign("top");
    obj.layout29:setHeight(24);
    obj.layout29:setName("layout29");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout29);
    obj.label34:setAlign("left");
    obj.label34:setWidth(90);
    obj.label34:setFontColor("black");
    obj.label34:setText("TL (Platina)");
    obj.label34:setName("label34");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout29);
    obj.edit7:setAlign("client");
    obj.edit7:setField("totalPlatina");
    obj.edit7:setFontColor("black");
    obj.edit7:setType("number");
    obj.edit7:setMin(0);
    obj.edit7:setMax(999999);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setName("edit7");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'__recalc03','forca','danoforca','pesototal','cargaSemPenal','cargaMaxima','listaArmas','listaDefesas','listaEquipamentos'});
    obj.dataLink2:setName("dataLink2");



			-- === util ===
			local function N(v, d)
				local n = tonumber(v)
				if n == nil then return d or 0 end
				return n
			end

			local function trim(s)
				s = tostring(s or "")
				s = s:gsub("^%s+",""):gsub("%s+$","")
				return s
			end

			local function rootOf(nodeOrSheet)
				if nodeOrSheet == nil then return nil end
				-- se já for sheet raiz, ok; se for node de lista, sobe
				local ok, r = pcall(function() return ndb.getRoot(nodeOrSheet) end)
				if ok and r ~= nil then return r end
				return nodeOrSheet
			end

			function TRPG_touchCA(itemNode)
				TRPG_recalcPenDefesas(itemNode)
				local r = rootOf(itemNode)
				if r == nil then return end
				r.__recalcCA = (tonumber(r.__recalcCA) or 0) + 1
			end

			function TRPG_touch03(nodeOrSheet)
				local r = rootOf(nodeOrSheet)
				if r == nil then return end
				r.__recalc03 = (tonumber(r.__recalc03) or 0) + 1
			end

			-- === armas / defesas ===
			function TRPG_addArma(ctrl, sh)
				local rl = ctrl and ctrl:findControlByName("rclArmas") or nil
				if rl ~= nil then
					rl:append()
					TRPG_touch03(sh)
				end
			end

			function TRPG_addDefesa(ctrl, sh, categoria)
				local rl = ctrl and ctrl:findControlByName("rclDefesas") or nil
				if rl ~= nil then
					local n = rl:append()
					if n ~= nil then
						n.categoria = tostring(categoria or "")
					end
					TRPG_touch03(sh)
				end
			end

			-- === equipamento ===
			function TRPG_equipUpdateTitulo(ctrl)
				local box = ctrl and ctrl:findControlByName("boxEquipDetalhes") or nil
				local lbl = ctrl and ctrl:findControlByName("lblEquipTitulo") or nil

				if lbl == nil then return end

				local nome = ""
				if box ~= nil and box.node ~= nil then
					nome = trim(box.node.nome)
				end

				if nome == "" then
					lbl.text = "Detalhes do Item"
				else
					lbl.text = "Detalhes do Item: " .. nome
				end
			end

			function TRPG_equipClose(ctrl, sh)
				local box = ctrl and ctrl:findControlByName("boxEquipDetalhes") or nil
				local rl  = ctrl and ctrl:findControlByName("rclEquip") or nil
				local lbl = ctrl and ctrl:findControlByName("lblEquipTitulo") or nil

				if box ~= nil then
					box.visible = false
					box.node = nil
				end

				if rl ~= nil then
					rl.selectedNode = nil
				end

				if lbl ~= nil then
					lbl.text = "Detalhes do Item"
				end

				TRPG_touch03(sh)
			end

			function TRPG_equipOnSelect(ctrl, sh)
				local rl  = ctrl and ctrl:findControlByName("rclEquip") or nil
				local box = ctrl and ctrl:findControlByName("boxEquipDetalhes") or nil

				if rl == nil or box == nil then return end

				local node = rl.selectedNode
				box.node = node
				box.visible = (node ~= nil)

				TRPG_equipUpdateTitulo(ctrl)
			end

			function TRPG_equipAddItem(ctrl, sh)
				local rl  = ctrl and ctrl:findControlByName("rclEquip") or nil
				local box = ctrl and ctrl:findControlByName("boxEquipDetalhes") or nil

				if rl == nil or box == nil then return end

				local n = rl:append()
				if n ~= nil then
					n.nome = ""
					n.valor = ""
					n.peso = 0
					n.descricao = ""

					rl.selectedNode = n
					box.node = n
					box.visible = true

					TRPG_equipUpdateTitulo(ctrl)
					TRPG_touch03(sh)
				end
			end

			-- === carga (cálculo seguro e simples) ===
			local function sumPeso(listNode)
				local function N(v, d)
					if type(v) == "string" then
						v = v:gsub(",", ".")
						v = v:gsub("^%s+", ""):gsub("%s+$", "")
						if v == "" then return d or 0 end
					end

					local n = tonumber(v)
					if n == nil then return d or 0 end
					return n
				end

				if listNode == nil then return 0 end

				local ok, children = pcall(function()
					return ndb.getChildNodes(listNode)
				end)

				if not ok or children == nil then return 0 end

				local total = 0
				for _, item in ipairs(children) do
					total = total + N(item.peso, 0)
				end

				return total
			end

			function TRPG_calcCarga03(ctrl, sh)
				local sheet = rootOf(sh)
				if sheet == nil then return end

				-- peso total (armas + defesas + equipamentos)
				local total =
					sumPeso(sheet.listaArmas) +
					sumPeso(sheet.listaDefesas) +
					sumPeso(sheet.listaEquipamentos)

				total = math.floor(total * 1000 + 0.5) / 1000

				if N(sheet.pesototal, -1) ~= total then
					sheet.pesototal = total
				end

				-- ===== regra oficial: 3x FOR / 10x FOR (FOR efetiva) =====
				local forBase = N(sheet.forca, 10)
				local danoFor = N(sheet.danoforca, 0)
				local forEff  = forBase - danoFor
				if forEff < 0 then forEff = 0 end

				local semPenal = forEff * 3
				local maximo   = forEff * 10

				if N(sheet.cargaSemPenal, -1) ~= semPenal then
					sheet.cargaSemPenal = semPenal
				end

				if N(sheet.cargaMaxima, -1) ~= maximo then
					sheet.cargaMaxima = maximo
				end

				-- status + flags pra outras telas
				local status = "OK"
				local penal = 0
				local deslocPenal = 0

				if total > semPenal then
					status = "Pesada"
					penal = -2
					deslocPenal = 3
				end

				if total > maximo then
					status = "Excedido"
					penal = -2
					deslocPenal = 3
				end

				if tostring(sheet.cargaStatus or "") ~= status then
					sheet.cargaStatus = status
				end

				TRPG_updateHintCarga03(ctrl, sheet)

				-- esses campos você usa em outras telas (perícias)
				if N(sheet.cargaPenalidade, 999) ~= penal then
					sheet.cargaPenalidade = penal   -- 0 ou -2
				end

				sheet.cargaAfetada = (penal ~= 0)

				local penCargaPos = 0
				if penal < 0 then penCargaPos = -penal end

				if (tonumber(sheet.pencarga) or 0) ~= penCargaPos then
				sheet.pencarga = penCargaPos
				end
			end

			function TRPG_updateHintCarga03(ctrl, sh)
				local root = rootOf(sh)
				if root == nil then return end

				local btn = ctrl and ctrl:findControlByName("btnHintCargaStatus") or nil
				if btn == nil then return end

				local st = tostring(root.cargaStatus or "OK")

				if st == "OK" then
					btn.hint = "OK: você está dentro da carga normal (sem penalidades)."
				elseif st == "Pesada" then
					btn.hint = "Pesada: acima da carga normal. Pela regra, sofre -2 em Acrobacia/Atletismo/Furtividade/Ladinagem e deslocamento -3m."
				elseif st == "Excedida" then
					btn.hint = "Excedida: acima da carga máxima. Pela regra, você não deveria conseguir carregar tudo (além das penalidades)."
				else
					btn.hint = "Status de carga: " .. st
				end
			end

			-- ===== Penalidades automáticas vindas de listaDefesas (Tela 3) =====

			local function sumPenalidadeDefesas(root)
				if root == nil then return 0,0,0 end

				local arm, esc, out = 0, 0, 0
				local lista = root.listaDefesas
				if lista == nil then return 0,0,0 end

				local ok, children = pcall(function() return ndb.getChildNodes(lista) end)
				if not ok or children == nil then return 0,0,0 end

				for _, item in ipairs(children) do
					local cat = tostring(item.categoria or ""):lower()
					local pen = tonumber(item.penalidade) or 0

					-- como você disse que só existem esses 3 tipos:
					if cat == "armadura" then
						arm = arm + pen
					elseif cat == "escudo" or cat == "escudos" then
						esc = esc + pen
					elseif cat == "outros" or cat == "outro" then
						out = out + pen
					end
				end

				return arm, esc, out
			end

			-- Use isso quando mudar defesas / CA / peso
			function TRPG_recalcPenDefesas(sheetAny)
				local root = rootOf(sheetAny)
				if root == nil then return end

				local arm, esc, out = sumPenalidadeDefesas(root)

				if (tonumber(root.penarmadura) or 0) ~= arm then root.penarmadura = arm end
				if (tonumber(root.penescudo) or 0) ~= esc then root.penescudo = esc end
				if (tonumber(root.penoutros) or 0) ~= out then root.penoutros = out end
			end

		


    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (self)
            TRPG_recalcPenDefesas(sheet or self.sheet); TRPG_calcCarga03(self, sheet or self.sheet); TRPG_updateHintCarga03(self, sheet or self.sheet);
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (self)
            TRPG_addArma(self, sheet or self.sheet);
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (self)
            TRPG_addDefesa(self, sheet or self.sheet, "Armadura");
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (self)
            TRPG_addDefesa(self, sheet or self.sheet, "Escudo");
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (self)
            TRPG_addDefesa(self, sheet or self.sheet, "Outros");
        end, obj);

    obj._e_event5 = obj.rcEquipCloseArea:addEventListener("onClick",
        function (self)
            TRPG_equipClose(self, sheet or self.sheet);
        end, obj);

    obj._e_event6 = obj.button5:addEventListener("onClick",
        function (self)
            TRPG_equipAddItem(self, sheet or self.sheet);
        end, obj);

    obj._e_event7 = obj.rclEquip:addEventListener("onSelect",
        function (self)
            TRPG_equipOnSelect(self, sheet or self.sheet);
        end, obj);

    obj._e_event8 = obj.button6:addEventListener("onClick",
        function (self)
            TRPG_equipClose(self, sheet or self.sheet);
        end, obj);

    obj._e_event9 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            TRPG_equipUpdateTitulo(self);
        end, obj);

    obj._e_event10 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            TRPG_recalcPenDefesas(sheet or self.sheet); TRPG_calcCarga03(self, sheet or self.sheet);
        end, obj);

    function obj:_releaseEvents()
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

        if self.rcEquipCloseArea ~= nil then self.rcEquipCloseArea:destroy(); self.rcEquipCloseArea = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rclDefesas ~= nil then self.rclDefesas:destroy(); self.rclDefesas = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.colDir ~= nil then self.colDir:destroy(); self.colDir = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edtCargaStatus ~= nil then self.edtCargaStatus:destroy(); self.edtCargaStatus = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.colEsq ~= nil then self.colEsq:destroy(); self.colEsq = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.btnHintCargaStatus ~= nil then self.btnHintCargaStatus:destroy(); self.btnHintCargaStatus = nil; end;
        if self.rclArmas ~= nil then self.rclArmas:destroy(); self.rclArmas = nil; end;
        if self.grid ~= nil then self.grid:destroy(); self.grid = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rclEquip ~= nil then self.rclEquip:destroy(); self.rclEquip = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.boxEquipDetalhes ~= nil then self.boxEquipDetalhes:destroy(); self.boxEquipDetalhes = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.content ~= nil then self.content:destroy(); self.content = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.page ~= nil then self.page:destroy(); self.page = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.lblEquipTitulo ~= nil then self.lblEquipTitulo:destroy(); self.lblEquipTitulo = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
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
