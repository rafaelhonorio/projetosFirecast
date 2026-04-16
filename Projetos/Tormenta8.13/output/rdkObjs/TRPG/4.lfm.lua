require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta04()
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
    obj:setName("Tormenta04");
    obj:setAlign("client");
    obj:setTheme("light");
    obj:setLockWhileNodeIsLoading(true);

    obj.sbMain04 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.sbMain04:setParent(obj);
    obj.sbMain04:setAlign("client");
    obj.sbMain04:setName("sbMain04");

    obj.lytCanvas04 = GUI.fromHandle(_obj_newObject("layout"));
    obj.lytCanvas04:setParent(obj.sbMain04);
    obj.lytCanvas04:setName("lytCanvas04");
    obj.lytCanvas04:setAlign("none");
    obj.lytCanvas04:setLeft(0);
    obj.lytCanvas04:setTop(0);
    obj.lytCanvas04:setWidth(1010);
    obj.lytCanvas04:setHeight(700);
    obj.lytCanvas04:setMargins({left=0,top=0,right=0,bottom=0});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.lytCanvas04);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("LightGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.lytCanvas04);
    obj.rectangle2:setLeft(373);
    obj.rectangle2:setTop(10);
    obj.rectangle2:setColor("#333333");
    obj.rectangle2:setWidth(265);
    obj.rectangle2:setHeight(50);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.lytCanvas04);
    obj.rectangle3:setLeft(378);
    obj.rectangle3:setTop(15);
    obj.rectangle3:setColor("#999999");
    obj.rectangle3:setWidth(255);
    obj.rectangle3:setHeight(40);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.lytCanvas04);
    obj.rectangle4:setLeft(397);
    obj.rectangle4:setTop(28);
    obj.rectangle4:setColor("Black");
    obj.rectangle4:setWidth(90);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.lytCanvas04);
    obj.label1:setLeft(429);
    obj.label1:setTop(22);
    obj.label1:setWidth(35);
    obj.label1:setHeight(25);
    obj.label1:setFontSize(14);
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setFontColor("white");
    obj.label1:setText("PM");
    obj.label1:setName("label1");
    obj.label1:setTextTrimming("none");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.lytCanvas04);
    obj.label2:setLeft(404);
    obj.label2:setTop(33);
    obj.label2:setWidth(90);
    obj.label2:setHeight(25);
    obj.label2:setFontSize(10);
    obj.label2:setFontColor("white");
    obj.label2:setText("Pontos de Magia");
    obj.label2:setName("label2");
    obj.label2:setTextTrimming("none");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.lytCanvas04);
    obj.rectangle5:setLeft(507);
    obj.rectangle5:setTop(16);
    obj.rectangle5:setColor("Black");
    obj.rectangle5:setWidth(28);
    obj.rectangle5:setHeight(15);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.lytCanvas04);
    obj.label3:setLeft(509);
    obj.label3:setTop(18);
    obj.label3:setWidth(28);
    obj.label3:setHeight(8);
    obj.label3:setFontSize(10);
    lfm_setPropAsString(obj.label3, "fontStyle", "bold");
    obj.label3:setFontColor("white");
    obj.label3:setText("Total");
    obj.label3:setName("label3");
    obj.label3:setTextTrimming("none");

    obj.totalPM = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalPM:setParent(obj.lytCanvas04);
    obj.totalPM:setLeft(491);
    obj.totalPM:setTop(28);
    obj.totalPM:setWidth(60);
    obj.totalPM:setHeight(25);
    obj.totalPM:setName("totalPM");
    obj.totalPM:setField("totalPM");
    obj.totalPM:setType("number");
    obj.totalPM:setHorzTextAlign("center");
    obj.totalPM:setFontColor("black");
    obj.totalPM:setFontSize(15.0);
    lfm_setPropAsString(obj.totalPM, "fontStyle", "bold");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.lytCanvas04);
    obj.rectangle6:setLeft(564);
    obj.rectangle6:setTop(16);
    obj.rectangle6:setColor("Black");
    obj.rectangle6:setWidth(38);
    obj.rectangle6:setHeight(15);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.lytCanvas04);
    obj.label4:setLeft(568);
    obj.label4:setTop(18);
    obj.label4:setWidth(38);
    obj.label4:setHeight(8);
    obj.label4:setFontSize(10);
    lfm_setPropAsString(obj.label4, "fontStyle", "bold");
    obj.label4:setFontColor("white");
    obj.label4:setText("Atuais");
    obj.label4:setName("label4");
    obj.label4:setTextTrimming("none");

    obj.atuaisPM = GUI.fromHandle(_obj_newObject("edit"));
    obj.atuaisPM:setParent(obj.lytCanvas04);
    obj.atuaisPM:setLeft(553);
    obj.atuaisPM:setTop(28);
    obj.atuaisPM:setWidth(60);
    obj.atuaisPM:setHeight(25);
    obj.atuaisPM:setName("atuaisPM");
    obj.atuaisPM:setField("atuaisPM");
    obj.atuaisPM:setType("number");
    obj.atuaisPM:setHorzTextAlign("center");
    obj.atuaisPM:setFontColor("black");
    obj.atuaisPM:setFontSize(15.0);
    lfm_setPropAsString(obj.atuaisPM, "fontStyle", "bold");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.lytCanvas04);
    obj.rectangle7:setLeft(175);
    obj.rectangle7:setTop(46);
    obj.rectangle7:setColor("Black");
    obj.rectangle7:setWidth(160);
    obj.rectangle7:setHeight(28);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.lytCanvas04);
    obj.label5:setLeft(183);
    obj.label5:setTop(47);
    obj.label5:setWidth(160);
    obj.label5:setHeight(23);
    obj.label5:setFontSize(16.0);
    lfm_setPropAsString(obj.label5, "fontStyle", "bold");
    obj.label5:setFontColor("white");
    obj.label5:setText("Magias Conhecidas");
    obj.label5:setName("label5");
    obj.label5:setTextTrimming("none");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.lytCanvas04);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(72);
    obj.layout1:setWidth(490);
    obj.layout1:setHeight(615);
    obj.layout1:setName("layout1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("mconhecidas");
    obj.textEditor1:setFontColor("black");
    lfm_setPropAsString(obj.textEditor1, "fontStyle", "bold");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.lytCanvas04);
    obj.rectangle8:setLeft(675);
    obj.rectangle8:setTop(46);
    obj.rectangle8:setColor("Black");
    obj.rectangle8:setWidth(160);
    obj.rectangle8:setHeight(28);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.lytCanvas04);
    obj.label6:setLeft(683);
    obj.label6:setTop(47);
    obj.label6:setWidth(160);
    obj.label6:setHeight(23);
    obj.label6:setFontSize(16.0);
    lfm_setPropAsString(obj.label6, "fontStyle", "bold");
    obj.label6:setFontColor("white");
    obj.label6:setText("Magias Preparadas");
    obj.label6:setName("label6");
    obj.label6:setTextTrimming("none");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.lytCanvas04);
    obj.layout2:setLeft(510);
    obj.layout2:setTop(72);
    obj.layout2:setWidth(490);
    obj.layout2:setHeight(615);
    obj.layout2:setName("layout2");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("mpreparadas");
    obj.textEditor2:setFontColor("black");
    lfm_setPropAsString(obj.textEditor2, "fontStyle", "bold");
    obj.textEditor2:setName("textEditor2");


-- === Responsividade (Firecast 8.13 / SDK 3.7) ===
        -- Mantém o layout legado (1010px) e aplica escala automática.
        -- Objetivo:
        --   * abrir no maior tamanho possível
        --   * reduzir apenas quando a tela for menor
        --   * recalcular depois que o layout estabiliza (evita ficar minúsculo ao abrir)
        if TRPG_updateScale == nil then
            require("rrpgUtil.lua");

            local function TRPG_getAvailableWidth(ctrl)
                local w = 0
                local p = ctrl
                while p ~= nil and w <= 0 do
                    w = tonumber(p.width) or 0
                    p = p.parent
                end
                return w
            end

            function TRPG_updateScale(container, canvas)
                if container == nil then return end
                if canvas == nil then return end

                local baseW = tonumber(canvas.width) or 1010
                if baseW <= 0 then baseW = 1010 end

                local availW = TRPG_getAvailableWidth(container)
                availW = availW - 24
                if availW <= 0 then return end

                local scaleW = availW / baseW

                -- se estiver "quase cabendo", não encolhe: mantém 100%
                local scale = scaleW
                if scaleW >= 0.85 and scaleW < 1.0 then
                    scale = 1.0
                end

                -- permite ampliar em telas grandes (tamanho máximo), mas com limite de segurança
                local maxScale = 1.25
                if scale > maxScale then scale = maxScale end
                if scale < 0.20 then scale = 0.20 end

                canvas.scale = scale

                local visW = baseW * scale
                local left = (availW + 24 - visW) / 2
                if left < 0 then left = 0 end
                canvas.left = left
            end

            function TRPG_scheduleScale(container, canvas)
                if container == nil or canvas == nil then return end
                local function tick()
                    pcall(TRPG_updateScale, container, canvas)
                end
                setTimeout(tick, 1)
                setTimeout(tick, 60)
                setTimeout(tick, 200)
            end
        end




    obj._e_event0 = obj:addEventListener("onResize",
        function ()
            TRPG_updateScale(self.sbMain04, self.lytCanvas04);
        end);

    obj._e_event1 = obj:addEventListener("onNodeReady",
        function ()
            TRPG_updateScale(self.sbMain04, self.lytCanvas04); TRPG_scheduleScale(self.sbMain04, self.lytCanvas04);
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.totalPM ~= nil then self.totalPM:destroy(); self.totalPM = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.lytCanvas04 ~= nil then self.lytCanvas04:destroy(); self.lytCanvas04 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.sbMain04 ~= nil then self.sbMain04:destroy(); self.sbMain04 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.atuaisPM ~= nil then self.atuaisPM:destroy(); self.atuaisPM = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta04()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta04();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta04 = {
    newEditor = newTormenta04, 
    new = newTormenta04, 
    name = "Tormenta04", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "", 
    description=""};

Tormenta04 = _Tormenta04;
Firecast.registrarForm(_Tormenta04);

return _Tormenta04;
