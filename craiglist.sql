+-------------------+        +------------------+       +------------------+
|       Region      |        |       User       |       |      Post        |
+-------------------+        +------------------+       +------------------+
| region_id (PK)    |        | user_id (PK)     |       | post_id (PK)     |
| region_name       |        | username         |       | title            |
| ...               |        | preferred_region |       | text             |
+-------------------+        | ...              |       | location         |
                              +------------------+       | region_id (FK)   |
                                                         | user_id (FK)     |
                                                         +------------------+
                                                                |
                                                                |
                                                     +------------------+
                                                     |     Category     |
                                                     +------------------+
                                                     | category_id (PK) |
                                                     | category_name    |
                                                     +------------------+
                                                     | post_id (FK)     |
                                                     +------------------+