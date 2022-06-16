require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPokeRPGT3_svg()
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
    obj:setName("frmPokeRPGT3_svg");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(952);
    obj.rectangle1:setHeight(1347);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(952);
    obj.image1:setHeight(1347);
    obj.image1:setSRC("/PokeRPGT/images/3.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(85);
    obj.button1:setTop(290);
    obj.button1:setWidth(29);
    obj.button1:setHeight(29);
    obj.button1:setName("button1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.button1);
    obj.dataLink1:setField("Check_BoxK_0");
    obj.dataLink1:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink1:setName("dataLink1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.button1);
    obj.image2:setAlign("client");
    obj.image2:setField("Check_BoxK_0");
    obj.image2:setName("image2");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setLeft(185);
    obj.button2:setTop(290);
    obj.button2:setWidth(29);
    obj.button2:setHeight(29);
    obj.button2:setName("button2");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.button2);
    obj.dataLink2:setField("Check_BoxK_1");
    obj.dataLink2:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink2:setName("dataLink2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.button2);
    obj.image3:setAlign("client");
    obj.image3:setField("Check_BoxK_1");
    obj.image3:setName("image3");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle1);
    obj.button3:setLeft(290);
    obj.button3:setTop(290);
    obj.button3:setWidth(29);
    obj.button3:setHeight(29);
    obj.button3:setName("button3");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.button3);
    obj.dataLink3:setField("Check_BoxK_2");
    obj.dataLink3:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink3:setName("dataLink3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.button3);
    obj.image4:setAlign("client");
    obj.image4:setField("Check_BoxK_2");
    obj.image4:setName("image4");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle1);
    obj.button4:setLeft(402);
    obj.button4:setTop(290);
    obj.button4:setWidth(29);
    obj.button4:setHeight(29);
    obj.button4:setName("button4");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.button4);
    obj.dataLink4:setField("Check_BoxK_3");
    obj.dataLink4:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink4:setName("dataLink4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.button4);
    obj.image5:setAlign("client");
    obj.image5:setField("Check_BoxK_3");
    obj.image5:setName("image5");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setLeft(505);
    obj.button5:setTop(290);
    obj.button5:setWidth(29);
    obj.button5:setHeight(29);
    obj.button5:setName("button5");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.button5);
    obj.dataLink5:setField("Check_BoxK_4");
    obj.dataLink5:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink5:setName("dataLink5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.button5);
    obj.image6:setAlign("client");
    obj.image6:setField("Check_BoxK_4");
    obj.image6:setName("image6");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setLeft(615);
    obj.button6:setTop(290);
    obj.button6:setWidth(29);
    obj.button6:setHeight(29);
    obj.button6:setName("button6");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.button6);
    obj.dataLink6:setField("Check_BoxK_5");
    obj.dataLink6:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink6:setName("dataLink6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.button6);
    obj.image7:setAlign("client");
    obj.image7:setField("Check_BoxK_5");
    obj.image7:setName("image7");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setLeft(715);
    obj.button7:setTop(290);
    obj.button7:setWidth(29);
    obj.button7:setHeight(29);
    obj.button7:setName("button7");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.button7);
    obj.dataLink7:setField("Check_BoxK_6");
    obj.dataLink7:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink7:setName("dataLink7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.button7);
    obj.image8:setAlign("client");
    obj.image8:setField("Check_BoxK_6");
    obj.image8:setName("image8");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle1);
    obj.button8:setLeft(807);
    obj.button8:setTop(290);
    obj.button8:setWidth(29);
    obj.button8:setHeight(29);
    obj.button8:setName("button8");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.button8);
    obj.dataLink8:setField("Check_BoxK_7");
    obj.dataLink8:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink8:setName("dataLink8");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.button8);
    obj.image9:setAlign("client");
    obj.image9:setField("Check_BoxK_7");
    obj.image9:setName("image9");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsK7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(898);
    obj.layout1:setTop(290);
    obj.layout1:setWidth(29);
    obj.layout1:setHeight(29);
    obj.layout1:setName("layout1");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout1);
    obj.imageCheckBox1:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox1:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox1:setWidth(29);
    obj.imageCheckBox1:setHeight(29);
    obj.imageCheckBox1:setField("Check_BoxK_8");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle1);
    obj.button9:setLeft(85);
    obj.button9:setTop(384);
    obj.button9:setWidth(29);
    obj.button9:setHeight(29);
    obj.button9:setName("button9");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.button9);
    obj.dataLink9:setField("Check_BoxJ_0");
    obj.dataLink9:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink9:setName("dataLink9");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.button9);
    obj.image10:setAlign("client");
    obj.image10:setField("Check_BoxJ_0");
    obj.image10:setName("image10");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle1);
    obj.button10:setLeft(185);
    obj.button10:setTop(384);
    obj.button10:setWidth(29);
    obj.button10:setHeight(29);
    obj.button10:setName("button10");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.button10);
    obj.dataLink10:setField("Check_BoxJ_1");
    obj.dataLink10:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink10:setName("dataLink10");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.button10);
    obj.image11:setAlign("client");
    obj.image11:setField("Check_BoxJ_1");
    obj.image11:setName("image11");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle1);
    obj.button11:setLeft(290);
    obj.button11:setTop(384);
    obj.button11:setWidth(29);
    obj.button11:setHeight(29);
    obj.button11:setName("button11");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.button11);
    obj.dataLink11:setField("Check_BoxJ_2");
    obj.dataLink11:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink11:setName("dataLink11");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.button11);
    obj.image12:setAlign("client");
    obj.image12:setField("Check_BoxJ_2");
    obj.image12:setName("image12");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle1);
    obj.button12:setLeft(402);
    obj.button12:setTop(384);
    obj.button12:setWidth(29);
    obj.button12:setHeight(29);
    obj.button12:setName("button12");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.button12);
    obj.dataLink12:setField("Check_BoxJ_3");
    obj.dataLink12:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink12:setName("dataLink12");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.button12);
    obj.image13:setAlign("client");
    obj.image13:setField("Check_BoxJ_3");
    obj.image13:setName("image13");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle1);
    obj.button13:setLeft(505);
    obj.button13:setTop(384);
    obj.button13:setWidth(29);
    obj.button13:setHeight(29);
    obj.button13:setName("button13");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.button13);
    obj.dataLink13:setField("Check_BoxJ_4");
    obj.dataLink13:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink13:setName("dataLink13");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.button13);
    obj.image14:setAlign("client");
    obj.image14:setField("Check_BoxJ_4");
    obj.image14:setName("image14");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle1);
    obj.button14:setLeft(615);
    obj.button14:setTop(384);
    obj.button14:setWidth(29);
    obj.button14:setHeight(29);
    obj.button14:setName("button14");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.button14);
    obj.dataLink14:setField("Check_BoxJ_5");
    obj.dataLink14:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink14:setName("dataLink14");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.button14);
    obj.image15:setAlign("client");
    obj.image15:setField("Check_BoxJ_5");
    obj.image15:setName("image15");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle1);
    obj.button15:setLeft(715);
    obj.button15:setTop(384);
    obj.button15:setWidth(29);
    obj.button15:setHeight(29);
    obj.button15:setName("button15");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.button15);
    obj.dataLink15:setField("Check_BoxJ_6");
    obj.dataLink15:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink15:setName("dataLink15");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.button15);
    obj.image16:setAlign("client");
    obj.image16:setField("Check_BoxJ_6");
    obj.image16:setName("image16");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle1);
    obj.button16:setLeft(807);
    obj.button16:setTop(384);
    obj.button16:setWidth(29);
    obj.button16:setHeight(29);
    obj.button16:setName("button16");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.button16);
    obj.dataLink16:setField("Check_BoxJ_7");
    obj.dataLink16:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink16:setName("dataLink16");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.button16);
    obj.image17:setAlign("client");
    obj.image17:setField("Check_BoxJ_7");
    obj.image17:setName("image17");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsJ7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(898);
    obj.layout2:setTop(384);
    obj.layout2:setWidth(29);
    obj.layout2:setHeight(29);
    obj.layout2:setName("layout2");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout2);
    obj.imageCheckBox2:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox2:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox2:setWidth(29);
    obj.imageCheckBox2:setHeight(29);
    obj.imageCheckBox2:setField("Check_BoxJ_8");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle1);
    obj.button17:setLeft(85);
    obj.button17:setTop(474);
    obj.button17:setWidth(29);
    obj.button17:setHeight(29);
    obj.button17:setName("button17");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.button17);
    obj.dataLink17:setField("Check_BoxH_0");
    obj.dataLink17:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink17:setName("dataLink17");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.button17);
    obj.image18:setAlign("client");
    obj.image18:setField("Check_BoxH_0");
    obj.image18:setName("image18");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle1);
    obj.button18:setLeft(185);
    obj.button18:setTop(474);
    obj.button18:setWidth(29);
    obj.button18:setHeight(29);
    obj.button18:setName("button18");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.button18);
    obj.dataLink18:setField("Check_BoxH_1");
    obj.dataLink18:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink18:setName("dataLink18");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.button18);
    obj.image19:setAlign("client");
    obj.image19:setField("Check_BoxH_1");
    obj.image19:setName("image19");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle1);
    obj.button19:setLeft(290);
    obj.button19:setTop(474);
    obj.button19:setWidth(29);
    obj.button19:setHeight(29);
    obj.button19:setName("button19");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.button19);
    obj.dataLink19:setField("Check_BoxH_2");
    obj.dataLink19:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink19:setName("dataLink19");

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.button19);
    obj.image20:setAlign("client");
    obj.image20:setField("Check_BoxH_2");
    obj.image20:setName("image20");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle1);
    obj.button20:setLeft(402);
    obj.button20:setTop(474);
    obj.button20:setWidth(29);
    obj.button20:setHeight(29);
    obj.button20:setName("button20");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.button20);
    obj.dataLink20:setField("Check_BoxH_3");
    obj.dataLink20:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink20:setName("dataLink20");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.button20);
    obj.image21:setAlign("client");
    obj.image21:setField("Check_BoxH_3");
    obj.image21:setName("image21");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.rectangle1);
    obj.button21:setLeft(505);
    obj.button21:setTop(474);
    obj.button21:setWidth(29);
    obj.button21:setHeight(29);
    obj.button21:setName("button21");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.button21);
    obj.dataLink21:setField("Check_BoxH_4");
    obj.dataLink21:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink21:setName("dataLink21");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.button21);
    obj.image22:setAlign("client");
    obj.image22:setField("Check_BoxH_4");
    obj.image22:setName("image22");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.rectangle1);
    obj.button22:setLeft(615);
    obj.button22:setTop(474);
    obj.button22:setWidth(29);
    obj.button22:setHeight(29);
    obj.button22:setName("button22");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.button22);
    obj.dataLink22:setField("Check_BoxH_5");
    obj.dataLink22:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink22:setName("dataLink22");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.button22);
    obj.image23:setAlign("client");
    obj.image23:setField("Check_BoxH_5");
    obj.image23:setName("image23");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.rectangle1);
    obj.button23:setLeft(715);
    obj.button23:setTop(474);
    obj.button23:setWidth(29);
    obj.button23:setHeight(29);
    obj.button23:setName("button23");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.button23);
    obj.dataLink23:setField("Check_BoxH_6");
    obj.dataLink23:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink23:setName("dataLink23");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.button23);
    obj.image24:setAlign("client");
    obj.image24:setField("Check_BoxH_6");
    obj.image24:setName("image24");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.rectangle1);
    obj.button24:setLeft(807);
    obj.button24:setTop(474);
    obj.button24:setWidth(29);
    obj.button24:setHeight(29);
    obj.button24:setName("button24");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.button24);
    obj.dataLink24:setField("Check_BoxH_7");
    obj.dataLink24:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink24:setName("dataLink24");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.button24);
    obj.image25:setAlign("client");
    obj.image25:setField("Check_BoxH_7");
    obj.image25:setName("image25");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsH7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(898);
    obj.layout3:setTop(474);
    obj.layout3:setWidth(29);
    obj.layout3:setHeight(29);
    obj.layout3:setName("layout3");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout3);
    obj.imageCheckBox3:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox3:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox3:setWidth(29);
    obj.imageCheckBox3:setHeight(29);
    obj.imageCheckBox3:setField("Check_BoxH_8");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.rectangle1);
    obj.button25:setLeft(85);
    obj.button25:setTop(565);
    obj.button25:setWidth(29);
    obj.button25:setHeight(29);
    obj.button25:setName("button25");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.button25);
    obj.dataLink25:setField("Check_BoxS_0");
    obj.dataLink25:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink25:setName("dataLink25");

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.button25);
    obj.image26:setAlign("client");
    obj.image26:setField("Check_BoxS_0");
    obj.image26:setName("image26");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.rectangle1);
    obj.button26:setLeft(185);
    obj.button26:setTop(565);
    obj.button26:setWidth(29);
    obj.button26:setHeight(29);
    obj.button26:setName("button26");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.button26);
    obj.dataLink26:setField("Check_BoxS_1");
    obj.dataLink26:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink26:setName("dataLink26");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.button26);
    obj.image27:setAlign("client");
    obj.image27:setField("Check_BoxS_1");
    obj.image27:setName("image27");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.rectangle1);
    obj.button27:setLeft(290);
    obj.button27:setTop(565);
    obj.button27:setWidth(29);
    obj.button27:setHeight(29);
    obj.button27:setName("button27");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.button27);
    obj.dataLink27:setField("Check_BoxS_2");
    obj.dataLink27:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink27:setName("dataLink27");

    obj.image28 = GUI.fromHandle(_obj_newObject("image"));
    obj.image28:setParent(obj.button27);
    obj.image28:setAlign("client");
    obj.image28:setField("Check_BoxS_2");
    obj.image28:setName("image28");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.rectangle1);
    obj.button28:setLeft(402);
    obj.button28:setTop(565);
    obj.button28:setWidth(29);
    obj.button28:setHeight(29);
    obj.button28:setName("button28");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.button28);
    obj.dataLink28:setField("Check_BoxS_3");
    obj.dataLink28:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink28:setName("dataLink28");

    obj.image29 = GUI.fromHandle(_obj_newObject("image"));
    obj.image29:setParent(obj.button28);
    obj.image29:setAlign("client");
    obj.image29:setField("Check_BoxS_3");
    obj.image29:setName("image29");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.rectangle1);
    obj.button29:setLeft(505);
    obj.button29:setTop(565);
    obj.button29:setWidth(29);
    obj.button29:setHeight(29);
    obj.button29:setName("button29");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.button29);
    obj.dataLink29:setField("Check_BoxS_4");
    obj.dataLink29:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink29:setName("dataLink29");

    obj.image30 = GUI.fromHandle(_obj_newObject("image"));
    obj.image30:setParent(obj.button29);
    obj.image30:setAlign("client");
    obj.image30:setField("Check_BoxS_4");
    obj.image30:setName("image30");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.rectangle1);
    obj.button30:setLeft(615);
    obj.button30:setTop(565);
    obj.button30:setWidth(29);
    obj.button30:setHeight(29);
    obj.button30:setName("button30");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.button30);
    obj.dataLink30:setField("Check_BoxS_5");
    obj.dataLink30:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink30:setName("dataLink30");

    obj.image31 = GUI.fromHandle(_obj_newObject("image"));
    obj.image31:setParent(obj.button30);
    obj.image31:setAlign("client");
    obj.image31:setField("Check_BoxS_5");
    obj.image31:setName("image31");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.rectangle1);
    obj.button31:setLeft(715);
    obj.button31:setTop(565);
    obj.button31:setWidth(29);
    obj.button31:setHeight(29);
    obj.button31:setName("button31");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.button31);
    obj.dataLink31:setField("Check_BoxS_6");
    obj.dataLink31:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink31:setName("dataLink31");

    obj.image32 = GUI.fromHandle(_obj_newObject("image"));
    obj.image32:setParent(obj.button31);
    obj.image32:setAlign("client");
    obj.image32:setField("Check_BoxS_6");
    obj.image32:setName("image32");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.rectangle1);
    obj.button32:setLeft(807);
    obj.button32:setTop(565);
    obj.button32:setWidth(29);
    obj.button32:setHeight(29);
    obj.button32:setName("button32");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.button32);
    obj.dataLink32:setField("Check_BoxS_7");
    obj.dataLink32:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink32:setName("dataLink32");

    obj.image33 = GUI.fromHandle(_obj_newObject("image"));
    obj.image33:setParent(obj.button32);
    obj.image33:setAlign("client");
    obj.image33:setField("Check_BoxS_7");
    obj.image33:setName("image33");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsS7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(898);
    obj.layout4:setTop(565);
    obj.layout4:setWidth(29);
    obj.layout4:setHeight(29);
    obj.layout4:setName("layout4");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout4);
    obj.imageCheckBox4:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox4:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox4:setWidth(29);
    obj.imageCheckBox4:setHeight(29);
    obj.imageCheckBox4:setField("Check_BoxS_8");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.rectangle1);
    obj.button33:setLeft(85);
    obj.button33:setTop(661);
    obj.button33:setWidth(29);
    obj.button33:setHeight(29);
    obj.button33:setName("button33");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.button33);
    obj.dataLink33:setField("Check_BoxU_0");
    obj.dataLink33:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink33:setName("dataLink33");

    obj.image34 = GUI.fromHandle(_obj_newObject("image"));
    obj.image34:setParent(obj.button33);
    obj.image34:setAlign("client");
    obj.image34:setField("Check_BoxU_0");
    obj.image34:setName("image34");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.rectangle1);
    obj.button34:setLeft(185);
    obj.button34:setTop(661);
    obj.button34:setWidth(29);
    obj.button34:setHeight(29);
    obj.button34:setName("button34");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.button34);
    obj.dataLink34:setField("Check_BoxU_1");
    obj.dataLink34:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink34:setName("dataLink34");

    obj.image35 = GUI.fromHandle(_obj_newObject("image"));
    obj.image35:setParent(obj.button34);
    obj.image35:setAlign("client");
    obj.image35:setField("Check_BoxU_1");
    obj.image35:setName("image35");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.rectangle1);
    obj.button35:setLeft(290);
    obj.button35:setTop(661);
    obj.button35:setWidth(29);
    obj.button35:setHeight(29);
    obj.button35:setName("button35");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.button35);
    obj.dataLink35:setField("Check_BoxU_2");
    obj.dataLink35:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink35:setName("dataLink35");

    obj.image36 = GUI.fromHandle(_obj_newObject("image"));
    obj.image36:setParent(obj.button35);
    obj.image36:setAlign("client");
    obj.image36:setField("Check_BoxU_2");
    obj.image36:setName("image36");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.rectangle1);
    obj.button36:setLeft(402);
    obj.button36:setTop(661);
    obj.button36:setWidth(29);
    obj.button36:setHeight(29);
    obj.button36:setName("button36");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.button36);
    obj.dataLink36:setField("Check_BoxU_3");
    obj.dataLink36:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink36:setName("dataLink36");

    obj.image37 = GUI.fromHandle(_obj_newObject("image"));
    obj.image37:setParent(obj.button36);
    obj.image37:setAlign("client");
    obj.image37:setField("Check_BoxU_3");
    obj.image37:setName("image37");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.rectangle1);
    obj.button37:setLeft(505);
    obj.button37:setTop(661);
    obj.button37:setWidth(29);
    obj.button37:setHeight(29);
    obj.button37:setName("button37");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.button37);
    obj.dataLink37:setField("Check_BoxU_4");
    obj.dataLink37:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink37:setName("dataLink37");

    obj.image38 = GUI.fromHandle(_obj_newObject("image"));
    obj.image38:setParent(obj.button37);
    obj.image38:setAlign("client");
    obj.image38:setField("Check_BoxU_4");
    obj.image38:setName("image38");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button38 = GUI.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.rectangle1);
    obj.button38:setLeft(615);
    obj.button38:setTop(661);
    obj.button38:setWidth(29);
    obj.button38:setHeight(29);
    obj.button38:setName("button38");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.button38);
    obj.dataLink38:setField("Check_BoxU_5");
    obj.dataLink38:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink38:setName("dataLink38");

    obj.image39 = GUI.fromHandle(_obj_newObject("image"));
    obj.image39:setParent(obj.button38);
    obj.image39:setAlign("client");
    obj.image39:setField("Check_BoxU_5");
    obj.image39:setName("image39");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button39 = GUI.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.rectangle1);
    obj.button39:setLeft(715);
    obj.button39:setTop(661);
    obj.button39:setWidth(29);
    obj.button39:setHeight(29);
    obj.button39:setName("button39");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.button39);
    obj.dataLink39:setField("Check_BoxU_6");
    obj.dataLink39:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink39:setName("dataLink39");

    obj.image40 = GUI.fromHandle(_obj_newObject("image"));
    obj.image40:setParent(obj.button39);
    obj.image40:setAlign("client");
    obj.image40:setField("Check_BoxU_6");
    obj.image40:setName("image40");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button40 = GUI.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.rectangle1);
    obj.button40:setLeft(807);
    obj.button40:setTop(661);
    obj.button40:setWidth(29);
    obj.button40:setHeight(29);
    obj.button40:setName("button40");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.button40);
    obj.dataLink40:setField("Check_BoxU_7");
    obj.dataLink40:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink40:setName("dataLink40");

    obj.image41 = GUI.fromHandle(_obj_newObject("image"));
    obj.image41:setParent(obj.button40);
    obj.image41:setAlign("client");
    obj.image41:setField("Check_BoxU_7");
    obj.image41:setName("image41");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsU7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(898);
    obj.layout5:setTop(661);
    obj.layout5:setWidth(29);
    obj.layout5:setHeight(29);
    obj.layout5:setName("layout5");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout5);
    obj.imageCheckBox5:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox5:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox5:setWidth(29);
    obj.imageCheckBox5:setHeight(29);
    obj.imageCheckBox5:setField("Check_BoxU_8");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.button41 = GUI.fromHandle(_obj_newObject("button"));
    obj.button41:setParent(obj.rectangle1);
    obj.button41:setLeft(85);
    obj.button41:setTop(755);
    obj.button41:setWidth(29);
    obj.button41:setHeight(29);
    obj.button41:setName("button41");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.button41);
    obj.dataLink41:setField("Check_BoxKL_0");
    obj.dataLink41:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink41:setName("dataLink41");

    obj.image42 = GUI.fromHandle(_obj_newObject("image"));
    obj.image42:setParent(obj.button41);
    obj.image42:setAlign("client");
    obj.image42:setField("Check_BoxKL_0");
    obj.image42:setName("image42");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button42 = GUI.fromHandle(_obj_newObject("button"));
    obj.button42:setParent(obj.rectangle1);
    obj.button42:setLeft(185);
    obj.button42:setTop(755);
    obj.button42:setWidth(29);
    obj.button42:setHeight(29);
    obj.button42:setName("button42");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.button42);
    obj.dataLink42:setField("Check_BoxKL_1");
    obj.dataLink42:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink42:setName("dataLink42");

    obj.image43 = GUI.fromHandle(_obj_newObject("image"));
    obj.image43:setParent(obj.button42);
    obj.image43:setAlign("client");
    obj.image43:setField("Check_BoxKL_1");
    obj.image43:setName("image43");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button43 = GUI.fromHandle(_obj_newObject("button"));
    obj.button43:setParent(obj.rectangle1);
    obj.button43:setLeft(290);
    obj.button43:setTop(755);
    obj.button43:setWidth(29);
    obj.button43:setHeight(29);
    obj.button43:setName("button43");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.button43);
    obj.dataLink43:setField("Check_BoxKL_2");
    obj.dataLink43:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink43:setName("dataLink43");

    obj.image44 = GUI.fromHandle(_obj_newObject("image"));
    obj.image44:setParent(obj.button43);
    obj.image44:setAlign("client");
    obj.image44:setField("Check_BoxKL_2");
    obj.image44:setName("image44");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button44 = GUI.fromHandle(_obj_newObject("button"));
    obj.button44:setParent(obj.rectangle1);
    obj.button44:setLeft(402);
    obj.button44:setTop(755);
    obj.button44:setWidth(29);
    obj.button44:setHeight(29);
    obj.button44:setName("button44");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.button44);
    obj.dataLink44:setField("Check_BoxKL_3");
    obj.dataLink44:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink44:setName("dataLink44");

    obj.image45 = GUI.fromHandle(_obj_newObject("image"));
    obj.image45:setParent(obj.button44);
    obj.image45:setAlign("client");
    obj.image45:setField("Check_BoxKL_3");
    obj.image45:setName("image45");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button45 = GUI.fromHandle(_obj_newObject("button"));
    obj.button45:setParent(obj.rectangle1);
    obj.button45:setLeft(505);
    obj.button45:setTop(755);
    obj.button45:setWidth(29);
    obj.button45:setHeight(29);
    obj.button45:setName("button45");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.button45);
    obj.dataLink45:setField("Check_BoxKL_4");
    obj.dataLink45:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink45:setName("dataLink45");

    obj.image46 = GUI.fromHandle(_obj_newObject("image"));
    obj.image46:setParent(obj.button45);
    obj.image46:setAlign("client");
    obj.image46:setField("Check_BoxKL_4");
    obj.image46:setName("image46");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button46 = GUI.fromHandle(_obj_newObject("button"));
    obj.button46:setParent(obj.rectangle1);
    obj.button46:setLeft(615);
    obj.button46:setTop(755);
    obj.button46:setWidth(29);
    obj.button46:setHeight(29);
    obj.button46:setName("button46");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.button46);
    obj.dataLink46:setField("Check_BoxKL_5");
    obj.dataLink46:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink46:setName("dataLink46");

    obj.image47 = GUI.fromHandle(_obj_newObject("image"));
    obj.image47:setParent(obj.button46);
    obj.image47:setAlign("client");
    obj.image47:setField("Check_BoxKL_5");
    obj.image47:setName("image47");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button47 = GUI.fromHandle(_obj_newObject("button"));
    obj.button47:setParent(obj.rectangle1);
    obj.button47:setLeft(715);
    obj.button47:setTop(755);
    obj.button47:setWidth(29);
    obj.button47:setHeight(29);
    obj.button47:setName("button47");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.button47);
    obj.dataLink47:setField("Check_BoxKL_6");
    obj.dataLink47:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink47:setName("dataLink47");

    obj.image48 = GUI.fromHandle(_obj_newObject("image"));
    obj.image48:setParent(obj.button47);
    obj.image48:setAlign("client");
    obj.image48:setField("Check_BoxKL_6");
    obj.image48:setName("image48");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button48 = GUI.fromHandle(_obj_newObject("button"));
    obj.button48:setParent(obj.rectangle1);
    obj.button48:setLeft(807);
    obj.button48:setTop(755);
    obj.button48:setWidth(29);
    obj.button48:setHeight(29);
    obj.button48:setName("button48");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.button48);
    obj.dataLink48:setField("Check_BoxKL_7");
    obj.dataLink48:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink48:setName("dataLink48");

    obj.image49 = GUI.fromHandle(_obj_newObject("image"));
    obj.image49:setParent(obj.button48);
    obj.image49:setAlign("client");
    obj.image49:setField("Check_BoxKL_7");
    obj.image49:setName("image49");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsKL7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(898);
    obj.layout6:setTop(755);
    obj.layout6:setWidth(29);
    obj.layout6:setHeight(29);
    obj.layout6:setName("layout6");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout6);
    obj.imageCheckBox6:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox6:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox6:setWidth(29);
    obj.imageCheckBox6:setHeight(29);
    obj.imageCheckBox6:setField("Check_BoxKL_8");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.button49 = GUI.fromHandle(_obj_newObject("button"));
    obj.button49:setParent(obj.rectangle1);
    obj.button49:setLeft(85);
    obj.button49:setTop(842);
    obj.button49:setWidth(29);
    obj.button49:setHeight(29);
    obj.button49:setName("button49");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.button49);
    obj.dataLink49:setField("Check_BoxA_0");
    obj.dataLink49:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink49:setName("dataLink49");

    obj.image50 = GUI.fromHandle(_obj_newObject("image"));
    obj.image50:setParent(obj.button49);
    obj.image50:setAlign("client");
    obj.image50:setField("Check_BoxA_0");
    obj.image50:setName("image50");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA0 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(35);
    obj.layout7:setTop(1014);
    obj.layout7:setWidth(885);
    obj.layout7:setHeight(265);
    obj.layout7:setName("layout7");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout7);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setFontColor("#ffffff");
    obj.textEditor1:setWidth(885);
    obj.textEditor1:setHeight(265);
    obj.textEditor1:setField("ant3");
    obj.textEditor1:setName("textEditor1");

    obj.button50 = GUI.fromHandle(_obj_newObject("button"));
    obj.button50:setParent(obj.rectangle1);
    obj.button50:setLeft(185);
    obj.button50:setTop(842);
    obj.button50:setWidth(29);
    obj.button50:setHeight(29);
    obj.button50:setName("button50");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.button50);
    obj.dataLink50:setField("Check_BoxA_1");
    obj.dataLink50:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink50:setName("dataLink50");

    obj.image51 = GUI.fromHandle(_obj_newObject("image"));
    obj.image51:setParent(obj.button50);
    obj.image51:setAlign("client");
    obj.image51:setField("Check_BoxA_1");
    obj.image51:setName("image51");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button51 = GUI.fromHandle(_obj_newObject("button"));
    obj.button51:setParent(obj.rectangle1);
    obj.button51:setLeft(290);
    obj.button51:setTop(842);
    obj.button51:setWidth(29);
    obj.button51:setHeight(29);
    obj.button51:setName("button51");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.button51);
    obj.dataLink51:setField("Check_BoxA_2");
    obj.dataLink51:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink51:setName("dataLink51");

    obj.image52 = GUI.fromHandle(_obj_newObject("image"));
    obj.image52:setParent(obj.button51);
    obj.image52:setAlign("client");
    obj.image52:setField("Check_BoxA_2");
    obj.image52:setName("image52");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button52 = GUI.fromHandle(_obj_newObject("button"));
    obj.button52:setParent(obj.rectangle1);
    obj.button52:setLeft(402);
    obj.button52:setTop(842);
    obj.button52:setWidth(29);
    obj.button52:setHeight(29);
    obj.button52:setName("button52");

    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.button52);
    obj.dataLink52:setField("Check_BoxA_3");
    obj.dataLink52:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink52:setName("dataLink52");

    obj.image53 = GUI.fromHandle(_obj_newObject("image"));
    obj.image53:setParent(obj.button52);
    obj.image53:setAlign("client");
    obj.image53:setField("Check_BoxA_3");
    obj.image53:setName("image53");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button53 = GUI.fromHandle(_obj_newObject("button"));
    obj.button53:setParent(obj.rectangle1);
    obj.button53:setLeft(505);
    obj.button53:setTop(842);
    obj.button53:setWidth(29);
    obj.button53:setHeight(29);
    obj.button53:setName("button53");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.button53);
    obj.dataLink53:setField("Check_BoxA_4");
    obj.dataLink53:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink53:setName("dataLink53");

    obj.image54 = GUI.fromHandle(_obj_newObject("image"));
    obj.image54:setParent(obj.button53);
    obj.image54:setAlign("client");
    obj.image54:setField("Check_BoxA_4");
    obj.image54:setName("image54");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA4 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button54 = GUI.fromHandle(_obj_newObject("button"));
    obj.button54:setParent(obj.rectangle1);
    obj.button54:setLeft(615);
    obj.button54:setTop(842);
    obj.button54:setWidth(29);
    obj.button54:setHeight(29);
    obj.button54:setName("button54");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.button54);
    obj.dataLink54:setField("Check_BoxA_5");
    obj.dataLink54:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink54:setName("dataLink54");

    obj.image55 = GUI.fromHandle(_obj_newObject("image"));
    obj.image55:setParent(obj.button54);
    obj.image55:setAlign("client");
    obj.image55:setField("Check_BoxA_5");
    obj.image55:setName("image55");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA5 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button55 = GUI.fromHandle(_obj_newObject("button"));
    obj.button55:setParent(obj.rectangle1);
    obj.button55:setLeft(715);
    obj.button55:setTop(842);
    obj.button55:setWidth(29);
    obj.button55:setHeight(29);
    obj.button55:setName("button55");

    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.button55);
    obj.dataLink55:setField("Check_BoxA_6");
    obj.dataLink55:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink55:setName("dataLink55");

    obj.image56 = GUI.fromHandle(_obj_newObject("image"));
    obj.image56:setParent(obj.button55);
    obj.image56:setAlign("client");
    obj.image56:setField("Check_BoxA_6");
    obj.image56:setName("image56");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA6 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button56 = GUI.fromHandle(_obj_newObject("button"));
    obj.button56:setParent(obj.rectangle1);
    obj.button56:setLeft(807);
    obj.button56:setTop(842);
    obj.button56:setWidth(29);
    obj.button56:setHeight(29);
    obj.button56:setName("button56");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.button56);
    obj.dataLink56:setField("Check_BoxA_7");
    obj.dataLink56:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink56:setName("dataLink56");

    obj.image57 = GUI.fromHandle(_obj_newObject("image"));
    obj.image57:setParent(obj.button56);
    obj.image57:setAlign("client");
    obj.image57:setField("Check_BoxA_7");
    obj.image57:setName("image57");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsA7 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(898);
    obj.layout8:setTop(842);
    obj.layout8:setWidth(29);
    obj.layout8:setHeight(29);
    obj.layout8:setName("layout8");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout8);
    obj.imageCheckBox7:setImageChecked("PokeRPGT/images/masterball_on.png");
    obj.imageCheckBox7:setImageUnchecked("PokeRPGT/images/pokeball1_off.png");
    obj.imageCheckBox7:setWidth(29);
    obj.imageCheckBox7:setHeight(29);
    obj.imageCheckBox7:setField("Check_BoxA_8");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.button57 = GUI.fromHandle(_obj_newObject("button"));
    obj.button57:setParent(obj.rectangle1);
    obj.button57:setLeft(330);
    obj.button57:setTop(930);
    obj.button57:setWidth(29);
    obj.button57:setHeight(29);
    obj.button57:setName("button57");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.button57);
    obj.dataLink57:setField("Check_BoxOL_0");
    obj.dataLink57:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink57:setName("dataLink57");

    obj.image58 = GUI.fromHandle(_obj_newObject("image"));
    obj.image58:setParent(obj.button57);
    obj.image58:setAlign("client");
    obj.image58:setField("Check_BoxOL_0");
    obj.image58:setName("image58");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsOL0 = {	"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button58 = GUI.fromHandle(_obj_newObject("button"));
    obj.button58:setParent(obj.rectangle1);
    obj.button58:setLeft(442);
    obj.button58:setTop(930);
    obj.button58:setWidth(29);
    obj.button58:setHeight(29);
    obj.button58:setName("button58");

    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.button58);
    obj.dataLink58:setField("Check_BoxOL_1");
    obj.dataLink58:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink58:setName("dataLink58");

    obj.image59 = GUI.fromHandle(_obj_newObject("image"));
    obj.image59:setParent(obj.button58);
    obj.image59:setAlign("client");
    obj.image59:setField("Check_BoxOL_1");
    obj.image59:setName("image59");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsOL1 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button59 = GUI.fromHandle(_obj_newObject("button"));
    obj.button59:setParent(obj.rectangle1);
    obj.button59:setLeft(555);
    obj.button59:setTop(930);
    obj.button59:setWidth(29);
    obj.button59:setHeight(29);
    obj.button59:setName("button59");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.button59);
    obj.dataLink59:setField("Check_BoxOL_2");
    obj.dataLink59:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink59:setName("dataLink59");

    obj.image60 = GUI.fromHandle(_obj_newObject("image"));
    obj.image60:setParent(obj.button59);
    obj.image60:setAlign("client");
    obj.image60:setField("Check_BoxOL_2");
    obj.image60:setName("image60");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsOL2 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj.button60 = GUI.fromHandle(_obj_newObject("button"));
    obj.button60:setParent(obj.rectangle1);
    obj.button60:setLeft(667);
    obj.button60:setTop(930);
    obj.button60:setWidth(29);
    obj.button60:setHeight(29);
    obj.button60:setName("button60");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.button60);
    obj.dataLink60:setField("Check_BoxOL_3");
    obj.dataLink60:setDefaultValue("PokeRPGT/images/pokeball1_off.png");
    obj.dataLink60:setName("dataLink60");

    obj.image61 = GUI.fromHandle(_obj_newObject("image"));
    obj.image61:setParent(obj.button60);
    obj.image61:setAlign("client");
    obj.image61:setField("Check_BoxOL_3");
    obj.image61:setName("image61");


					-- criando array das imagens que vão ser utilizadas. 
					-- melhor usar imagens hospedadas no firedrive nesse caso
					local picsOL3 = {"PokeRPGT/images/pokeball1_off.png",
									"PokeRPGT/images/pokeball1_on.png", 
									"PokeRPGT/images/ultraball1_on.png"};
					


    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK0 == nil then
            						sheet.imageCounterK0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK0 = (sheet.imageCounterK0 + 1) % #picsK0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_0 = picsK0[sheet.imageCounterK0 +1];
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK1 == nil then
            						sheet.imageCounterK1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK1 = (sheet.imageCounterK1 + 1) % #picsK1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_1 = picsK1[sheet.imageCounterK1 +1];
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK2 == nil then
            						sheet.imageCounterK2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK2 = (sheet.imageCounterK2 + 1) % #picsK2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_2 = picsK2[sheet.imageCounterK2 +1];
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK3 == nil then
            						sheet.imageCounterK3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK3 = (sheet.imageCounterK3 + 1) % #picsK3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_3 = picsK3[sheet.imageCounterK3 +1];
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK4 == nil then
            						sheet.imageCounterK4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK4 = (sheet.imageCounterK4 + 1) % #picsK4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_4 = picsK4[sheet.imageCounterK4 +1];
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK5 == nil then
            						sheet.imageCounterK5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK5 = (sheet.imageCounterK5 + 1) % #picsK5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_5 = picsK5[sheet.imageCounterK5 +1];
        end, obj);

    obj._e_event6 = obj.button7:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK6 == nil then
            						sheet.imageCounterK6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK6 = (sheet.imageCounterK6 + 1) % #picsK6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_6 = picsK6[sheet.imageCounterK6 +1];
        end, obj);

    obj._e_event7 = obj.button8:addEventListener("onClick",
        function (_)
            if sheet.imageCounterK7 == nil then
            						sheet.imageCounterK7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterK7 = (sheet.imageCounterK7 + 1) % #picsK7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxK_7 = picsK7[sheet.imageCounterK7 +1];
        end, obj);

    obj._e_event8 = obj.button9:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ0 == nil then
            						sheet.imageCounterJ0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ0 = (sheet.imageCounterJ0 + 1) % #picsJ0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_0 = picsJ0[sheet.imageCounterJ0 +1];
        end, obj);

    obj._e_event9 = obj.button10:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ1 == nil then
            						sheet.imageCounterJ1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ1 = (sheet.imageCounterJ1 + 1) % #picsJ1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_1 = picsJ1[sheet.imageCounterJ1 +1];
        end, obj);

    obj._e_event10 = obj.button11:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ2 == nil then
            						sheet.imageCounterJ2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ2 = (sheet.imageCounterJ2 + 1) % #picsJ2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_2 = picsJ2[sheet.imageCounterJ2 +1];
        end, obj);

    obj._e_event11 = obj.button12:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ3 == nil then
            						sheet.imageCounterJ3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ3 = (sheet.imageCounterJ3 + 1) % #picsJ3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_3 = picsJ3[sheet.imageCounterJ3 +1];
        end, obj);

    obj._e_event12 = obj.button13:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ4 == nil then
            						sheet.imageCounterJ4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ4 = (sheet.imageCounterJ4 + 1) % #picsJ4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_4 = picsJ4[sheet.imageCounterJ4 +1];
        end, obj);

    obj._e_event13 = obj.button14:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ5 == nil then
            						sheet.imageCounterJ5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ5 = (sheet.imageCounterJ5 + 1) % #picsJ5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_5 = picsJ5[sheet.imageCounterJ5 +1];
        end, obj);

    obj._e_event14 = obj.button15:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ6 == nil then
            						sheet.imageCounterJ6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ6 = (sheet.imageCounterJ6 + 1) % #picsJ6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_6 = picsJ6[sheet.imageCounterJ6 +1];
        end, obj);

    obj._e_event15 = obj.button16:addEventListener("onClick",
        function (_)
            if sheet.imageCounterJ7 == nil then
            						sheet.imageCounterJ7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterJ7 = (sheet.imageCounterJ7 + 1) % #picsJ7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxJ_7 = picsJ7[sheet.imageCounterJ7 +1];
        end, obj);

    obj._e_event16 = obj.button17:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH0 == nil then
            						sheet.imageCounterH0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH0 = (sheet.imageCounterH0 + 1) % #picsH0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_0 = picsH0[sheet.imageCounterH0 +1];
        end, obj);

    obj._e_event17 = obj.button18:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH1 == nil then
            						sheet.imageCounterH1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH1 = (sheet.imageCounterH1 + 1) % #picsH1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_1 = picsH1[sheet.imageCounterH1 +1];
        end, obj);

    obj._e_event18 = obj.button19:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH2 == nil then
            						sheet.imageCounterH2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH2 = (sheet.imageCounterH2 + 1) % #picsH2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_2 = picsH2[sheet.imageCounterH2 +1];
        end, obj);

    obj._e_event19 = obj.button20:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH3 == nil then
            						sheet.imageCounterH3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH3 = (sheet.imageCounterH3 + 1) % #picsH3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_3 = picsH3[sheet.imageCounterH3 +1];
        end, obj);

    obj._e_event20 = obj.button21:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH4 == nil then
            						sheet.imageCounterH4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH4 = (sheet.imageCounterH4 + 1) % #picsH4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_4 = picsH4[sheet.imageCounterH4 +1];
        end, obj);

    obj._e_event21 = obj.button22:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH5 == nil then
            						sheet.imageCounterH5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH5 = (sheet.imageCounterH5 + 1) % #picsH5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_5 = picsH5[sheet.imageCounterH5 +1];
        end, obj);

    obj._e_event22 = obj.button23:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH6 == nil then
            						sheet.imageCounterH6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH6 = (sheet.imageCounterH6 + 1) % #picsH6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_6 = picsH6[sheet.imageCounterH6 +1];
        end, obj);

    obj._e_event23 = obj.button24:addEventListener("onClick",
        function (_)
            if sheet.imageCounterH7 == nil then
            						sheet.imageCounterH7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterH7 = (sheet.imageCounterH7 + 1) % #picsH7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxH_7 = picsH7[sheet.imageCounterH7 +1];
        end, obj);

    obj._e_event24 = obj.button25:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS0 == nil then
            						sheet.imageCounterS0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS0 = (sheet.imageCounterS0 + 1) % #picsS0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_0 = picsS0[sheet.imageCounterS0 +1];
        end, obj);

    obj._e_event25 = obj.button26:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS1 == nil then
            						sheet.imageCounterS1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS1 = (sheet.imageCounterS1 + 1) % #picsS1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_1 = picsS1[sheet.imageCounterS1 +1];
        end, obj);

    obj._e_event26 = obj.button27:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS2 == nil then
            						sheet.imageCounterS2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS2 = (sheet.imageCounterS2 + 1) % #picsS2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_2 = picsS2[sheet.imageCounterS2 +1];
        end, obj);

    obj._e_event27 = obj.button28:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS3 == nil then
            						sheet.imageCounterS3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS3 = (sheet.imageCounterS3 + 1) % #picsS3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_3 = picsS3[sheet.imageCounterS3 +1];
        end, obj);

    obj._e_event28 = obj.button29:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS4 == nil then
            						sheet.imageCounterS4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS4 = (sheet.imageCounterS4 + 1) % #picsS4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_4 = picsS4[sheet.imageCounterS4 +1];
        end, obj);

    obj._e_event29 = obj.button30:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS5 == nil then
            						sheet.imageCounterS5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS5 = (sheet.imageCounterS5 + 1) % #picsS5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_5 = picsS5[sheet.imageCounterS5 +1];
        end, obj);

    obj._e_event30 = obj.button31:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS6 == nil then
            						sheet.imageCounterS6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS6 = (sheet.imageCounterS6 + 1) % #picsS6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_6 = picsS6[sheet.imageCounterS6 +1];
        end, obj);

    obj._e_event31 = obj.button32:addEventListener("onClick",
        function (_)
            if sheet.imageCounterS7 == nil then
            						sheet.imageCounterS7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterS7 = (sheet.imageCounterS7 + 1) % #picsS7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxS_7 = picsS7[sheet.imageCounterS7 +1];
        end, obj);

    obj._e_event32 = obj.button33:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU0 == nil then
            						sheet.imageCounterU0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU0 = (sheet.imageCounterU0 + 1) % #picsU0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_0 = picsU0[sheet.imageCounterU0 +1];
        end, obj);

    obj._e_event33 = obj.button34:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU1 == nil then
            						sheet.imageCounterU1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU1 = (sheet.imageCounterU1 + 1) % #picsU1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_1 = picsU1[sheet.imageCounterU1 +1];
        end, obj);

    obj._e_event34 = obj.button35:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU2 == nil then
            						sheet.imageCounterU2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU2 = (sheet.imageCounterU2 + 1) % #picsU2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_2 = picsU2[sheet.imageCounterU2 +1];
        end, obj);

    obj._e_event35 = obj.button36:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU3 == nil then
            						sheet.imageCounterU3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU3 = (sheet.imageCounterU3 + 1) % #picsU3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_3 = picsU3[sheet.imageCounterU3 +1];
        end, obj);

    obj._e_event36 = obj.button37:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU4 == nil then
            						sheet.imageCounterU4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU4 = (sheet.imageCounterU4 + 1) % #picsU4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_4 = picsU4[sheet.imageCounterU4 +1];
        end, obj);

    obj._e_event37 = obj.button38:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU5 == nil then
            						sheet.imageCounterU5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU5 = (sheet.imageCounterU5 + 1) % #picsU5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_5 = picsU5[sheet.imageCounterU5 +1];
        end, obj);

    obj._e_event38 = obj.button39:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU6 == nil then
            						sheet.imageCounterU6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU6 = (sheet.imageCounterU6 + 1) % #picsU6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_6 = picsU6[sheet.imageCounterU6 +1];
        end, obj);

    obj._e_event39 = obj.button40:addEventListener("onClick",
        function (_)
            if sheet.imageCounterU7 == nil then
            						sheet.imageCounterU7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterU7 = (sheet.imageCounterU7 + 1) % #picsU7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxU_7 = picsU7[sheet.imageCounterU7 +1];
        end, obj);

    obj._e_event40 = obj.button41:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL0 == nil then
            						sheet.imageCounterKL0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL0 = (sheet.imageCounterKL0 + 1) % #picsKL0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_0 = picsKL0[sheet.imageCounterKL0 +1];
        end, obj);

    obj._e_event41 = obj.button42:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL1 == nil then
            						sheet.imageCounterKL1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL1 = (sheet.imageCounterKL1 + 1) % #picsKL1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_1 = picsKL1[sheet.imageCounterKL1 +1];
        end, obj);

    obj._e_event42 = obj.button43:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL2 == nil then
            						sheet.imageCounterKL2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL2 = (sheet.imageCounterKL2 + 1) % #picsKL2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_2 = picsKL2[sheet.imageCounterKL2 +1];
        end, obj);

    obj._e_event43 = obj.button44:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL3 == nil then
            						sheet.imageCounterKL3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL3 = (sheet.imageCounterKL3 + 1) % #picsKL3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_3 = picsKL3[sheet.imageCounterKL3 +1];
        end, obj);

    obj._e_event44 = obj.button45:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL4 == nil then
            						sheet.imageCounterKL4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL4 = (sheet.imageCounterKL4 + 1) % #picsKL4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_4 = picsKL4[sheet.imageCounterKL4 +1];
        end, obj);

    obj._e_event45 = obj.button46:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL5 == nil then
            						sheet.imageCounterKL5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL5 = (sheet.imageCounterKL5 + 1) % #picsKL5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_5 = picsKL5[sheet.imageCounterKL5 +1];
        end, obj);

    obj._e_event46 = obj.button47:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL6 == nil then
            						sheet.imageCounterKL6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL6 = (sheet.imageCounterKL6 + 1) % #picsKL6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_6 = picsKL6[sheet.imageCounterKL6 +1];
        end, obj);

    obj._e_event47 = obj.button48:addEventListener("onClick",
        function (_)
            if sheet.imageCounterKL7 == nil then
            						sheet.imageCounterKL7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterKL7 = (sheet.imageCounterKL7 + 1) % #picsKL7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxKL_7 = picsKL7[sheet.imageCounterKL7 +1];
        end, obj);

    obj._e_event48 = obj.button49:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA0 == nil then
            						sheet.imageCounterA0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA0 = (sheet.imageCounterA0 + 1) % #picsA0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_0 = picsA0[sheet.imageCounterA0 +1];
        end, obj);

    obj._e_event49 = obj.button50:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA1 == nil then
            						sheet.imageCounterA1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA1 = (sheet.imageCounterA1 + 1) % #picsA1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_1 = picsA1[sheet.imageCounterA1 +1];
        end, obj);

    obj._e_event50 = obj.button51:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA2 == nil then
            						sheet.imageCounterA2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA2 = (sheet.imageCounterA2 + 1) % #picsA2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_2 = picsA2[sheet.imageCounterA2 +1];
        end, obj);

    obj._e_event51 = obj.button52:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA3 == nil then
            						sheet.imageCounterA3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA3 = (sheet.imageCounterA3 + 1) % #picsA3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_3 = picsA3[sheet.imageCounterA3 +1];
        end, obj);

    obj._e_event52 = obj.button53:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA4 == nil then
            						sheet.imageCounterA4 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA4 = (sheet.imageCounterA4 + 1) % #picsA4;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_4 = picsA4[sheet.imageCounterA4 +1];
        end, obj);

    obj._e_event53 = obj.button54:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA5 == nil then
            						sheet.imageCounterA5 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA5 = (sheet.imageCounterA5 + 1) % #picsA5;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_5 = picsA5[sheet.imageCounterA5 +1];
        end, obj);

    obj._e_event54 = obj.button55:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA6 == nil then
            						sheet.imageCounterA6 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA6 = (sheet.imageCounterA6 + 1) % #picsA6;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_6 = picsA6[sheet.imageCounterA6 +1];
        end, obj);

    obj._e_event55 = obj.button56:addEventListener("onClick",
        function (_)
            if sheet.imageCounterA7 == nil then
            						sheet.imageCounterA7 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterA7 = (sheet.imageCounterA7 + 1) % #picsA7;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxA_7 = picsA7[sheet.imageCounterA7 +1];
        end, obj);

    obj._e_event56 = obj.button57:addEventListener("onClick",
        function (_)
            if sheet.imageCounterOL0 == nil then
            						sheet.imageCounterOL0 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterOL0 = (sheet.imageCounterOL0 + 1) % #picsOL0;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxOL_0 = picsOL0[sheet.imageCounterOL0 +1];
        end, obj);

    obj._e_event57 = obj.button58:addEventListener("onClick",
        function (_)
            if sheet.imageCounterOL1 == nil then
            						sheet.imageCounterOL1 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterOL1 = (sheet.imageCounterOL1 + 1) % #picsOL1;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxOL_1 = picsOL1[sheet.imageCounterOL1 +1];
        end, obj);

    obj._e_event58 = obj.button59:addEventListener("onClick",
        function (_)
            if sheet.imageCounterOL2 == nil then
            						sheet.imageCounterOL2 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterOL2 = (sheet.imageCounterOL2 + 1) % #picsOL2;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxOL_2 = picsOL2[sheet.imageCounterOL2 +1];
        end, obj);

    obj._e_event59 = obj.button60:addEventListener("onClick",
        function (_)
            if sheet.imageCounterOL3 == nil then
            						sheet.imageCounterOL3 = 0;
            					end;
            					-- Contador que vai de 0 a 2 e reseta ao passar de 2
            					sheet.imageCounterOL3 = (sheet.imageCounterOL3 + 1) % #picsOL3;
            					-- pegando imagem do array. O +1 é por que arrays em lua começam em 1 e não em 0
            					sheet.Check_BoxOL_3 = picsOL3[sheet.imageCounterOL3 +1];
        end, obj);

    function obj:_releaseEvents()
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

        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.image30 ~= nil then self.image30:destroy(); self.image30 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image51 ~= nil then self.image51:destroy(); self.image51 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.button47 ~= nil then self.button47:destroy(); self.button47 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.button56 ~= nil then self.button56:destroy(); self.button56 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.button52 ~= nil then self.button52:destroy(); self.button52 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.button53 ~= nil then self.button53:destroy(); self.button53 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.image60 ~= nil then self.image60:destroy(); self.image60 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.image61 ~= nil then self.image61:destroy(); self.image61 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.image56 ~= nil then self.image56:destroy(); self.image56 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.image29 ~= nil then self.image29:destroy(); self.image29 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.image42 ~= nil then self.image42:destroy(); self.image42 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.button59 ~= nil then self.button59:destroy(); self.button59 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.image28 ~= nil then self.image28:destroy(); self.image28 = nil; end;
        if self.image45 ~= nil then self.image45:destroy(); self.image45 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.image41 ~= nil then self.image41:destroy(); self.image41 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.button45 ~= nil then self.button45:destroy(); self.button45 = nil; end;
        if self.image47 ~= nil then self.image47:destroy(); self.image47 = nil; end;
        if self.button60 ~= nil then self.button60:destroy(); self.button60 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.image37 ~= nil then self.image37:destroy(); self.image37 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.button43 ~= nil then self.button43:destroy(); self.button43 = nil; end;
        if self.image49 ~= nil then self.image49:destroy(); self.image49 = nil; end;
        if self.button44 ~= nil then self.button44:destroy(); self.button44 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.image52 ~= nil then self.image52:destroy(); self.image52 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.image55 ~= nil then self.image55:destroy(); self.image55 = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.image58 ~= nil then self.image58:destroy(); self.image58 = nil; end;
        if self.image34 ~= nil then self.image34:destroy(); self.image34 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.image32 ~= nil then self.image32:destroy(); self.image32 = nil; end;
        if self.button51 ~= nil then self.button51:destroy(); self.button51 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.button49 ~= nil then self.button49:destroy(); self.button49 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.image54 ~= nil then self.image54:destroy(); self.image54 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.image38 ~= nil then self.image38:destroy(); self.image38 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.image33 ~= nil then self.image33:destroy(); self.image33 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image46 ~= nil then self.image46:destroy(); self.image46 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.image48 ~= nil then self.image48:destroy(); self.image48 = nil; end;
        if self.image57 ~= nil then self.image57:destroy(); self.image57 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.image35 ~= nil then self.image35:destroy(); self.image35 = nil; end;
        if self.image39 ~= nil then self.image39:destroy(); self.image39 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.button50 ~= nil then self.button50:destroy(); self.button50 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.button48 ~= nil then self.button48:destroy(); self.button48 = nil; end;
        if self.button55 ~= nil then self.button55:destroy(); self.button55 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.image40 ~= nil then self.image40:destroy(); self.image40 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.image59 ~= nil then self.image59:destroy(); self.image59 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.button42 ~= nil then self.button42:destroy(); self.button42 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.button57 ~= nil then self.button57:destroy(); self.button57 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.button58 ~= nil then self.button58:destroy(); self.button58 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.button41 ~= nil then self.button41:destroy(); self.button41 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.image50 ~= nil then self.image50:destroy(); self.image50 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.button54 ~= nil then self.button54:destroy(); self.button54 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.button46 ~= nil then self.button46:destroy(); self.button46 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.image31 ~= nil then self.image31:destroy(); self.image31 = nil; end;
        if self.image36 ~= nil then self.image36:destroy(); self.image36 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.image43 ~= nil then self.image43:destroy(); self.image43 = nil; end;
        if self.image44 ~= nil then self.image44:destroy(); self.image44 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.image53 ~= nil then self.image53:destroy(); self.image53 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPokeRPGT3_svg()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPokeRPGT3_svg();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPokeRPGT3_svg = {
    newEditor = newfrmPokeRPGT3_svg, 
    new = newfrmPokeRPGT3_svg, 
    name = "frmPokeRPGT3_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmPokeRPGT3_svg = _frmPokeRPGT3_svg;
Firecast.registrarForm(_frmPokeRPGT3_svg);

return _frmPokeRPGT3_svg;
