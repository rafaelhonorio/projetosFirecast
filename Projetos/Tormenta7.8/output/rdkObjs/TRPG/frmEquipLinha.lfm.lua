require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmEquipLinha()
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
    obj:setName("frmEquipLinha");
    obj:setHeight(28);
    obj:setTheme("light");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setHeight(28);
    obj.layout1:setHitTest(true);
    obj.layout1:setName("layout1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(296);
    obj.edit1:setFontColor("black");
    obj.edit1:setField("nome");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(70);
    obj.edit2:setFontColor("black");
    obj.edit2:setField("valor");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setName("edit2");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(70);
    obj.edit3:setFontColor("black");
    obj.edit3:setField("peso");
    obj.edit3:setType("float");
    obj.edit3:setMin(0);
    obj.edit3:setMax(9999);
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setName("edit3");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setWidth(26);
    obj.button1:setFontColor("black");
    obj.button1:setText("X");
    obj.button1:setHint("Excluir item");
    obj.button1:setName("button1");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setFields({'peso'});
    obj.dataLink1:setName("dataLink1");

    obj._e_event0 = obj.layout1:addEventListener("onMouseDown",
        function (self, event)
            local rl = self:findControlByName("rclEquip");
                  if rl ~= nil then rl.selectedNode = sheet; end;
            
                  local box = self:findControlByName("boxEquipDetalhes");
                  if box ~= nil then
                    box.node = sheet;
                    box.visible = true;
                  end;
        end, obj);

    obj._e_event1 = obj.edit1:addEventListener("onEnter",
        function (self)
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end, obj);

    obj._e_event2 = obj.edit2:addEventListener("onEnter",
        function (self)
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end, obj);

    obj._e_event3 = obj.edit3:addEventListener("onEnter",
        function (self)
            local rl = self:findControlByName("rclEquip");
                    if rl ~= nil then rl.selectedNode = sheet; end;
            
                    local box = self:findControlByName("boxEquipDetalhes");
                    if box ~= nil then box.node = sheet; box.visible = true; end;
        end, obj);

    obj._e_event4 = obj.button1:addEventListener("onClick",
        function (self)
            if sheet ~= nil then
                      local root = ndb.getRoot(sheet);
                      ndb.deleteNode(sheet);
                      TRPG_touch03(root);
                    end;
        end, obj);

    obj._e_event5 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
                      local root = ndb.getRoot(sheet);
                      if root ~= nil then
                        root.__recalc03 = (tonumber(root.__recalc03) or 0) + 1;
                      end;
                    end;
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

        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmEquipLinha = {
    newEditor = newfrmEquipLinha, 
    new = newfrmEquipLinha, 
    name = "frmEquipLinha", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmEquipLinha = _frmEquipLinha;
rrpg.registrarForm(_frmEquipLinha);

return _frmEquipLinha;
