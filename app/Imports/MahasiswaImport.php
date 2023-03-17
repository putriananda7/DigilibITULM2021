<?php

namespace App\Imports;

use App\Models\Mahasiswa;
use App\Models\MahasiswaAdminModel;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class MahasiswaImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        $data = ([
            'nama_mhs'     => $row['nama'],
            'angkatan_mhs'    => $row['angkatan'],
            'username_mhs'    => $row['nim'], 
            'password_mhs' => md5($row['nim']),
        ]);
        $this->MahasiswaAdminModel->addComent($data);
    }
}
