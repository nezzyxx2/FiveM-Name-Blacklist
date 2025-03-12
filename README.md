# 🚫 FiveM Name Blacklist Script  

A lightweight FiveM script that prevents players from joining with blacklisted words in their name.  

## 🚀 Features  
- Blocks players with blacklisted words in their name.  
- Customizable blacklist for unwanted words or links.  
- Instant deferral with a customizable kick message.  
- Optimized for performance with minimal resource usage.  

## ⚙️ Configuration  
Edit the `blacklistedNames` table inside the script to customize blacklisted words:  

```lua
local blacklistedNames = {
    "<iframe", "catbox.moe", "https://", ".png", ".jpeg", ".jpg", 
    "cdn.discordapp.com", "xoa.me", "/attachments/", "https", "http://"
}
