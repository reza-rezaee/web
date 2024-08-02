
CREATE TABLE IF NOT EXISTS post_mymodels (
	id	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	my_file	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS post_konkor_doctora (
	id	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	image	varchar(100) NOT NULL,
	news	text NOT NULL,
	video	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS post_emtehan_nahaii (
	id	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	status	varchar(60) NOT NULL,
	slug	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS post_nafarat (
	id	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	status	varchar(60) NOT NULL,
	summery	varchar(150) NOT NULL
);
CREATE TABLE IF NOT EXISTS post_moshavere (
	id	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	status	varchar(60) NOT NULL,
	slug	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS post_konkor_arshad (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"status"	varchar(60) NOT NULL,
	"image"	varchar(100) NOT NULL,
	"news"	text NOT NULL,
	"video"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "post_jozve" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"status"	varchar(60) NOT NULL,
	"slug"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "post_class" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"status"	varchar(60) NOT NULL,
	"slug"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "post_azmon" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"status"	varchar(60) NOT NULL,
	"slug"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "post_konkor_sarasari" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"status"	varchar(60) NOT NULL,
	"image"	varchar(100) NOT NULL,
	"news"	text NOT NULL,
	"video"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "post_tizhoshan" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"image"	varchar(100) NOT NULL,
	"news"	text NOT NULL,
	"status"	varchar(60) NOT NULL,
	"video"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"first_name"	varchar(150) NOT NULL
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar(150) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"action_flag"	smallint unsigned NOT NULL CHECK("action_flag">=0),
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_time"	datetime NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL
);
INSERT INTO "post_konkor_arshad" ("id","status","image","news","video") VALUES (1,'Ministry of Science 1','','kkuygftdfghjkjjhgcfghjkl','');
INSERT INTO "django_session" ("session_key","session_data","expire_date") VALUES ('9zw80vtd0a9jredraafvsi6go7uegriv','.eJxVjMsOwiAQRf-FtSHDY1pw6d5vIMwAUjU0Ke3K-O_apAvd3nPOfYkQt7WGreclTEmchRKn340iP3LbQbrHdpslz21dJpK7Ig_a5XVO-Xk53L-DGnv91jiiyuid0zBYV4CsLjETJc1UUDv0hkFzhmKSAbZqIMMKvdJmRLQg3h_PcTcC:1rmAxa:x8wLHnOPzq7ErOsAk94xa1ZMiEFKQujo00sW2UW-1K4','2024-04-01 11:15:18.585509'),
 ('90z77d90aond078si514v2uociuwo9y9','.eJxVjMsOwiAQRf-FtSHDY1pw6d5vIMwAUjU0Ke3K-O_apAvd3nPOfYkQt7WGreclTEmchRKn340iP3LbQbrHdpslz21dJpK7Ig_a5XVO-Xk53L-DGnv91jiiyuid0zBYV4CsLjETJc1UUDv0hkFzhmKSAbZqIMMKvdJmRLQg3h_PcTcC:1rrztl:e-oCE6_z6bCITFaYdX_tgt0myrDQu6KTwjaf03nzPzs','2024-04-17 12:39:25.395837'),
 ('0e8s3208k05x731a63t6xonl3nle0naj','.eJxVjMsOwiAQRf-FtSHDY1pw6d5vIMwAUjU0Ke3K-O_apAvd3nPOfYkQt7WGreclTEmchRKn340iP3LbQbrHdpslz21dJpK7Ig_a5XVO-Xk53L-DGnv91jiiyuid0zBYV4CsLjETJc1UUDv0hkFzhmKSAbZqIMMKvdJmRLQg3h_PcTcC:1rsnKs:Ocqw87mzzP3AKjQEUum80zBqgg9GzIEnuq4lhTWN038','2024-04-19 17:26:42.432501'),
 ('5dh946pgz98dbb1gvel4q5npg2l8khga','.eJxVjMsOwiAQRf-FtSHDY1pw6d5vIMwAUjU0Ke3K-O_apAvd3nPOfYkQt7WGreclTEmchRKn340iP3LbQbrHdpslz21dJpK7Ig_a5XVO-Xk53L-DGnv91jiiyuid0zBYV4CsLjETJc1UUDv0hkFzhmKSAbZqIMMKvdJmRLQg3h_PcTcC:1rvgZk:Df1dYI3k-OrbPS_a6NwkvDWU90V5Q4ZBXJHeDZthX_s','2024-04-27 16:50:00.596631'),
 ('1jtznbq2fnc3uoja1tatcurwc5apbbwp','.eJxVjDsOwjAQRO_iGlnx36ak5wzW2rvGAeRIcVIh7g6WUkAxzbw382IR9q3GvdMaZ2RnJtjpt0uQH9QGwDu028Lz0rZ1Tnwo_KCdXxek5-Vw_w4q9Ppd-5SMFMHr4PKURIFStLVeZG2EVapYGvHSBAJdIE1OKYmY0SkiJMneH9rkOD4:1rwaP5:jSRxVHgOzheZ1zoFunTHL-9SINaQ6GEGsc1gOblMKzA','2024-04-30 04:26:43.444051'),
 ('00fnttee7usi4b0hblxksnupkhwg4zj2','.eJxVjDsOwjAQRO_iGlnx36ak5wzW2rvGAeRIcVIh7g6WUkAxzbw382IR9q3GvdMaZ2RnJtjpt0uQH9QGwDu028Lz0rZ1Tnwo_KCdXxek5-Vw_w4q9Ppd-5SMFMHr4PKURIFStLVeZG2EVapYGvHSBAJdIE1OKYmY0SkiJMneH9rkOD4:1rwaQF:BkOCczYs9-T4ByAon1PvKURR5ot5kcXOvb5Y4Xrep0o','2024-04-30 04:27:55.707933'),
 ('vjw0k0unkd0f0hwz9t5tu5bfxtmn1twm','.eJxVjDsOwjAQRO_iGlnx36ak5wzW2rvGAeRIcVIh7g6WUkAxzbw382IR9q3GvdMaZ2RnJtjpt0uQH9QGwDu028Lz0rZ1Tnwo_KCdXxek5-Vw_w4q9Ppd-5SMFMHr4PKURIFStLVeZG2EVapYGvHSBAJdIE1OKYmY0SkiJMneH9rkOD4:1rwjg8:K5GFZQaMgDSkeuGNKw50NiFJpgb55153165uX3jeY4E','2024-04-30 14:20:56.073840');
INSERT INTO "auth_user" ("id","password","last_login","is_superuser","username","last_name","email","is_staff","is_active","date_joined","first_name") VALUES (1,'pbkdf2_sha256$720000$oHARMhyRk2QfiMMGE3npUC$Ry4n/ADRA7PkB1r1yHCEh+riqZuyZKQyjII8e5NfpzU=','2024-04-16 14:20:56.068855',1,'rezarezaee','','rezarezaee13966@gmail.com',1,1,'2024-03-18 11:14:37.608366','');
INSERT INTO "auth_permission" ("id","content_type_id","codename","name") VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,1,'view_logentry','Can view log entry'),
 (5,2,'add_permission','Can add permission'),
 (6,2,'change_permission','Can change permission'),
 (7,2,'delete_permission','Can delete permission'),
 (8,2,'view_permission','Can view permission'),
 (9,3,'add_group','Can add group'),
 (10,3,'change_group','Can change group'),
 (11,3,'delete_group','Can delete group'),
 (12,3,'view_group','Can view group'),
 (13,4,'add_user','Can add user'),
 (14,4,'change_user','Can change user'),
 (15,4,'delete_user','Can delete user'),
 (16,4,'view_user','Can view user'),
 (17,5,'add_contenttype','Can add content type'),
 (18,5,'change_contenttype','Can change content type'),
 (19,5,'delete_contenttype','Can delete content type'),
 (20,5,'view_contenttype','Can view content type'),
 (21,6,'add_session','Can add session'),
 (22,6,'change_session','Can change session'),
 (23,6,'delete_session','Can delete session'),
 (24,6,'view_session','Can view session'),
 (25,7,'add_tizhoshan','Can add tizhoshan'),
 (26,7,'change_tizhoshan','Can change tizhoshan'),
 (27,7,'delete_tizhoshan','Can delete tizhoshan'),
 (28,7,'view_tizhoshan','Can view tizhoshan'),
 (29,8,'add_konkor_sarasari','Can add konkor_sarasari'),
 (30,8,'change_konkor_sarasari','Can change konkor_sarasari'),
 (31,8,'delete_konkor_sarasari','Can delete konkor_sarasari'),
 (32,8,'view_konkor_sarasari','Can view konkor_sarasari'),
 (33,12,'add_azmon','Can add azmon'),
 (34,12,'change_azmon','Can change azmon'),
 (35,12,'delete_azmon','Can delete azmon'),
 (36,12,'view_azmon','Can view azmon'),
 (37,11,'add_class','Can add class'),
 (38,11,'change_class','Can change class'),
 (39,11,'delete_class','Can delete class'),
 (40,11,'view_class','Can view class'),
 (41,10,'add_jozve','Can add jozve'),
 (42,10,'change_jozve','Can change jozve'),
 (43,10,'delete_jozve','Can delete jozve'),
 (44,10,'view_jozve','Can view jozve'),
 (45,9,'add_konkor_arshad','Can add konkor_arshad'),
 (46,9,'change_konkor_arshad','Can change konkor_arshad'),
 (47,9,'delete_konkor_arshad','Can delete konkor_arshad'),
 (48,9,'view_konkor_arshad','Can view konkor_arshad'),
 (49,13,'add_moshavere','Can add moshavere'),
 (50,13,'change_moshavere','Can change moshavere'),
 (51,13,'delete_moshavere','Can delete moshavere'),
 (52,13,'view_moshavere','Can view moshavere'),
 (53,14,'add_nafarat','Can add nafarat'),
 (54,14,'change_nafarat','Can change nafarat'),
 (55,14,'delete_nafarat','Can delete nafarat'),
 (56,14,'view_nafarat','Can view nafarat'),
 (57,15,'add_emtehan_nahaii','Can add emtehan_nahaii'),
 (58,15,'change_emtehan_nahaii','Can change emtehan_nahaii'),
 (59,15,'delete_emtehan_nahaii','Can delete emtehan_nahaii'),
 (60,15,'view_emtehan_nahaii','Can view emtehan_nahaii'),
 (61,16,'add_konkor_doctora','Can add konkor_doctora'),
 (62,16,'change_konkor_doctora','Can change konkor_doctora'),
 (63,16,'delete_konkor_doctora','Can delete konkor_doctora'),
 (64,16,'view_konkor_doctora','Can view konkor_doctora'),
 (65,17,'add_mymodels','Can add my models'),
 (66,17,'change_mymodels','Can change my models'),
 (67,17,'delete_mymodels','Can delete my models'),
 (68,17,'view_mymodels','Can view my models');
INSERT INTO "django_content_type" ("id","app_label","model") VALUES (1,'admin','logentry'),
 (2,'auth','permission'),
 (3,'auth','group'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'post','tizhoshan'),
 (8,'post','konkor_sarasari'),
 (9,'post','konkor_arshad'),
 (10,'post','jozve'),
 (11,'post','class'),
 (12,'post','azmon'),
 (13,'post','moshavere'),
 (14,'post','nafarat'),
 (15,'post','emtehan_nahaii'),
 (16,'post','konkor_doctora'),
 (17,'post','mymodels');
INSERT INTO "django_admin_log" ("id","object_id","object_repr","action_flag","change_message","content_type_id","user_id","action_time") VALUES (1,'1','.ghjkjhgdfgm',1,'[{"added": {}}]',7,1,'2024-04-05 18:56:42.800246'),
 (2,'1','.ghjkjhgdfgm',3,'',7,1,'2024-04-05 18:57:14.933489'),
 (3,'1','مسمکیبیسپی',1,'[{"added": {}}]',7,1,'2024-04-05 19:02:34.352641'),
 (4,'1','car.jpg.pngمسمکیبیسپی',2,'[{"changed": {"fields": ["\u062a\u0635\u0648\u06cc\u0631"]}}]',7,1,'2024-04-05 19:05:38.635624'),
 (5,'1','njkzchkjb.Math',1,'[{"added": {}}]',8,1,'2024-04-06 13:34:38.664633'),
 (6,'1','njkzchkjb.Math',3,'',8,1,'2024-04-06 13:34:48.160927'),
 (7,'1','kkuygftdfghjkjjhgcfghjkl.Ministry of Science 1',1,'[{"added": {}}]',9,1,'2024-04-07 05:22:57.932045'),
 (8,'2','hghgfcgvbhjnm.First high school',1,'[{"added": {}}]',7,1,'2024-04-09 11:43:58.862743'),
 (9,'2','hghgfcgvbhjnm.First high school',3,'',7,1,'2024-04-09 11:44:14.310818'),
 (10,'1','car.jpg.pngمسمکیبیسپیVID-20200804-WA0050_rmoLgp0.mp4.First high school',3,'',7,1,'2024-04-09 11:44:14.321780'),
 (11,'1','rezarezaee',2,'[{"changed": {"fields": ["password"]}}]',4,1,'2024-04-16 04:26:43.438847');
INSERT INTO "django_migrations" ("id","app","name","applied") VALUES (1,'contenttypes','0001_initial','2024-03-18 11:12:12.208753'),
 (2,'auth','0001_initial','2024-03-18 11:12:12.224376'),
 (3,'admin','0001_initial','2024-03-18 11:12:12.224376'),
 (4,'admin','0002_logentry_remove_auto_add','2024-03-18 11:12:12.240003'),
 (5,'admin','0003_logentry_add_action_flag_choices','2024-03-18 11:12:12.240003'),
 (6,'contenttypes','0002_remove_content_type_name','2024-03-18 11:12:12.255624'),
 (7,'auth','0002_alter_permission_name_max_length','2024-03-18 11:12:12.255624'),
 (8,'auth','0003_alter_user_email_max_length','2024-03-18 11:12:12.271237'),
 (9,'auth','0004_alter_user_username_opts','2024-03-18 11:12:12.271237'),
 (10,'auth','0005_alter_user_last_login_null','2024-03-18 11:12:12.286898'),
 (11,'auth','0006_require_contenttypes_0002','2024-03-18 11:12:12.286898'),
 (12,'auth','0007_alter_validators_add_error_messages','2024-03-18 11:12:12.286898'),
 (13,'auth','0008_alter_user_username_max_length','2024-03-18 11:12:12.302478'),
 (14,'auth','0009_alter_user_last_name_max_length','2024-03-18 11:12:12.302478'),
 (15,'auth','0010_alter_group_name_max_length','2024-03-18 11:12:12.318134'),
 (16,'auth','0011_update_proxy_permissions','2024-03-18 11:12:12.318134'),
 (17,'auth','0012_alter_user_first_name_max_length','2024-03-18 11:12:12.333696'),
 (18,'sessions','0001_initial','2024-03-18 11:12:12.333696'),
 (19,'post','0001_initial','2024-04-05 17:25:55.799355'),
 (20,'post','0002_tizhoshan_status','2024-04-05 18:29:23.328743'),
 (21,'post','0003_tizhoshan_video','2024-04-05 19:02:25.497480'),
 (22,'post','0004_alter_tizhoshan_video','2024-04-05 19:04:17.508649'),
 (23,'post','0005_alter_tizhoshan_video','2024-04-05 19:16:29.687416'),
 (24,'post','0006_konkor_sarasari_alter_tizhoshan_status','2024-04-06 13:25:46.027791'),
 (25,'post','0007_azmon_class_jozve_konkor_arshad','2024-04-06 15:41:53.240843'),
 (26,'post','0008_moshavere_nafarat','2024-04-06 15:50:06.694486'),
 (27,'post','0009_emtehan_nahaii_alter_jozve_status','2024-04-06 15:58:52.528890'),
 (28,'post','0010_konkor_doctora_alter_azmon_status_alter_class_status_and_more','2024-04-16 04:24:32.925063'),
 (29,'post','0011_mymodels','2024-04-30 14:09:49.871333');
CREATE INDEX IF NOT EXISTS "post_emtehan_nahaii_slug_89db098a" ON "post_emtehan_nahaii" (
	"slug"
);
CREATE INDEX IF NOT EXISTS "post_moshavere_slug_c6283ad2" ON "post_moshavere" (
	"slug"
);
CREATE INDEX IF NOT EXISTS "post_jozve_slug_2698f1de" ON "post_jozve" (
	"slug"
);
CREATE INDEX IF NOT EXISTS "post_class_slug_2878b3c9" ON "post_class" (
	"slug"
);
CREATE INDEX IF NOT EXISTS "post_azmon_slug_19864abd" ON "post_azmon" (
	"slug"
);
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
