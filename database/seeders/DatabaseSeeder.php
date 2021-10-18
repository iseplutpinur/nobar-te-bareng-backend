<?php

namespace Database\Seeders;

use App\Models\Club;
use App\Models\KursiKategori;
use App\Models\Member;
use App\Models\Pemain;
use App\Models\Pertandingan;
use App\Models\Posisi;
use App\Models\Stadion;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // member
        Member::create([
            'name' => 'M Ilham',
            'email' => 'ilham@gmail.com',
            'password' => bcrypt('123456'),
            'whatsapp_no' => '085798132505'
        ]);
        Member::create([
            'name' => 'M taufiq',
            'email' => 'taufiq@gmail.com',
            'password' => bcrypt('123456'),
            'whatsapp_no' => '085798132501'
        ]);

        User::create([
            'name' => 'Isep Lutpi',
            'email' => 'iseplutpi@gmail.com',
            'password' => bcrypt('123456')
        ]);

        // club
        Club::create(['name' => 'PERSIB BANDUNG', 'id' => 1]);
        Club::create(['name' => 'BHAYANGKARA FC']);
        Club::create(['name' => 'PSIS SEMARANG']);
        Club::create(['name' => 'AREMA FC']);
        Club::create(['name' => 'PSM MAKASSAR']);
        Club::create(['name' => 'BALI UNITED']);
        Club::create(['name' => 'PS TIRA']);
        Club::create(['name' => 'PERSIJA']);
        Club::create(['name' => 'PERSEBAYA SURABAYA']);
        Club::create(['name' => 'PERSITA']);
        Club::create(['name' => 'MADURA UNITED']);
        Club::create(['name' => 'PSS SLEMAN']);
        Club::create(['name' => 'BORNEO FC']);
        Club::create(['name' => 'PERSELA LAMONGAN']);
        Club::create(['name' => 'PERSIPURA JAYAPURA']);
        Club::create(['name' => 'PERSIK KEDIRI']);
        Club::create(['name' => 'BARITO PUTERA']);
        Club::create(['name' => 'PERSIRAJA BANDA ACEH']);

        // stadion
        Stadion::create(['name' => 'Gelora Bandung Lautan Api', 'club_id' => 1]);

        // kursi kategori
        KursiKategori::create(['name' => 'VIP', 'start_number' => 1, 'end_number' => 50]);
        KursiKategori::create(['name' => 'BARAT', 'start_number' => 51, 'end_number' => 300]);
        KursiKategori::create(['name' => 'TIMUR', 'start_number' => 301, 'end_number' => 400]);
        KursiKategori::create(['name' => 'SELATAN', 'start_number' => 401, 'end_number' => 500]);

        // posisi
        Posisi::create(['id' => 1, 'name' => 'Kiper']);
        Posisi::create(['id' => 2, 'name' => 'Pemain Belakang']);
        Posisi::create(['id' => 3, 'name' => 'Gelandang']);
        Posisi::create(['id' => 4, 'name' => 'Penyerang']);

        // pemain
        Pemain::create(['club_id' => 1, 'name' => 'M. Natshir', 'posisi_id' => 1]);
        Pemain::create(['club_id' => 1, 'name' => 'Aqil Savik', 'posisi_id' => 1]);
        Pemain::create(['club_id' => 1, 'name' => 'Made Wirawan', 'posisi_id' => 1]);
        Pemain::create(['club_id' => 1, 'name' => 'Teja Paku Alam', 'posisi_id' => 1]);
        Pemain::create(['club_id' => 1, 'name' => 'Henhen Herdiana', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Indra Mustafa', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Supardi Natsir', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Victor Igbonefo', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Ardi Idrus', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Mario Jardel', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Zalnando', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Achmad Jufrianto', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Nick Kuipers', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Kakang', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Bayu Fiqri', 'posisi_id' => 2]);
        Pemain::create(['club_id' => 1, 'name' => 'Dedi Kusnandar', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Febri Hariyadi', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Agung Mulyadi', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Puja Abdillah', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Beckham Putra Nugraha', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Abdul Aziz', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Erwin', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Esteban Vizcarra', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Ardi Maulana', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Marc Klok', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Mohammed Rashid', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Ferdiansyah', 'posisi_id' => 3]);
        Pemain::create(['club_id' => 1, 'name' => 'Frets Butuan', 'posisi_id' => 4]);
        Pemain::create(['club_id' => 1, 'name' => 'Ravil', 'posisi_id' => 4]);
        Pemain::create(['club_id' => 1, 'name' => 'Wander Luiz', 'posisi_id' => 4]);
        Pemain::create(['club_id' => 1, 'name' => 'Geofrrey Castillion', 'posisi_id' => 4]);
        Pemain::create(['club_id' => 1, 'name' => 'Ezra Walian', 'posisi_id' => 4]);

        // pertandingan
        Pertandingan::create([
            'club_id_1' => 2,
            'club_id_2' => 1,
            'stadion_id' => 1,
            'tanggal' => '2021-10-16',
            'jam' => '20:45:00'
        ]);
    }
}
