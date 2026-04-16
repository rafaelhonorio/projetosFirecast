require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmEquipLinha()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

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
    obj:setName("frmEquipLinha");
    obj:setHeight(28);
    obj:setTheme("light");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setHeight(28);
    obj.layout1:setHitTest(true);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(80);
    obj.edit1:setFontColor("black");
    obj.edit1:setField("categoria");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(176);
    obj.edit2:setFontColor("black");
    obj.edit2:setField("nome");
    lfm_setPropAsString(obj.edit2, "fontStyle", "bold");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(40);
    obj.edit3:setFontColor("black");
    obj.edit3:setField("qtd");
    obj.edit3:setType("number");
    obj.edit3:setMin(1);
    obj.edit3:setMax(999);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(70);
    obj.edit4:setFontColor("black");
    obj.edit4:setField("valor");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(70);
    obj.edit5:setFontColor("black");
    obj.edit5:setField("peso");
    obj.edit5:setType("float");
    obj.edit5:setMin(0);
    obj.edit5:setMax(9999);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setWidth(26);
    obj.button1:setFontColor("black");
    obj.button1:setText("X");
    obj.button1:setHint("Excluir item");
    obj.button1:setName("button1");
    obj.button1:setTextTrimming("none");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setFields({'peso','qtd'});
    obj.dataLink1:setName("dataLink1");

    obj._e_event0 = obj.layout1:addEventListener("onMouseDown",
        function (event)
            local rl = self:findControlByName("rclEquip");
                  if rl ~= nil then rl.selectedNode = sheet; end;
            
                  local box = self:findControlByName("boxEquipDetalhes");
                  if box ~= nil then
                    box.node = sheet;
                    box.visible = true;
                  end;
        end);

    obj._e_event1 = obj.edit1:addEventListener("onEnter",
        function ()
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end);

    obj._e_event2 = obj.edit2:addEventListener("onEnter",
        function ()
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end);

    obj._e_event3 = obj.edit3:addEventListener("onEnter",
        function ()
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end);

    obj._e_event4 = obj.edit4:addEventListener("onEnter",
        function ()
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end);

    obj._e_event5 = obj.edit5:addEventListener("onEnter",
        function ()
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end);

    obj._e_event6 = obj.button1:addEventListener("onClick",
        function (event)
            if sheet ~= nil then
                      local root = ndb.getRoot(sheet);
                      ndb.deleteNode(sheet);
                      TRPG_touch03(root);
                    end;
        end);

    obj._e_event7 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
            if sheet ~= nil then
                      local root = ndb.getRoot(sheet);
                      if root ~= nil then
                        root.__recalc03 = (tonumber(root.__recalc03) or 0) + 1;
                      end;
                    end;
        end);

    function obj:_releaseEvents()
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

        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmEquipLinha()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmEquipLinha();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmEquipLinha = {
    newEditor = newfrmEquipLinha, 
    new = newfrmEquipLinha, 
    name = "frmEquipLinha", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

frmEquipLinha = _frmEquipLinha;
Firecast.registrarForm(_frmEquipLinha);

return _frmEquipLinha;
