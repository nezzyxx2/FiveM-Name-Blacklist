local blacklistedNames = {
    "<iframe", "catbox.moe", "https://", ".png", ".jpeg", ".jpg", "cdn.discordapp.com", "xoa.me", "/attachments/", "https", "http://"
}

-- ^ Blacklisted words/contain/s ^

local function isBlacklisted(name)
    name = string.lower(name)
    for _, word in ipairs(blacklistedNames) do
        if string.find(name, word, 1, true) then
            return true
        end
    end
    return false
end

AddEventHandler("playerConnecting", function(name, _, deferrals)
    deferrals.defer()

    Wait(0)

    if isBlacklisted(name) then
        deferrals.done("Name contains blacklisted word/s. Change it to be able to fly in! ✈️") -- If player cannot connect shows this message
    else
        deferrals.done()
    end
end)
