<?php

namespace App\Exports;

use App\Models\MahasiswaAdminModel;
use Maatwebsite\Excel\Concerns\FromCollection;

class MahasiswaExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return MahasiswaAdminModel::allData();
    }
}
