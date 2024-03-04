.class Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreSchemaDefinition"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/store/LocalStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/store/LocalStore;
    .param p2, "x1"    # Lcom/fsck/k9/mail/store/LocalStore$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;-><init>(Lcom/fsck/k9/mail/store/LocalStore;)V

    return-void
.end method


# virtual methods
.method public doDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x27

    .line 151
    const-string v1, "k9"

    const-string v2, "Upgrading database from version %d to version %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$StoreSchemaDefinition;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore;->access$100(Lcom/fsck/k9/mail/store/LocalStore;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/provider/AttachmentProvider;->clear(Landroid/content/Context;)V

    .line 161
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 164
    const-string v1, "DROP TABLE IF EXISTS folders"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string v1, "CREATE TABLE folders (id INTEGER PRIMARY KEY, name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER, status TEXT, push_state TEXT, last_pushed INTEGER, flagged_count INTEGER default 0)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v1, "CREATE INDEX IF NOT EXISTS folder_name ON folders (name)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v1, "CREATE TABLE messages (id INTEGER PRIMARY KEY, deleted INTEGER default 0, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, html_content TEXT, text_content TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, preview TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v1, "DROP TABLE IF EXISTS headers"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v1, "CREATE TABLE headers (id INTEGER PRIMARY KEY, message_id INTEGER, name TEXT, value TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v1, "CREATE INDEX IF NOT EXISTS header_folder ON headers (message_id)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v1, "CREATE INDEX IF NOT EXISTS msg_uid ON messages (uid, folder_id)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v1, "DROP INDEX IF EXISTS msg_folder_id"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v1, "DROP INDEX IF EXISTS msg_folder_id_date"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v1, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v1, "CREATE TABLE attachments (id INTEGER PRIMARY KEY, message_id INTEGER,store_data TEXT, content_uri TEXT, size INTEGER, name TEXT,mime_type TEXT, content_id TEXT, content_disposition TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v1, "DROP TABLE IF EXISTS pending_commands"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v1, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, arguments TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v1, "DROP TRIGGER IF EXISTS delete_folder"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v1, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v1, "DROP TRIGGER IF EXISTS delete_message"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v1, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM attachments WHERE old.id = message_id; DELETE FROM headers where old.id = message_id; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 319
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-eq v1, v6, :cond_a

    .line 321
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Database upgrade failed!"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    .line 206
    :try_start_2
    const-string v1, "ALTER TABLE messages ADD deleted INTEGER default 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 216
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_3

    .line 218
    const-string v1, "DROP INDEX IF EXISTS msg_folder_id_date"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string v1, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_4

    .line 223
    const-string v1, "UPDATE messages SET deleted = 1 WHERE flags LIKE \'%DELETED%\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    const/16 v2, 0x21

    if-ge v1, v2, :cond_5

    .line 230
    :try_start_4
    const-string v1, "ALTER TABLE messages ADD preview TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 241
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v1

    const/16 v2, 0x22

    if-ge v1, v2, :cond_6

    .line 245
    :try_start_6
    const-string v1, "ALTER TABLE folders ADD flagged_count INTEGER default 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 255
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v1

    const/16 v2, 0x23

    if-ge v1, v2, :cond_7

    .line 259
    :try_start_8
    const-string v1, "update messages set flags = replace(flags, \'X_NO_SEEN_INFO\', \'X_BAD_FLAG\')"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 266
    :cond_7
    :goto_1
    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v1

    const/16 v2, 0x24

    if-ge v1, v2, :cond_8

    .line 270
    :try_start_a
    const-string v1, "ALTER TABLE attachments ADD content_id TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    .line 277
    :cond_8
    :goto_2
    :try_start_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1

    move-result v1

    const/16 v2, 0x25

    if-ge v1, v2, :cond_9

    .line 281
    :try_start_c
    const-string v1, "ALTER TABLE attachments ADD content_disposition TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7

    .line 291
    :cond_9
    :goto_3
    :try_start_d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1

    move-result v1

    if-ge v1, v6, :cond_0

    .line 295
    :try_start_e
    const-string v1, "DELETE FROM headers WHERE id in (SELECT headers.id FROM headers LEFT JOIN messages ON headers.message_id = messages.id WHERE messages.id IS NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 299
    :catch_0
    move-exception v1

    :try_start_f
    const-string v1, "k9"

    const-string v2, "Unable to remove extra header data from the database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    .line 310
    :catch_1
    move-exception v1

    const-string v1, "k9"

    const-string v2, "Exception while upgrading database. Resetting the DB to v0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 312
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Database upgrade failed! Resetting your DB version to 0 to force a full schema recreation."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :catch_2
    move-exception v0

    .line 210
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    throw v0

    .line 232
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v0

    .line 234
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 236
    throw v0

    .line 247
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v0

    .line 249
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duplicate column name: flagged_count"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 251
    throw v0

    .line 261
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v0

    .line 263
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "k9"

    const-string v2, "Unable to get rid of obsolete flag X_NO_SEEN_INFO"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 274
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_6
    move-exception v1

    const-string v1, "k9"

    const-string v2, "Unable to add content_id column to attachments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 285
    :catch_7
    move-exception v1

    const-string v1, "k9"

    const-string v2, "Unable to add content_disposition column to attachments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_3

    .line 334
    :cond_a
    return-void
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x27

    return v0
.end method
