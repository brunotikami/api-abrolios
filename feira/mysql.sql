PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2016-11-15 10:34:43.199762');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2016-11-15 10:34:43.451400');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2016-11-15 10:34:43.687984');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2016-11-15 10:34:43.873047');
INSERT INTO "django_migrations" VALUES(5,'contenttypes','0002_remove_content_type_name','2016-11-15 10:34:44.067075');
INSERT INTO "django_migrations" VALUES(6,'auth','0002_alter_permission_name_max_length','2016-11-15 10:34:44.225349');
INSERT INTO "django_migrations" VALUES(7,'auth','0003_alter_user_email_max_length','2016-11-15 10:34:44.479201');
INSERT INTO "django_migrations" VALUES(8,'auth','0004_alter_user_username_opts','2016-11-15 10:34:44.625269');
INSERT INTO "django_migrations" VALUES(9,'auth','0005_alter_user_last_login_null','2016-11-15 10:34:44.799980');
INSERT INTO "django_migrations" VALUES(10,'auth','0006_require_contenttypes_0002','2016-11-15 10:34:44.882622');
INSERT INTO "django_migrations" VALUES(11,'auth','0007_alter_validators_add_error_messages','2016-11-15 10:34:45.025000');
INSERT INTO "django_migrations" VALUES(12,'auth','0008_alter_user_username_max_length','2016-11-15 10:34:45.183260');
INSERT INTO "django_migrations" VALUES(13,'feiraapp','0001_initial','2016-11-15 10:34:45.316861');
INSERT INTO "django_migrations" VALUES(14,'sessions','0001_initial','2016-11-15 10:34:45.490330');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','permission');
INSERT INTO "django_content_type" VALUES(3,'auth','user');
INSERT INTO "django_content_type" VALUES(4,'auth','group');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'feiraapp','feira');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(5,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(6,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(7,3,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(8,3,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(9,3,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(10,4,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(11,4,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(12,4,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(16,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(17,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(18,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(19,7,'add_feira','Can add feira');
INSERT INTO "auth_permission" VALUES(20,7,'change_feira','Can change feira');
INSERT INTO "auth_permission" VALUES(21,7,'delete_feira','Can delete feira');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$30000$8uAiEAGDe28W$305S7Nsc5zUQy+eGBf/NYwApD6axiKwVQCdNVPSEkWU=','2016-11-15 10:36:17.920726',1,'','','ricaportela@gmail.com',1,1,'2016-11-15 10:35:41.238508','admin');
CREATE TABLE "feiraapp_feira" ("id" varchar(8) NOT NULL PRIMARY KEY, "longitude" varchar(10) NOT NULL, "latitude" varchar(10) NOT NULL, "setcens" varchar(15) NOT NULL, "areap" varchar(13) NOT NULL, "coddist" varchar(9) NOT NULL, "distrito" varchar(18) NOT NULL, "codsubpref" varchar(2) NOT NULL, "subpref" varchar(25) NOT NULL, "regiao5" varchar(6) NOT NULL, "regiao8" varchar(7) NOT NULL, "nome_feira" varchar(30) NOT NULL, "registro" varchar(6) NOT NULL, "logradouro" varchar(34) NOT NULL, "numero" varchar(5) NOT NULL, "bairro" varchar(20) NOT NULL, "referencia" varchar(24) NOT NULL);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('63cib74w7fsi7dl1vxwpfsdwjwmumvud','NTE4NjFlNjMzY2JmNDE5NzFkY2JiN2M0YjNkNjdjNTVmZmY5YjBkZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OGIzYmQxYTc0MzA2NzVkNDY5NzEzZTUxNWM1ZTdkZTU3ZWQzMzM4In0=','2016-11-29 10:36:18.018406');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',14);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',0);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',7);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',21);
INSERT INTO "sqlite_sequence" VALUES('auth_user',1);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
COMMIT;
