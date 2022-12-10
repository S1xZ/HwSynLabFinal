# System Schematic
![](https://raw.githubusercontent.com/S1xZ/HwSynLabFinal/main/doc/Pasted%20image%2020221210155917.png)

# Input of system
---
1. Rs Rs Signal
2. Clock
3. Reset Signal

# Output of system
--- 
1. VGA signals
2. 7 Segments&Led signals

# Modules
--- 
### *!!NOT EVERY MODULE IS INCLUDED!!*

## -uart_rx
เป็น module ที่เอาไว้รับข้อมูล uart (Serial) จาก USB-RS232 (Port Micro-usb)
โดยทำงานโดยการ sampling ข้อมูลทุกๆ 16 ticks เมื่อ sample ถึง bit ที่ 8 ให้ส่งสัญญาณ recieved เพื่อเป็นการบอกว่ารับข้อมูลเรียบร้อยแล้ว

## -baudrate_gen
นำ clock มา divide ให้ค่าออกมาเท่ากับ baudrate ทีตั้งไว้ (9600 bits/s)

## -uart
เป็นที่รวม module ของ uart_rx กับ baudrate_gen

## -InputControl
เป็น module ที่เอาไว้ control ค่าของ A/B/opcode ที่รับเข้ามา
การทำงานก็ทำงานโดยการเก็บ state ของการรับข้อมูลโดย state นั้นแบ่งเป็น 4 state ซึ่งก็คือ 
 1. รับข้อมูล A
 2. รับข้อมูล opcode
 3. รับข้อมูล B
 4. แสดงผลลัพท์
การรับข้อมูลนั้นรับโดยการบวกค่า A/B ด้วยค่า 1,10,100,1000 ด้วย key 1,2,3,4 ตามลำดับ และควบคุมค่าที่ติดลบด้วย key n เป็นการเอาค่า -1 ไปคูณกับ A,B ตาม state เมื่ออยู่ใน state ที่ให้ใส่ opcode จะมี input อยู่ 4 แบบก็คือ บวก,ลบ,คูณ,หาร ด้วย key + , - , \* , / ตามลำดับ ทั้งนี้การเปลี่ยน state นั้นจะทำได้โดยการกด key SPACE แต่ว่าหากอยู่ใน state สุดท้ายแล้วจะไม่สามารถ Input หรือ เปลี่ยน state ได้ ต้อง Reset เพียงอย่างเดียว

## -ALU
เป็น module ที่ใช้ในการนำค่า A/B มาทำ operation กันซึ่งตัว operation นั้นจะขึ้นอยู่กับ opcode ที่ได้รับเข้ามาและ นอกจากผลลัพท์จะมีสัญญาณ div0 ที่่จะถูกส่งออกมาเมื่อ B = 0 และ operation เป็น operation การหาร

## -binary2DIG
เป็น module ที่ใช้ในการนำค่า A/B/ผลลัพท์ มาเปลี่ยนเป็นสัญญาณ BCD เพื่อเอาไปควบคุม 7segment display และส่งข้อมูลให้ vga_control เพื่อไปแสดงค่าอีกที โดยส่งข้อมูลออกเป็นสัญญาณ ค่าของ หลัก หน่วย,สิบ,ร้อย,พัน ของ A/B/ ผลลัพท์ ตาม ค่า state ที่ได้รับมา

## -numberCounter
เป็น module ที่เอาไว้นับค่า binary เพื่อให้ผลลัพท์ออกมาเป็นหลักแต่ละหลักในเลข ฐาน 10 เป็น module ที่อยู่ใน binary2DIG อีกที

## -vga_sync
เป็น module ที่ใช้ในการควบคุม timing ของ vga เพื่อใช้ในการควมคุม resolution, refresh rate, โดยการควมคุมตำแหน่งการวาด pixel บนหน้าจอ ซึ่งจะมี ouput เป็นสัญญาณ video_on , p_tick , x , y เพื่อส่งข้อมูลต่ำแหน่งและการเปิดปิดของ pixel บนหน้าจอเพื่อให้ module อันอื่นนำไปใช้ และมีสัญญาณ Hsync และ Vsync เพื่อนำไปควมคุมตัวสัญญาณ Hsync และ Vsync ของ VGA 

## -vga_control
เป็น module ที่ใช้ในการ ควบคุม สัญญาณ RGB ที่จะถูกส่งไปยัง VGA ทำงานโดยการกำหนด bitmap ของค่าแต่ละค่าตั้งแต่ 0-9,N,A,- และเอามาวาดเมื่อ ตำแหน่ง pixel มีค่าตรงกับค่าที่เราต้องการ ซึ่งถูกกำหนดด้วย parameter TOP,BOTTOM,LEFT,RIGHT ของแต่ละตัวอักษร และนำมา Scale-up โดยการ ignore 3 bit แรกของ ค่า x และ y ที่รับเข้ามา

## -digits_rom
เป็น module ที่เอาไว้เก็บข้อมูลของ bitmap เลข0-9 และ ตัวอักศร N , A และ -
