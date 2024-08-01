/*
 Navicat Premium Dump SQL

 Source Server         : guangtong
 Source Server Type    : SQLite
 Source Server Version : 3045000 (3.45.0)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3045000 (3.45.0)
 File Encoding         : 65001

 Date: 01/08/2024 19:32:35
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for guangtong
-- ----------------------------
DROP TABLE IF EXISTS "guangtong";
CREATE TABLE "guangtong" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "username" text NOT NULL,
  "phone" text NOT NULL,
  "left_type" integer,
  "left_level" text,
  "right_type" integer,
  "right_level" text,
  "left_astigmatism" text,
  "right_astigmatism" text,
  "left_axial" text,
  "right_axial" text,
  "pupillary_distance" text,
  "nasal_spacing" text,
  "lens_brands" text,
  "frames_brands" text,
  "lens_prices" real,
  "frames_prices" real,
  "processing_prices" real,
  "rebates" text,
  "total_prices" real,
  "note" text,
  "create_time" integer DEFAULT current_timestamp,
  "update_time" integer DEFAULT current_timestamp
);

-- ----------------------------
-- Auto increment value for guangtong
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 1 WHERE name = 'guangtong';

-- ----------------------------
-- Triggers structure for table guangtong
-- ----------------------------
CREATE TRIGGER "create_time"
AFTER INSERT
ON "guangtong"
BEGIN
  UPDATE guangtong SET create_time = DATETIME('now');
END;
CREATE TRIGGER "update_time"
AFTER UPDATE OF "username", "phone", "left_type", "left_level", "right_type", "right_level", "left_astigmatism", "right_astigmatism", "left_axial", "right_axial", "pupillary_distance", "nasal_spacing", "lens_brands", "frames_brands", "lens_prices", "frames_prices", "processing_prices", "rebates", "total_prices", "note"
ON "guangtong"
BEGIN
  UPDATE guangtong SET update_time = DATETIME('now');
END;

PRAGMA foreign_keys = true;
