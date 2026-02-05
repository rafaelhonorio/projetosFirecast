require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmDefesaLinha()
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
    obj:setName("frmDefesaLinha");
    obj:setHeight(28);
    obj:setTheme("light");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setHeight(28);
    obj.layout1:setName("layout1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(80);
    obj.edit1:setField("categoria");
    obj.edit1:setName("edit1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(140);
    obj.edit2:setField("nome");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setName("edit2");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(55);
    obj.edit3:setField("bonusCA");
    obj.edit3:setType("number");
    obj.edit3:setMin(-99);
    obj.edit3:setMax(99);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setName("edit3");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(70);
    obj.edit4:setField("bonusMaxDes");
    obj.edit4:setType("number");
    obj.edit4:setMin(-99);
    obj.edit4:setMax(99);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(65);
    obj.edit5:setField("penalidade");
    obj.edit5:setType("number");
    obj.edit5:setMin(-99);
    obj.edit5:setMax(99);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setAlign("left");
    obj.edit6:setWidth(40);
    obj.edit6:setField("peso");
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(9999);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setWidth(24);
    obj.button1:setText("X");
    obj.button1:setHint("Excluir");
    obj.button1:setName("button1");

    obj._e_event0 = obj.edit3:addEventListener("onChange",
        function (self)
            TRPG_touchCA(sheet);
        end, obj);

    obj._e_event1 = obj.edit4:addEventListener("onChange",
        function (self)
            TRPG_touchCA(sheet);
        end, obj);

    obj._e_event2 = obj.edit5:addEventListener("onChange",
        function (self)
            TRPG_touchCA(sheet);
        end, obj);

    obj._e_event3 = obj.edit6:addEventListener("onChange",
        function (self)
            -- se peso impacta carga, mantém __recalc03
                    if sheet ~= nil then
                      local root = ndb.getRoot(sheet);
                      if root ~= nil then
                        root.__recalc03 = (tonumber(root.__recalc03) or 0) + 1;
                      end;
                    end;
            
                    -- e também toca a CA (caso você use peso pra algo de defesa, ou só pra padronizar)
                    TRPG_touchCA(sheet);
        end, obj);

    obj._e_event4 = obj.button1:addEventListener("onClick",
        function (self)
            if sheet ~= nil then
                      local root = ndb.getRoot(sheet);
            
                      -- toca antes de deletar (depois o node some)
                      TRPG_touchCA(sheet);
            
                      ndb.deleteNode(sheet);
            
                      -- mantém seu gatilho de tela 3/carga, se você usa
                      if root ~= nil then
                        root.__recalc03 = (tonumber(root.__recalc03) or 0) + 1;
                      end;
                    end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmDefesaLinha = {
    newEditor = newfrmDefesaLinha, 
    new = newfrmDefesaLinha, 
    name = "frmDefesaLinha", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmDefesaLinha = _frmDefesaLinha;
rrpg.registrarForm(_frmDefesaLinha);

return _frmDefesaLinha;
