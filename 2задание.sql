/* Со 2 заданием возникли сложности. Удалось только подсчитать кол-во символов в строке в запросе.*/


CREATE TABLE Art (
	id_Art int NOT NULL PRIMARY KEY,
	Value varchar(50)
)

INSERT INTO Art VALUES (1,'dsdsds23232');

/*Следующий запрос рабочий: */
select id_Art AS ID, len(Art.Value) AS 'Количество символов'
	from Art
	where Art.Value like '%[^0-9]%';



CREATE FUNCTION count_numbers(@value varchar)
RETURNS INT
as
BEGIN
	declare @k int
	Select @k=Len(@value)
	from Art 
	where Art.Value like '%[^0-9]%';
	return @k
END;
GO
