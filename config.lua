--[[
	resource: M2.SpawnPoint
	Edit: M2Dev
	discord: https://discord.gg/pBsj94TaJT
]]

--# ███╗░░░███╗██████╗░░░░██████╗░███████╗██╗░░░██╗███████╗██╗░░░░░░█████╗░██████╗░███████╗██████╗░ #--
--# ████╗░████║╚════██╗░░░██╔══██╗██╔════╝██║░░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗██╔════╝██╔══██╗ #--
--# ██╔████╔██║░░███╔═╝░░░██║░░██║█████╗░░╚██╗░██╔╝█████╗░░██║░░░░░██║░░██║██████╔╝█████╗░░██████╔╝ #--
--# ██║╚██╔╝██║██╔══╝░░░░░██║░░██║██╔══╝░░░╚████╔╝░██╔══╝░░██║░░░░░██║░░██║██╔═══╝░██╔══╝░░██╔══██╗ #--
--# ██║░╚═╝░██║███████╗██╗██████╔╝███████╗░░╚██╔╝░░███████╗███████╗╚█████╔╝██║░░░░░███████╗██║░░██║ #--
--# ╚═╝░░░░░╚═╝╚══════╝╚═╝╚═════╝░╚══════╝░░░╚═╝░░░╚══════╝╚══════╝░╚════╝░╚═╝░░░░░╚══════╝╚═╝░░╚═╝ #--

-- Free Open Source หากแอบอ้างหรือเอาไปขายจะแบนทันที
Config = {}

Config.WaitTitle = 'M2.Developer SpawnPoint' -- Main Subject Text
Config.WaitLogo = 'https://media.discordapp.net/attachments/1145792546581262446/1151704719484526632/8670e006015f76cbabc242958599720b.png' -- Logo Icon for right bottom
Config.WaitImage = 'https://staticg.sportskeeda.com/editor/2022/12/3fdbb-16707568339289-1920.jpg' -- Full Image Warp Screen
Config.WaitText = 'โปรดรอสักครู่ในการวาป' -- text in detail WarpWait

Config.Delay = 10 -- 1 Second
Config.WarpWait = 5 -- 1 Second

Config.Position = {
  ["spawn"] = { -- Command
		coords = vector3(-310.9599914550781, -1003.1400146484376, 30.38999938964843), -- Coords Teleport Target
    WaitTitle = Config.WaitTitle, -- text in detail WarpWait
    WaitImage = Config.WaitImage, -- Full Image Warp Screen
    WaitText = Config.WaitText -- text in detail WarpWait
  },
	["spawn2"] = { -- Command
		coords = vector3(-287.23941040039, -906.92889404297, 31.080684661865),
    WaitTitle = 'Custom Spawn!', -- text in detail WarpWait
    WaitImage = 'https://cdn.discordapp.com/attachments/1072125009591545967/1082052439508787382/image.png', -- Full Image Warp Screen
    WaitText = 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus soluta omnis vitae, magni officia facere sunt quisquam deleniti quia! Atque minima sit itaque odio magni deleniti repellendus eveniet similique officiis?' -- text in detail WarpWait
  },
}