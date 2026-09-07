# Mentori Journal

نسخه دسکتاپ ویندوز Mentori Journal بر پایه V14.14.

## ساخت Installer با Inno Setup 6

این Repository شامل سورس برنامه به‌صورت payload فشرده، Launcher ویندوز، فایل Inno Setup و GitHub Actions است.

### ساخت خودکار در GitHub
هر Push روی `main` Workflow ویندوز را اجرا می‌کند و خروجی `Mentori-Journal-Setup-v14.14.exe` را به‌صورت Artifact می‌سازد.

### ساخت محلی
1. Inno Setup 6 را نصب کنید.
2. ابتدا payload را با اسکریپت `tools/restore-app.ps1` بازسازی کنید.
3. فایل `installer/Mentori-Journal.iss` را با Inno Setup 6 کامپایل کنید.

> داده‌های برنامه محلی هستند و Cloud Sync هنوز در این نسخه فعال نیست.
