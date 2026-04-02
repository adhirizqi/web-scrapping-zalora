BEGIN TRANSACTION;
CREATE TABLE rekomendasi (
	"Nama Produk" TEXT, 
	"Harga Produk" BIGINT, 
	"Nama Toko" TEXT, 
	"Rating Produk" FLOAT, 
	"Paling Populer" BIGINT
);
INSERT INTO "df" VALUES('POLICE Kemeja Salur Printing Regular Fit Pria',399000,'Police Denim',5.0,1);
INSERT INTO "df" VALUES('Cotton Dobby Shirt KLL602',479500,'Lois Jeans',5.0,1);
INSERT INTO "df" VALUES('Long Sleeve Micro Stripe Shirt',429900,'WOOD',5.0,1);
INSERT INTO "df" VALUES('Regular Fit Short Sleeve Oxford Shirt',399900,'WOOD',5.0,1);
INSERT INTO "df" VALUES('MOC - Kemeja Batik Pria Lengan Panjang Balereng - White Warna White',379900,'MOC',5.0,1);
INSERT INTO "df" VALUES('Cotton Dobby Cheked Shirt KLS604',469500,'Lois Jeans',5.0,1);
INSERT INTO "df" VALUES('BASTIEN - BLACK GREY Kemeja Flannel Casual Pria Lengan Panjang LS - Top Man Shirt',499900,'Edwin Jeans',5.0,1);
INSERT INTO "df" VALUES('POLICE Kemeja Polos Oxford Slub Regular Fit Pria Abu',399000,'Police Denim',4.9,1);
INSERT INTO "df" VALUES('Greggory Shirts',449900,'X-EIGHT',4.9,1);
INSERT INTO "df" VALUES('POLICE Kemeja Abstrak Printing Navy Regular Fit Pria',399000,'Police Denim',4.9,1);
COMMIT;
