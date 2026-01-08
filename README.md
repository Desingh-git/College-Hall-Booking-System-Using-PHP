# College Hall Booking System

Simple PHP/MySQL venue booking app with Bootstrap UI.

## Description
A lightweight system to browse venues, view available slots and submit booking requests with optional image uploads and permission letters.

## Features
- User registration & login ([register.php](register.php), [login.php](login.php), [logout.php](logout.php))
- Browse and book slots ([pages/book.php](pages/book.php))
- Admin dashboard and booking management ([pages/dashboard.php](pages/dashboard.php))
- File uploads (brochure / permission letter) handled in [business.php](business.php)
- Uses session and DB helpers: [`Session::get`](classes/Session.php), [`DB::getInstance`](classes/DB.php), [`User`](classes/User.php)
- Server-side validation via [`Validate::check`](config/classes/Validate.php)

## Quick start

1. Import the database dumps:
   - [halls.sql](halls.sql)
   - [hallbooking (1).sql](hallbooking (1).sql)

2. Configure DB and app settings in:
   - [config/init.php](config/init.php)

3. Ensure uploads directory is writable:
   - `uploads/`

4. Serve locally (example):
```sh
php -S localhost:8000
```
Open http://localhost:8000 or the URL set in [pages/dashboard.php](pages/dashboard.php).

## Key files
- Entry: [index.php](index.php)  
- Booking API / uploads: [business.php](business.php) (uses [`Session::get`](classes/Session.php), [`DB::getInstance`](classes/DB.php))  
- Pages: [pages/book.php](pages/book.php), [pages/dashboard.php](pages/dashboard.php)  
- Auth UI: [register.php](register.php), [login.php](login.php), [logout.php](logout.php)  
- Core classes: [classes/DB.php](classes/DB.php), [classes/Session.php](classes/Session.php), [classes/User.php](classes/User.php)  
- Validation helper: [config/classes/Validate.php](config/classes/Validate.php) (`Validate::check`)  
- Config: [config/init.php](config/init.php)  
- Assets: [assets/css/style.css](assets/css/style.css), vendor Bootstrap JS/CSS in [assets/vendor/bootstrap/](assets/vendor/bootstrap/) and icons in [assets/vendor/bootstrap-icons/](assets/vendor/bootstrap-icons/)  
- Header/footer includes: [pages/common/header.php](pages/common/header.php), [pages/common/footer.php](pages/common/footer.php)

## Usage
- Register or login to book via [pages/book.php](pages/book.php).
- Admins can manage and view bookings on [pages/dashboard.php](pages/dashboard.php).

## Notes & Troubleshooting
- File uploads (profile/brochure/permission) are sent to [business.php](business.php); confirm PHP `upload_max_filesize` and `post_max_size`.
- If Bootstrap JS features fail, verify vendor scripts in [assets/vendor/bootstrap/js/](assets/vendor/bootstrap/js/).
- If sessions fail, check [`Session`](classes/Session.php) usage and [config/init.php](config/init.php).


