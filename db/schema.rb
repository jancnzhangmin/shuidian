# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160410224548) do

  create_table "abcs", force: :cascade do |t|
    t.integer  "num",        limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "login",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "authority",       limit: 255
    t.integer  "status",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "couns", force: :cascade do |t|
    t.string   "guojia",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "guojia",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "expands", force: :cascade do |t|
    t.string   "expandname",          limit: 255
    t.integer  "yeji_id",             limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "expand_file_name",    limit: 255
    t.string   "expand_content_type", limit: 255
    t.integer  "expand_file_size",    limit: 4
    t.datetime "expand_updated_at"
  end

  create_table "expandtypes", force: :cascade do |t|
    t.integer  "expandtype", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "guojia", force: :cascade do |t|
    t.string   "guojia",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "hetongs", force: :cascade do |t|
    t.string   "hetong",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "huojiangzhenshus", force: :cascade do |t|
    t.integer  "zhengzhao_id",         limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "zhenshu_file_name",    limit: 255
    t.string   "zhenshu_content_type", limit: 255
    t.integer  "zhenshu_file_size",    limit: 4
    t.datetime "zhenshu_updated_at"
  end

  create_table "jianlis", force: :cascade do |t|
    t.integer  "peo_id",              limit: 4
    t.string   "jianliname",          limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "jianli_file_name",    limit: 255
    t.string   "jianli_content_type", limit: 255
    t.integer  "jianli_file_size",    limit: 4
    t.datetime "jianli_updated_at"
  end

  create_table "jueses", force: :cascade do |t|
    t.string   "juese",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "language",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "flag_file_name",    limit: 255
    t.string   "flag_content_type", limit: 255
    t.integer  "flag_file_size",    limit: 4
    t.datetime "flag_updated_at"
  end

  create_table "peoatts", force: :cascade do |t|
    t.integer  "peo_id",             limit: 4
    t.string   "keyword",            limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "attch_file_name",    limit: 255
    t.string   "attch_content_type", limit: 255
    t.integer  "attch_file_size",    limit: 4
    t.datetime "attch_updated_at"
  end

  create_table "people", force: :cascade do |t|
    t.integer  "zhuangye_id",          limit: 4
    t.integer  "xueli_id",             limit: 4
    t.integer  "zhicheng_id",          limit: 4
    t.string   "name",                 limit: 255
    t.integer  "sex",                  limit: 4
    t.datetime "birthday"
    t.datetime "worktime"
    t.string   "school",               limit: 255
    t.string   "schoolgra",            limit: 255
    t.string   "xuelicertification",   limit: 255
    t.string   "zhichencertification", limit: 255
    t.string   "zigecertification",    limit: 255
    t.string   "shenfencertification", limit: 255
    t.string   "anquancertification",  limit: 255
    t.string   "gongzhenmaterial",     limit: 255
    t.text     "another",              limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "peos", force: :cascade do |t|
    t.integer  "zhuangye_id",                       limit: 4
    t.integer  "xueli_id",                          limit: 4
    t.integer  "zhicheng_id",                       limit: 4
    t.string   "name",                              limit: 255
    t.integer  "sex",                               limit: 4
    t.datetime "birthday"
    t.datetime "worktime"
    t.string   "school",                            limit: 255
    t.text     "another",                           limit: 65535
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "schoolgra_file_name",               limit: 255
    t.string   "schoolgra_content_type",            limit: 255
    t.integer  "schoolgra_file_size",               limit: 4
    t.datetime "schoolgra_updated_at"
    t.string   "xuelicertification_file_name",      limit: 255
    t.string   "xuelicertification_content_type",   limit: 255
    t.integer  "xuelicertification_file_size",      limit: 4
    t.datetime "xuelicertification_updated_at"
    t.string   "zhichencertification_file_name",    limit: 255
    t.string   "zhichencertification_content_type", limit: 255
    t.integer  "zhichencertification_file_size",    limit: 4
    t.datetime "zhichencertification_updated_at"
    t.string   "zigecertification_file_name",       limit: 255
    t.string   "zigecertification_content_type",    limit: 255
    t.integer  "zigecertification_file_size",       limit: 4
    t.datetime "zigecertification_updated_at"
    t.string   "shenfencertification_file_name",    limit: 255
    t.string   "shenfencertification_content_type", limit: 255
    t.integer  "shenfencertification_file_size",    limit: 4
    t.datetime "shenfencertification_updated_at"
    t.string   "anquancertification_file_name",     limit: 255
    t.string   "anquancertification_content_type",  limit: 255
    t.integer  "anquancertification_file_size",     limit: 4
    t.datetime "anquancertification_updated_at"
    t.string   "gongzhenmaterial_file_name",        limit: 255
    t.string   "gongzhenmaterial_content_type",     limit: 255
    t.integer  "gongzhenmaterial_file_size",        limit: 4
    t.datetime "gongzhenmaterial_updated_at"
    t.integer  "zcz_id",                            limit: 4
    t.string   "other_file_name",                   limit: 255
    t.string   "other_content_type",                limit: 255
    t.integer  "other_file_size",                   limit: 4
    t.datetime "other_updated_at"
    t.integer  "isnew",                             limit: 4
  end

  create_table "projecttypes", force: :cascade do |t|
    t.string   "projecttype", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ssdws", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "xmatts", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "xmjianli_id",        limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "attch_file_name",    limit: 255
    t.string   "attch_content_type", limit: 255
    t.integer  "attch_file_size",    limit: 4
    t.datetime "attch_updated_at"
  end

  create_table "xmcouns", force: :cascade do |t|
    t.string   "coun",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "xmjianlis", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "xmlanguage_id", limit: 4
    t.integer  "xmcoun_id",     limit: 4
    t.integer  "isnew",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "xmlanguages", force: :cascade do |t|
    t.string   "language",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "xuelis", force: :cascade do |t|
    t.string   "xueli",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "yejiattches", force: :cascade do |t|
    t.text     "content",     limit: 65535
    t.string   "keyword",     limit: 255
    t.integer  "yeji_id",     limit: 4
    t.integer  "language_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "yejiatts", force: :cascade do |t|
    t.text     "content",      limit: 65535
    t.string   "keyword",      limit: 255
    t.integer  "yeji_id",      limit: 4
    t.integer  "langguage_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "yejis", force: :cascade do |t|
    t.integer  "hetong_id",      limit: 4
    t.integer  "guojia_id",      limit: 4
    t.integer  "projecttype_id", limit: 4
    t.string   "nameproject",    limit: 255
    t.float    "gongqi",         limit: 24
    t.float    "hetonge",        limit: 24
    t.string   "nameyezhu",      limit: 255
    t.string   "addressyezhu",   limit: 255
    t.string   "telyezhu",       limit: 255
    t.float    "fukunprice",     limit: 24
    t.string   "shishidanwei",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "juese_id",       limit: 4
    t.float    "meiyuan",        limit: 24
    t.integer  "isnew",          limit: 4
    t.integer  "ssdw_id",        limit: 4
    t.datetime "begindate"
    t.datetime "enddate"
  end

  create_table "zczs", force: :cascade do |t|
    t.integer  "peo_id",     limit: 4
    t.string   "zcz",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "zczzies", force: :cascade do |t|
    t.integer  "peo_id",     limit: 4
    t.string   "zczzy",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "zhengzhaoatts", force: :cascade do |t|
    t.integer  "zhengzhao_id",       limit: 4
    t.string   "keyword",            limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "attch_file_name",    limit: 255
    t.string   "attch_content_type", limit: 255
    t.integer  "attch_file_size",    limit: 4
    t.datetime "attch_updated_at"
  end

  create_table "zhengzhaoexpands", force: :cascade do |t|
    t.string   "keyword",             limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "expand_file_name",    limit: 255
    t.string   "expand_content_type", limit: 255
    t.integer  "expand_file_size",    limit: 4
    t.datetime "expand_updated_at"
    t.integer  "zhengzhao_id",        limit: 4
  end

  create_table "zhengzhaos", force: :cascade do |t|
    t.string   "namecompany",                       limit: 255
    t.text     "another",                           limit: 65535
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "zizhicertification_file_name",      limit: 255
    t.string   "zizhicertification_content_type",   limit: 255
    t.integer  "zizhicertification_file_size",      limit: 4
    t.datetime "zizhicertification_updated_at"
    t.string   "anquancertification_file_name",     limit: 255
    t.string   "anquancertification_content_type",  limit: 255
    t.integer  "anquancertification_file_size",     limit: 4
    t.datetime "anquancertification_updated_at"
    t.string   "chenbaocertification_file_name",    limit: 255
    t.string   "chenbaocertification_content_type", limit: 255
    t.integer  "chenbaocertification_file_size",    limit: 4
    t.datetime "chenbaocertification_updated_at"
    t.string   "zhanchen_file_name",                limit: 255
    t.string   "zhanchen_content_type",             limit: 255
    t.integer  "zhanchen_file_size",                limit: 4
    t.datetime "zhanchen_updated_at"
    t.string   "santixicertification_file_name",    limit: 255
    t.string   "santixicertification_content_type", limit: 255
    t.integer  "santixicertification_file_size",    limit: 4
    t.datetime "santixicertification_updated_at"
    t.string   "shuiwucertification_file_name",     limit: 255
    t.string   "shuiwucertification_content_type",  limit: 255
    t.integer  "shuiwucertification_file_size",     limit: 4
    t.datetime "shuiwucertification_updated_at"
    t.string   "dengjicertification_file_name",     limit: 255
    t.string   "dengjicertification_content_type",  limit: 255
    t.integer  "dengjicertification_file_size",     limit: 4
    t.datetime "dengjicertification_updated_at"
    t.string   "cwbaobiao_file_name",               limit: 255
    t.string   "cwbaobiao_content_type",            limit: 255
    t.integer  "cwbaobiao_file_size",               limit: 4
    t.datetime "cwbaobiao_updated_at"
    t.string   "orgcertification_file_name",        limit: 255
    t.string   "orgcertification_content_type",     limit: 255
    t.integer  "orgcertification_file_size",        limit: 4
    t.datetime "orgcertification_updated_at"
    t.string   "wsszhenming_file_name",             limit: 255
    t.string   "wsszhenming_content_type",          limit: 255
    t.integer  "wsszhenming_file_size",             limit: 4
    t.datetime "wsszhenming_updated_at"
    t.string   "wpczhenming_file_name",             limit: 255
    t.string   "wpczhenming_content_type",          limit: 255
    t.integer  "wpczhenming_file_size",             limit: 4
    t.datetime "wpczhenming_updated_at"
    t.string   "licence_file_name",                 limit: 255
    t.string   "licence_content_type",              limit: 255
    t.integer  "licence_file_size",                 limit: 4
    t.datetime "licence_updated_at"
    t.string   "jianjiecompany_file_name",          limit: 255
    t.string   "jianjiecompany_content_type",       limit: 255
    t.integer  "jianjiecompany_file_size",          limit: 4
    t.datetime "jianjiecompany_updated_at"
    t.integer  "isnew",                             limit: 4
  end

  create_table "zhichengs", force: :cascade do |t|
    t.string   "zhicheng",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "zhuangyes", force: :cascade do |t|
    t.string   "zhuangye",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
