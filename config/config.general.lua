--   ██████╗   ██████╗    ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
-- ██╔═════╝ ██╔═════╝    ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
-- ██║       ██║          ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
-- ██║       ██║          ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
-- ╚═██████╗ ╚═██████╗    ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
--   ╚═════╝   ╚═════╝    ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --

Config = {}

Config.EventRoute = {
    ['getSharedObject']     = 'esx:getSharedObject',             -- Default: 'esx:getSharedObject'
}

Config.Debug = true                                 -- Debug Mode (true: แสดง log | false: ไม่แสดง log)

Config.AllowJob = {
    ['police'] = true,
    ['ambulance'] = true,
    ['political'] = true,
}

Config.AddAllowHoldPlayer = {
    command = 'allowHold',
    group = {
        ['superadmin'] = true,
        ['admin'] = true,
    },
}

Config.RemoveAllowHoldPlayer = {
    command = 'removeHold',
    group = {
        ['superadmin'] = true,
        ['admin'] = true,
    },
}