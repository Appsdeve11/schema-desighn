+-------------------+       +------------------+
|       Doctor      |       |      Patient     |
+-------------------+       +------------------+
| doctor_id (PK)    |<------| patient_id (PK)  |
| name              |       | name             |
| specialization    |       | date_of_birth    |
| ...               |       | ...              |
+-------------------+       +------------------+
         |
         |  +-------------------+
         +--|       Visit       |
            +-------------------+
            | visit_id (PK)     |
            | doctor_id (FK)    |
            | patient_id (FK)   |
            | visit_date        |
            | diagnosis         |
            | ...               |
            +-------------------+