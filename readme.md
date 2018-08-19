## เตรียมเครื่อง
1. ลง ruby version manager (แนะนำให้อ้างอิงจาก https://rvm.io/ เพื่อจะได้ command ที่อัพเดตล่าสุด)
```
curl -sSL https://get.rvm.io | bash -s stable
```
2. รีโหลด script ให้รัน rvm ได้ ด้วยคำสั่ง (หรือจะปิดและเปิด termainal ใหม่ก็ได้มีค่าเท่ากัน)
```
source /Users/JoJo/.rvm/scripts/rvm
```
3. ลง ruby ด้วยคำสั่ง
```
rvm install 2.5.0
```
4. กรณีมี ruby ลงอยู่หลาย version, list version ที่ลงไว้ทั้งหมด
```
rvm list
```
เปลี่ยน version ด้วยคำสั่ง
```
rvm use 2.5.0
```
5. ลง dependencies
```
gem list
```
```
gem install cucumber
gem install rspec
```

## Workshop Steps
1. cucumber --init
2. สร้าง feature file ใน features/
3. รัน feature file ด้วยคำสั่ง
```
cucumber
```
4. เมื่อรันครั้งแรก cucumber จะบ่นว่าไม่มี step file ที่ match กับ feature ที่เขียน และพ่น template function ออกมา ให้ copy ไปสร้าง step defintion
5. สร้าง step definition ใน features/step_definitions
