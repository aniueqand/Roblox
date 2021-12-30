local console = {}

--Create
console.new = function()
    rconsoleprint('')
    rconsolename('Console Lib')
    return true
end

console.windowname = function(msg)
    if (typeof(msg) == 'string') then
        rconsolename(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

--Normal Log
console.log = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@WHITE@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

-- Normally Used Functions
console.newline = function()
    rconsoleprint('\n')
end
console.clear = function()
    rconsoleclear()
end



--Colors

console.black = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@BLACK@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.blue = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@BLUE@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.green = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@GREEN@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.cyan = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@CYAN@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.red = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@RED@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.magenta = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@MAGENTA@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.brown = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@BROWN@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.lightgray = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@LIGHT_GRAY@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.darkgray = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@DARK_GRAY@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.lightblue = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@LIGHT_BLUE@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.lightgreen = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@LIGHT_GREEN@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.lightcyan = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@LIGHT_CYAN@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.lightred = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@LIGHT_RED@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.lightmagenta = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@LIGHT_MAGENTA@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end


console.yellow = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@YELLOW@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

console.white = function(msg)
    if (typeof(msg) == 'string') then
        rconsoleprint('@@WHITE@@')
        rconsoleprint(msg)
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected string got '..typeof(msg))
        return false
    end
end

--Minecraft Formatting

console.formatcolors = function(msg, colorSeparate)
    colorSeparate = colorSeparate or '&'
    if not (typeof(colorSeparate) == 'string') then
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: (arg2) Expected string got '..typeof(colorSeparate))
        return false
    end
    colorCodes = {
        ['4'] = '@@RED@@',
        ['c'] = '@@LIGHT_RED@@',
        ['e'] = '@@YELLOW@@',
        ['2'] = '@@GREEN@@',
        ['a'] = '@@LIGHT_GREEN@@',
        ['b'] = '@@LIGHT_CYAN@@',
        ['3'] = '@@CYAN@@',
        ['1'] = '@@BLUE@@',
        ['9'] = '@@LIGHT_BLUE@@',
        ['d'] = '@@LIGHT_MAGENTA@@',
        ['5'] = '@@MAGENTA@@',
        ['f'] = '@@WHITE@@',
        ['7'] = '@@LIGHT_GRAY@@',
        ['8'] = '@@DARK_GRAY@@',
        ['0'] = '@@BLACK@@',
        ['6'] = '@@BROWN@@'
    }
    if (typeof(msg) == 'string') then
        splitArr = msg:split(colorSeparate)
        rconsoleprint('@@WHITE@@')
        for _, v in ipairs(splitArr) do
            color = colorCodes[string.sub(v, 1, 1)]
            if color then
                rconsoleprint(color)
                rconsoleprint(string.sub(v, 2, #v))
            else
                rconsoleprint(v)
            end
        end
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: (arg1) Expected string got '..typeof(msg))
        return false
    end
end


console.progressbar = function(progression, maxProgression, maxlength, customBarIcon)
    customBarIcon = customBarIcon or '='
    maxlength = maxlength or 20
    if not (typeof(customBarIcon) == 'string') then
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: (arg4) Expected string got '..typeof(customBarIcon))
        return false
    end
    if not (typeof(maxlength) == 'number') then
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: (arg3) Expected number got '..typeof(maxlength))
        return false
    end

    if (typeof(progression) == 'number') then
        if (typeof(maxProgression) == 'number') then
        
            procent = math.floor((progression / maxProgression) * 100)
            rconsoleprint('@@WHITE@@')
            rconsoleprint('[')
            for i = 1, maxlength do
                if (((i / maxlength) * 100) <= procent) then
                    rconsoleprint('@@LIGHT_GREEN@@')
                    rconsoleprint(customBarIcon)
                else
                    rconsoleprint('@@DARK_GRAY@@')
                    rconsoleprint(customBarIcon)
                end
            end
            rconsoleprint('@@WHITE@@')
            rconsoleprint('] ')
            rconsoleprint(progression..'/'..maxProgression..' ('..procent..'%)')
            return true
        else
            rconsoleprint('\n')
            rconsoleprint('@@RED@@')
            rconsoleprint('Error: (arg2) Expected number got '..typeof(maxProgression))
            return false
        end
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: (arg1) Expected number got '..typeof(progression))
        return false
    end
end

console.input = function(inputText)
    inputText = inputText or ''

    if (typeof(inputText) == 'string') then
        rconsoleprint(inputText)
        return rconsoleinput()
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: (arg1) Expected string got '..typeof(inputText))
        return false
    end
end

--Table Debug
console.table = function(tbl, deepPrint)
    if (typeof(tbl) == 'table') then
        rconsoleprint('@@WHITE@@')
        rconsoleprint('\n')
        label = "Table"
        local strTbl = {}
        local indent = " - "
        local function Insert(s, l)
            strTbl[#strTbl + 1] = (indent:rep(l) .. s .. "\n")
        end
        local function AlphaKeySort(a, b)
            return (tostring(a.k) < tostring(b.k))
        end 
        local function PrintTable(t, lvl, lbl)
            Insert(lbl .. ":", lvl - 1)
            local nonTbls = {}
            local tbls = {}
            local keySpaces = 0
            for k,v in pairs(t) do
                if (type(v) == "table") then
                    table.insert(tbls, {k = k, v = v})
                else
                    table.insert(nonTbls, {k = k, v = "[" .. typeof(v) .. "] " .. tostring(v)})
                end
                local spaces = #tostring(k) + 1
                if (spaces > keySpaces) then
                    keySpaces = spaces
                end
            end
            table.sort(nonTbls, AlphaKeySort)
            table.sort(tbls, AlphaKeySort)
            for _,v in ipairs(nonTbls) do
                Insert(tostring(v.k) .. ":" .. (" "):rep(keySpaces - #tostring(v.k)) .. v.v, lvl)
            end
            if (deepPrint) then
                for _,v in ipairs(tbls) do
                    PrintTable(v.v, lvl + 1, tostring(v.k) .. (" "):rep(keySpaces - #tostring(v.k)) .. " [Table]")
                end
            else
                for _,v in ipairs(tbls) do
                    Insert(tostring(v.k) .. ":" .. (" "):rep(keySpaces - #tostring(v.k)) .. "[Table]", lvl)
                end
            end
        end
        PrintTable(tbl, 1, label)
	    rconsoleprint(table.concat(strTbl, ""))
        return true
    else
        rconsoleprint('\n')
        rconsoleprint('@@RED@@')
        rconsoleprint('Error: Expected table got '..typeof(tbl))
        return false
    end
end

return console
