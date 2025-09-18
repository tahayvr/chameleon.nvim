---@diagnostic disable: undefined-global, undefined-field

local M = {}

-- Extracts a palette table from a theme module that may:
-- - return { palette = {...} }
-- - return { M = { palette = {...} } } (unlikely)
-- - return a plain palette table (with keys like bg1, fg1, etc.)
-- Returns: palette table or nil, error
function M.extract_palette(mod)
  if type(mod) ~= "table" then
    return nil, "Theme file did not return a table"
  end

  local palette = nil
  if type(mod.palette) == "table" then
    palette = mod.palette
  elseif type(mod.M) == "table" and type(mod.M.palette) == "table" then
    palette = mod.M.palette
  else
    -- if it looks like a palette, accept mod as palette
    if mod.bg1 and mod.fg1 then
      palette = mod
    end
  end

  if not palette then
    return nil, "No 'palette' table found and returned table doesn't look like a palette"
  end

  -- Minimal validation so highlight modules can rely on core fields
  local required = { "bg1", "fg1", "selbg", "selfg", "comment" }
  for _, k in ipairs(required) do
    if palette[k] == nil then
      return nil, ("Palette is missing required key: %s"):format(k)
    end
  end

  return palette, nil
end

return M