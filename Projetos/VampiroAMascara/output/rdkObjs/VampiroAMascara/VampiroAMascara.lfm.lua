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
    obj.tab1:setTitle("Base");
    obj.tab1:setName("tab1");

    obj.VampiroAMascara1 = GUI.fromHandle(_obj_newObject("form"));
    obj.VampiroAMascara1:setParent(obj.tab1);
    obj.VampiroAMascara1:setName("VampiroAMascara1");
    obj.VampiroAMascara1:setAlign("client");
    obj.VampiroAMascara1:setTheme("dark");
    obj.VampiroAMascara1:setLockWhileNodeIsLoading(true);

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.VampiroAMascara1);
    obj.image1:setAlign("client");
    obj.image1:setField("backgrounding");
    obj.image1:setStyle("stretch");
    obj.image1:setName("image1");

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

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setTop(0);
    obj.image2:setLeft(300);
    obj.image2:setWidth(300);
    obj.image2:setHeight(250);
    obj.image2:setSRC("/VampiroAMascara/img/vampiro.png");
    obj.image2:setName("image2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(29);
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
    obj.layout4:setName("layout4");

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
    obj.tab2:setTitle("Verso");
    obj.tab2:setName("tab2");

    obj.VampiroAMascara2 = GUI.fromHandle(_obj_newObject("form"));
    obj.VampiroAMascara2:setParent(obj.tab2);
    obj.VampiroAMascara2:setName("VampiroAMascara2");
    obj.VampiroAMascara2:setAlign("client");
    obj.VampiroAMascara2:setTheme("dark");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.VampiroAMascara2);
    obj.image3:setAlign("client");
    obj.image3:setField("backgroundimg");
    obj.image3:setStyle("stretch");
    obj.image3:setSRC("");
    obj.image3:setName("image3");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.VampiroAMascara2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox2);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(0);
    obj.layout5:setWidth(880);
    obj.layout5:setHeight(30);
    obj.layout5:setName("layout5");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout5);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("gray");
    obj.rectangle4:setName("rectangle4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setLeft(8);
    obj.label5:setTop(5);
    obj.label5:setWidth(138);
    obj.label5:setHeight(20);
    obj.label5:setText("Histórico");
    obj.label5:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox2);
    obj.layout6:setLeft(10);
    obj.layout6:setTop(40);
    obj.layout6:setWidth(860);
    obj.layout6:setHeight(240);
    obj.layout6:setName("layout6");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout6);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(65);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setLeft(7);
    obj.label6:setWidth(80);
    obj.label6:setHeight(20);
    obj.label6:setText("Infância");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontSize(16);
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setTop(20);
    obj.textEditor1:setWidth(860);
    obj.textEditor1:setHeight(240);
    obj.textEditor1:setField("bginfancia");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox2);
    obj.layout7:setLeft(10);
    obj.layout7:setTop(290);
    obj.layout7:setWidth(860);
    obj.layout7:setHeight(240);
    obj.layout7:setName("layout7");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout7);
    obj.rectangle6:setLeft(5);
    obj.rectangle6:setTop(0);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(103);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout7);
    obj.label7:setLeft(7);
    obj.label7:setWidth(100);
    obj.label7:setHeight(20);
    obj.label7:setText("Adolescência");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontSize(16);
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout7);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(860);
    obj.textEditor2:setHeight(240);
    obj.textEditor2:setField("bgadolescencia");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox2);
    obj.layout8:setLeft(10);
    obj.layout8:setTop(540);
    obj.layout8:setWidth(860);
    obj.layout8:setHeight(240);
    obj.layout8:setName("layout8");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout8);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(90);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setLeft(7);
    obj.label8:setWidth(90);
    obj.label8:setHeight(20);
    obj.label8:setText("Fase adulta");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontSize(16);
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout8);
    obj.textEditor3:setTop(20);
    obj.textEditor3:setWidth(860);
    obj.textEditor3:setHeight(240);
    obj.textEditor3:setField("bgadulta");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

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

        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.pvtotais ~= nil then self.pvtotais:destroy(); self.pvtotais = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.VampiroAMascara2 ~= nil then self.VampiroAMascara2:destroy(); self.VampiroAMascara2 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.pvatuais ~= nil then self.pvatuais:destroy(); self.pvatuais = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.frmCodigo1 ~= nil then self.frmCodigo1:destroy(); self.frmCodigo1 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.fdvatuais ~= nil then self.fdvatuais:destroy(); self.fdvatuais = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.fdvtotais ~= nil then self.fdvtotais:destroy(); self.fdvtotais = nil; end;
        if self.VampiroAMascara1 ~= nil then self.VampiroAMascara1:destroy(); self.VampiroAMascara1 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
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
