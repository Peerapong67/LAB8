# พีรพงศ์ ปัญญาสัน 67543210042-7
# LAB8 - แอปสาธิต Material 3

แอปนี้สร้างด้วย Flutter เพื่อแสดงตัวอย่างการใช้งาน UI Components ต่างๆ ในสไตล์ Material 3 แต่ละหน้าจะมี Demo ให้ลองกดและโค้ดตัวอย่างให้ศึกษา

## วิธีรันโปรเจกต์

```bash
flutter pub get
flutter run
```

## หน้าต่างๆ ในแอป

| หน้า | มีอะไรบ้าง |
|------|-----------|
| หน้าหลัก | เมนูรวมทุกหมวดหมู่ |
| Actions | ปุ่มกด, FAB, Icon Button |
| Communication | Snackbar, Dialog, Badge |
| Containment | Card, Divider, List |
| Navigation | NavigationBar |
| Selection | Checkbox, Radio, Switch, Slider |
| Text Input | TextField, ช่องกรอกข้อมูล |

## โครงสร้างไฟล์

```
lib/
├── main.dart              # ไฟล์หลัก ตั้งค่าธีมและเส้นทาง (routes)
└── pages/
    ├── home_page.dart     # หน้าแรก
    ├── actions_page.dart
    ├── communication_page.dart
    ├── containment_page.dart
    ├── navigation_page.dart
    ├── selection_page.dart
    └── input_page.dart
```
