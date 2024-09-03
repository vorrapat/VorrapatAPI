const express = require('express');
const mysql = require('mysql2');
const multer = require('multer');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());
app.use('/uploads', express.static('uploads'));

// กำหนดการเก็บไฟล์ที่อัปโหลด
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/');
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + '-' + file.originalname);
    }
});
const upload = multer({ storage: storage });

// เชื่อมต่อกับฐานข้อมูล
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'CarDatabase'
});

db.connect(err => {
    if (err) {
        throw err;
    }
    console.log('MySQL Connected...');
});

// Route สำหรับดึงข้อมูลจากตาราง Cars
app.get('/cars', (req, res) => {
    const sql = "SELECT * FROM cars ORDER BY id DESC LIMIT 1";  // ดึงข้อมูลรถที่มี ID ล่าสุด
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.json(result[0]);  // ส่งข้อมูลรถคันล่าสุดกลับไป
    });
});

// Route สำหรับบันทึกข้อมูลรถพร้อมอัปโหลดไฟล์
app.post('/cars', upload.single('image'), (req, res) => {
    console.log('Received request body:', req.body); // ตรวจสอบข้อมูลที่รับมา
    const { brand, model, mfg, color, price, gear_type, fuel_type, doors, seats } = req.body;
    const image_url = req.file ? `/uploads/${req.file.filename}` : null;
    const sql = 'INSERT INTO cars (brand, model, mfg, color, price, gear_type, fuel_type, doors, seats, image_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
    const values = [brand, model, mfg, color, price, gear_type, fuel_type, doors, seats, image_url];

    db.query(sql, values, (err, result) => {
        if (err) {
            console.error('Error executing query:', err);
            res.status(500).send('Error occurred');
            return;
        }
        res.json({ id: result.insertId, ...req.body, image_url });
    });
});

// เริ่มเซิร์ฟเวอร์
app.listen(3000, '0.0.0.0', () => {
    console.log('Server started on port 3000');
});