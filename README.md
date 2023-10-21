# M2.SpawnPoint
SpawnPoint Command resource for fivem
## ** ระบบวาร์ป โดยใช้คำสั่ง พร้อม Ui Warp และ ล็อคขา ** ##
> ได้ไอเดียมาจาก minecraft ที่ใช้คำสั่ง /spawn หรือ /home 
> เพื่อวาร์ปกลับจุด Mark Point
> ตามที่เราตั้ง สามารถตั้งค่าได้หลายอย่างไม่ว่าจะเป็น 
> รูปพื้นหลังที่ต้องการจะวาร์ปและ Logo เมืองของตนเอง

### *การใช้งาน* ###
```lua
Config.Delay = 10  -- [ตั้งเวลาดีเลย์ ในการพิมพ์คำสั่ง]
Config.WarpWait = 5 -- [เวลาที่ใช้นับถอยหลัง]
Config.Position = {
["spawn"] = { -- [คำสั่งที่ใช้พิมพ์ /spawn]
    coords = vector3(-310.9599914550781, -1003.1400146484376, 30.38999938964843), -- จุดหมาย
    WaitTitle = Config.WaitTitle, -- หัวข้อ ตั้งค่าเองได้
    WaitImage = Config.WaitImage, -- รูปภาพ .png .jpg .gif
    WaitText = Config.WaitText -- ข้อความรายละเอียดด้านใต้หัวข้อ
  }
}
```

Credit : @m2dev <br>
Discord : [Link](https://discord.gg/pBsj94TaJT) <br>
Github : [Link](https://github.com/M2D3V) <br>
Download : [M2.SpawnPoint-v1.0-beta](https://github.com/M2D3V/M2.SpawnPoint/releases/tag/v1.0-beta) <br>
