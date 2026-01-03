require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmItemDaLista()
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
    obj:setName("frmItemDaLista");
    obj:setHeight(50);
    obj:setTheme("light");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setMargins({left=4, right=4, top=4, bottom=4});
    obj.layout1:setName("layout1");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setWidth(32);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.lblTitulo = gui.fromHandle(_obj_newObject("label"));
    obj.lblTitulo:setParent(obj.layout1);
    obj.lblTitulo:setName("lblTitulo");
    obj.lblTitulo:setLeft(40);
    obj.lblTitulo:setTop(5);
    obj.lblTitulo:setWidth(200);
    obj.lblTitulo:setHeight(25);
    obj.lblTitulo:setHorzTextAlign("center");
    lfm_setPropAsString(obj.lblTitulo, "fontStyle",  "bold");
    obj.lblTitulo:setFontColor("black");
    obj.lblTitulo:setText("(sem nome)");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setLeft(245);
    obj.button2:setTop(5);
    obj.button2:setWidth(25);
    obj.button2:setHeight(25);
    obj.button2:setText("🎲");
    obj.button2:setFontSize(14);
    obj.button2:setFontColor("black");
    obj.button2:setCanFocus(false);
    obj.button2:setCursor("handPoint");
    obj.button2:setHint("Rolar este macro na mesa");
    obj.button2:setName("button2");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setFields({'campoTitulo'});
    obj.dataLink1:setName("dataLink1");

    obj._e_event0 = obj.button1:addEventListener("onDblClick",
        function (self)
            ndb.deleteNode(sheet);
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (self)
            if TRPG_roll == nil then
                                function TRPG_roll(sheetAny, expr, label)
                                    local mesa = rrpg.getMesaDe(sheetAny);
                                    if mesa ~= nil and mesa.activeChat ~= nil then
                                        mesa.activeChat:rolarDados(expr, label);
                                    else
                                        local r = rrpg.interpretarRolagem(expr);
                                        r:rolarLocalmente();
                                    end
                                end
                            end
            
                            if sheet.campoSubTitulo ~= nil and sheet.campoSubTitulo ~= "" then
                                TRPG_roll(sheet, sheet.campoSubTitulo, sheet.campoTitulo or "Ataque/Macro");
                            else
                                showMessage("Preencha o macro antes de rolar.");
                            end
        end, obj);

    obj._e_event2 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.lblTitulo.text = sheet.campoTitulo or "(sem nome)";
        end, obj);

    function obj:_releaseEvents()
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

        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.lblTitulo ~= nil then self.lblTitulo:destroy(); self.lblTitulo = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmItemDaLista = {
    newEditor = newfrmItemDaLista, 
    new = newfrmItemDaLista, 
    name = "frmItemDaLista", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmItemDaLista = _frmItemDaLista;
rrpg.registrarForm(_frmItemDaLista);

return _frmItemDaLista;
