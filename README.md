# cc_block_hold_invehicle (FiveM)
ระบบป้องกันผู้เล่นอุ้มแล้วขึ้นรถ หากมีคนอุ้มแล้วขึ้นรถจะโดนเตะลงจากรถทันที สามารถกำหนดอาชีพที่สามารถอุ้มแล้วขึ้นรถได้

<img src="https://cdn.discordapp.com/attachments/1021921777011666984/1021940173656838144/unknown.png"/>

### จำเป็นต้องมี xzero_hold

### Discord : [discord.gg/K7PDe2jfpW](https://discord.gg/K7PDe2jfpW)

## ดาวน์โหลด
### ใช้ Git
```
cd resources
git clone https://github.com/CodeCool-Developer/cc_block_hold_invehicle.git [local]/[CC]/cc_block_hold_invehicle
```

### ด้วยตนเอง
- ดาวน์โหลด https://github.com/CodeCool-Developer/cc_block_hold_invehicle/archive/refs/heads/main.zip
- วางไว้ใน `[local]/[CC]/`

## ติดตั้ง
- เพิ่มสิ่งนี้ไปยัง server.cfg `ensure cc_block_hold_invehicle` หรือ `start cc_block_hold_invehicle`

```
ensure cc_block_hold_invehicle
หรือ
start cc_block_hold_invehicle
```

## ตัวอย่าง Config และเชื่อมกับ xzero_hold
### ตัวอย่าง Config กำหนดอาชีพ [config.general.lua](https://github.com/CodeCool-Developer/cc_block_hold_invehicle/blob/main/config/config.general.lua)
```
Config.AllowJob = {
    ['police'] = true,
    ['ambulance'] = true,
}
```

### ตัวอย่าง การติดตั้งไฟล์ [export.lua](https://github.com/CodeCool-Developer/cc_block_hold_invehicle/blob/main/config/config.function.lua) ที่ xzero_hold
```
1. ให้นำไฟล์ export.lua ไปไว้ใน xzero_hold\client

2. ใน fxmanifest.lua หรือ __resource.lua ให้ใส่ 'client/export.lua' ไว้ใต้ 'client/main.lua' (ไว้ล่างสุดของ client_scripts เลย)

client_scripts {
    'client/main.lua',
    'client/export.lua'      --ตัวอย่างไว้ด้านลางสุด ไม่ได้ให้ก็อปทั้งหมดนี้ไปวางนะ
}

3.สั่ง ensure xzero_hold
```

## CodeCool Developer
### Discord : [discord.gg/K7PDe2jfpW](https://discord.gg/K7PDe2jfpW)
