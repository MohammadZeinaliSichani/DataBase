افزودن آگهی جدید :

INSERT INTO agahi (id,title,phone,gheymat,description,group,city,code)
VALUES ("1","Mobile Samsung","09920266796","18000000","Stock Phone,Mobile,Isfahan,?")

حذف (نرم) آگهی :

UPDATE agahi
SET Status = 'DeActive'
WHERE Id = 1

گرفتن لیست همه آگهی ها :

SELECT * agahi
