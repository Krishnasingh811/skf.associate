# SKF CRM - Laravel Starter

## Quick install (local - docker)
1. Copy files into a new repo or folder.
2. Create `.env` from `.env.example` and set APP_KEY (run php artisan key:generate later).
3. Build and run:
   docker compose up -d --build
4. Enter the app container or run migrations from host (with composer installed):
   docker exec -it <container_name> bash
   php artisan migrate --seed
5. Create storage link:
   php artisan storage:link
6. Visit http://localhost:8000

## Seed user (tinker or seeder)
Create an admin user:

// use tinker
php artisan tinker
\App\Models\User::create(['name'=>'Admin','email'=>'admin@skf.test','password'=>bcrypt('secret'), 'role'=>'admin']);

## Notes & next steps
- Add WhatsApp API integration (Gupshup/Infobip/Twilio) by building Notification channels.
- Add bank file tracker model and UI (example FileLogs table).
- Hardening: set APP_KEY, disable debug, configure HTTPS in production.
