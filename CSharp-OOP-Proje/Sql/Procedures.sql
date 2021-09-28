--create procedure OgrenciListesi
--as
--Select * from Ogrenci

--create procedure OgrenciEkle
--@Ad varchar(20),
--@Soyad varchar(30),
--@Fotograf varchar(50),
--@KulupId smallint
--as
--insert into Ogrenci(ogrAd,ogrSoyad,ogrFotograf,ogrKulupId) 
--values(@Ad,@Soyad,@Fotograf,@KulupId)

--create procedure OgrenciGuncelle
--@Ad varchar(20),
--@Soyad varchar(30),
--@fotograf varchar(50),
--@kulupId smallint,
--@id int
--as
--update Ogrenci set ogrAd=@Ad, ogrSoyad=@Soyad,ogrFotograf=@fotograf,ogrKulupId=@kulupId
--where
--ogrId=@id

--create procedure OgrenciSil
--@id int
--as
--delete from Ogrenci where ogrId=@id


-- Kulupler

--create procedure KulupListesi
--as 
--select * from Kulup

--create procedure KulupEkle
--@Ad varchar(20),
--@Aciklama varchar(200)
--as
--insert into Kulup (klpAd,klpAciklama) 
--values(@Ad,@Aciklama)

--create procedure KulupGuncelle
--@Ad varchar(20),
--@Aciklama varchar(200),
--@id tinyint
--as
--update Kulup 
--set
--klpAd=@Ad, klpAciklama=@Aciklama
--where
--klpId=@id


--create procedure KulupSil
--@id tinyint
--as
--delete from Kulup where klpId=@id

--------------------------------------------
----Trigger
--create trigger OgrenciNot
--on Ogrenci
--after insert
--as
--declare @id smallint
--select @id=ogrId from inserted
--insert into Notlar (notOgrId) values(@id)


-----------------------------------------------

--create proc NotGuncelle
--@notOgrId smallint,
--@notSinav1 tinyint,
--@notSinav2 tinyint,
--@notSinav3 tinyint,
--@notProje tinyint,@notOrtalama decimal(18,2),
--@notDurum bit
--as
--update Notlar set notSinav1 = @notSinav1, notSinav2=@notSinav2, notSinav3=@notSinav3,
--notProje=@notProje,notDurum=@notDurum
--where
--notOgrId=@notOgrId

-------------------------------------------

--create procedure NotListesi
--as
--select ogrAd,ogrSoyad, notSinav1,notSinav2,notSinav3,notProje,notOrtalama,notDurum 
--from Notlar inner join Ogrenci
--on Ogrenci.ogrId=Notlar.notOgrId

-------------------------------------------
