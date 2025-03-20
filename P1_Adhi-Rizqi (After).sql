BEGIN TRANSACTION;
CREATE TABLE table_name (
	"Nama Produk" TEXT, 
	"Harga Produk" INTEGER, 
	"Nama Toko" TEXT, 
	"Rating Produk" FLOAT, 
	"Paling Populer" TEXT
);
INSERT INTO "table_name" VALUES('EQ Zed solid RXD ss STREET',299900,'H&M',4.9,'Paling Populer');
INSERT INTO "table_name" VALUES('LUCAS REG LINEN LS SHIRT',429900,'H&M',4.9,'Paling Populer');
INSERT INTO "table_name" VALUES('ELLIOT OVZ LS',499900,'H&M',4.8,'Paling Populer');
COMMIT;
