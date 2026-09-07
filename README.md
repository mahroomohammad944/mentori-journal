# Mentori Journal

نسخه دسکتاپ ویندوز Mentori Journal بر پایه V14.14.

## ساخت Installer با Inno Setup 6

Repository شامل Launcher ویندوز، فایل Inno Setup 6 و GitHub Actions برای ساخت `Setup.exe` است.

### یک مرحله باقی‌مانده
فایل فعلی برنامه را با نام دقیق زیر در Repository قرار دهید:

`app/mentori-journal.html`

بعد از قرار گرفتن فایل، Workflow با هر Push روی `main` اجرا می‌شود و `Mentori-Journal-Setup-v14.14.exe` را به‌صورت Artifact می‌سازد.

### ساخت محلی
1. Inno Setup 6 را نصب کنید.
2. مطمئن شوید `app/mentori-journal.html` وجود دارد.
3. `installer/Mentori-Journal.iss` را Compile کنید.

> داده‌های برنامه محلی هستند و Cloud Sync هنوز در این نسخه فعال نیست.
