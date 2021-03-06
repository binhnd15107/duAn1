<?php

namespace App\Models;

use App\config\DB;

class modelBill extends DB
{
    protected $table = "bill";

    // Thêm Bill khóa học
    public static function insertBill($data)
    {
        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = "INSERT INTO $model->table (student_id,transfer_time,note_bill,code_vnpay,code_back,monney,subject_id)	 VALUES (:student_id,:transfer_time,:note_bill,:code_vnpay,:code_back,:monney,:subject_id)";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute($data);
   
    }
    public static function selectBill($student_id)
    {
        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = " SELECT * FROM bill INNER JOIN subject ON bill.subject_id=subject.subject_id WHERE bill.student_id=:student_id ORDER BY bill.bill_id DESC LIMIT 0,3";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute(['student_id' => $student_id]);
        return $stmt->fetchAll();
    }


    public static function selectBillAll($student_id)
    {
        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = " SELECT * FROM bill INNER JOIN subject ON bill.subject_id=subject.subject_id WHERE bill.student_id=:student_id ORDER BY bill.bill_id DESC ";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute(['student_id' => $student_id]);
        return $stmt->fetchAll();
    }

    //select tất cả bill trong admin theo môn học


    public static function selectBillAllAdmin()
    {
        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = "SELECT COUNT(*)so_luong,MAX(bill.transfer_time)moi_nhat,MIN(bill.transfer_time)cu_nhat,SUM(bill.monney)tong_tien,subject.subject_name,subject.subject_img,bill.subject_id,bill.student_id,bill.code_vnpay,bill.code_back FROM bill JOIN subject ON bill.subject_id=subject.subject_id GROUP BY subject.subject_name HAVING so_luong>0;";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public static function selectBillDetailAdmin($id)
    {

        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = "SELECT * FROM bill INNER JOIN subject ON bill.subject_id=subject.subject_id INNER JOIN student ON bill.student_id=student.student_id WHERE bill.subject_id=:id ORDER BY bill.bill_id DESC";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute(['id' => $id]);
        return $stmt->fetchAll();
    }


    //select tất cả bill trong admin theo môn học
    public static function selectBillSubject($subject_id)
    {

        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = " SELECT * FROM bill INNER JOIN subject ON bill.subject_id=subject.subject_id WHERE bill.subject_id=:subject_id ";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute(['subject_id' => $subject_id]);
        return $stmt->fetchAll();
    }

    // Lấy tất cả doanh thu theo năm 2021
    public static function selectBillYear($year)
    {

        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = " SELECT * FROM bill INNER JOIN subject ON bill.subject_id=subject.subject_id WHERE YEAR(bill.transfer_time)= YEAR(:year)";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute(['year' => $year]);
        return $stmt->fetchAll();
    }

    public static function selectBillDay($date, $dateNow)
    {

        $model = new static;
        $conn = $model->getConnect();
        $queryBuilder = " SELECT * FROM bill INNER JOIN subject ON bill.subject_id=subject.subject_id WHERE bill.transfer_time BETWEEN :date AND :dateNow";
        $stmt = $conn->prepare($queryBuilder);
        $stmt->execute([
            'date' => $date,
            'dateNow' => $dateNow
        ]);
        return $stmt->fetchAll();
    }
}
