.class public final Lcom/fsck/k9/preferences/Storage;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field private static storages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/fsck/k9/preferences/Storage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private DB_VERSION:I

.field private context:Landroid/content/Context;

.field private listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile storage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private workingChangedKeys:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private workingDB:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private workingStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    .line 31
    const-string v0, "preferences_storage"

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->DB_NAME:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    .line 243
    iput-object p1, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    .line 244
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->loadValues()V

    .line 245
    return-void
.end method

.method public static getStorage(Landroid/content/Context;)Lcom/fsck/k9/preferences/Storage;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    sget-object v2, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/preferences/Storage;

    .line 169
    .local v1, "tmpStorage":Lcom/fsck/k9/preferences/Storage;
    if-eqz v1, :cond_0

    .line 171
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    move-object v0, v1

    .line 197
    :goto_0
    return-object v0

    .line 179
    :cond_0
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 181
    new-instance v1, Lcom/fsck/k9/preferences/Storage;

    .end local v1    # "tmpStorage":Lcom/fsck/k9/preferences/Storage;
    invoke-direct {v1, p0}, Lcom/fsck/k9/preferences/Storage;-><init>(Landroid/content/Context;)V

    .line 184
    .restart local v1    # "tmpStorage":Lcom/fsck/k9/preferences/Storage;
    sget-object v2, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/preferences/Storage;

    .line 185
    .local v0, "oldStorage":Lcom/fsck/k9/preferences/Storage;
    if-eqz v0, :cond_1

    .line 187
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    goto :goto_0

    .line 195
    :cond_1
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    move-object v0, v1

    .line 197
    goto :goto_0
.end method

.method private keyChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 250
    .local v0, "changedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    return-void
.end method

.method private loadValues()V
    .locals 14

    .prologue
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 207
    .local v6, "startTime":J
    const-string v8, "k9"

    const-string v9, "Loading preferences from DB into Storage"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 212
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 214
    const-string v8, "SELECT primkey, value FROM preferences_storage"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 215
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 217
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "key":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "value":Ljava/lang/String;
    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Loading key \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', value = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    :cond_0
    iget-object v8, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_1
    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    .local v2, "endTime":J
    const-string v9, "k9"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Preferences load took "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v2, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    throw v8

    .line 228
    .end local v2    # "endTime":J
    :cond_3
    if-eqz v0, :cond_4

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_4
    if-eqz v4, :cond_5

    .line 234
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    .restart local v2    # "endTime":J
    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Preferences load took "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 26

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/preferences/Storage;->DB_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 46
    .local v16, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 48
    const-string v2, "k9"

    const-string v3, "Updating preferences to urlencoded username/password"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v2, "accountUuids"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/fsck/k9/preferences/Storage;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "accountUuids":Ljava/lang/String;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    .line 53
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "arr$":[Ljava/lang/String;
    array-length v15, v11

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_b

    aget-object v25, v11, v14

    .line 58
    .local v25, "uuid":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".storeUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/fsck/k9/preferences/Storage;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 59
    .local v20, "storeUriStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".transportUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/fsck/k9/preferences/Storage;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 61
    .local v21, "transportUriStr":Ljava/lang/String;
    new-instance v22, Ljava/net/URI;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 62
    .local v22, "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 63
    .local v4, "newUserInfo":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 65
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 67
    .local v23, "userInfoParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 68
    .local v24, "usernameEnc":Ljava/lang/String;
    const-string v19, ""

    .line 69
    .local v19, "passwordEnc":Ljava/lang/String;
    const-string v12, ""

    .line 70
    .local v12, "authType":Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v23, v3

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 74
    :cond_0
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .end local v12    # "authType":Ljava/lang/String;
    .end local v19    # "passwordEnc":Ljava/lang/String;
    .end local v23    # "userInfoParts":[Ljava/lang/String;
    .end local v24    # "usernameEnc":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 84
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 86
    .local v18, "newTransportUriStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".transportUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/fsck/k9/preferences/Storage;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v18    # "newTransportUriStr":Ljava/lang/String;
    :cond_3
    new-instance v22, Ljava/net/URI;

    .end local v22    # "uri":Ljava/net/URI;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v22    # "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 91
    const-string v2, "imap"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 93
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 94
    .restart local v23    # "userInfoParts":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 96
    const/4 v2, 0x0

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 97
    .restart local v24    # "usernameEnc":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 99
    .restart local v19    # "passwordEnc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .end local v19    # "passwordEnc":Ljava/lang/String;
    .end local v23    # "userInfoParts":[Ljava/lang/String;
    .end local v24    # "usernameEnc":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 139
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/helper/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 141
    .local v17, "newStoreUriStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".storeUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/fsck/k9/preferences/Storage;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v4    # "newUserInfo":Ljava/lang/String;
    .end local v17    # "newStoreUriStr":Ljava/lang/String;
    .end local v20    # "storeUriStr":Ljava/lang/String;
    .end local v21    # "transportUriStr":Ljava/lang/String;
    .end local v22    # "uri":Ljava/net/URI;
    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 103
    .restart local v4    # "newUserInfo":Ljava/lang/String;
    .restart local v20    # "storeUriStr":Ljava/lang/String;
    .restart local v21    # "transportUriStr":Ljava/lang/String;
    .restart local v22    # "uri":Ljava/net/URI;
    .restart local v23    # "userInfoParts":[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    aget-object v12, v23, v2

    .line 104
    .restart local v12    # "authType":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 105
    .restart local v24    # "usernameEnc":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 107
    .restart local v19    # "passwordEnc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    goto/16 :goto_1

    .line 110
    .end local v12    # "authType":Ljava/lang/String;
    .end local v19    # "passwordEnc":Ljava/lang/String;
    .end local v23    # "userInfoParts":[Ljava/lang/String;
    .end local v24    # "usernameEnc":Ljava/lang/String;
    :cond_7
    const-string v2, "pop3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 112
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v23

    .line 113
    .restart local v23    # "userInfoParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 115
    .restart local v24    # "usernameEnc":Ljava/lang/String;
    const-string v19, ""

    .line 116
    .restart local v19    # "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v23, v3

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 121
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    goto/16 :goto_1

    .line 123
    .end local v19    # "passwordEnc":Ljava/lang/String;
    .end local v23    # "userInfoParts":[Ljava/lang/String;
    .end local v24    # "usernameEnc":Ljava/lang/String;
    :cond_9
    const-string v2, "webdav"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v23

    .line 126
    .restart local v23    # "userInfoParts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v23, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 128
    .restart local v24    # "usernameEnc":Ljava/lang/String;
    const-string v19, ""

    .line 129
    .restart local v19    # "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v23, v3

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 134
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 144
    .end local v4    # "newUserInfo":Ljava/lang/String;
    .end local v19    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "storeUriStr":Ljava/lang/String;
    .end local v21    # "transportUriStr":Ljava/lang/String;
    .end local v22    # "uri":Ljava/net/URI;
    .end local v23    # "userInfoParts":[Ljava/lang/String;
    .end local v24    # "usernameEnc":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 146
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "k9"

    const-string v3, "ooops"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 151
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v25    # "uuid":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 154
    .end local v10    # "accountUuids":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    if-eq v2, v3, :cond_d

    .line 156
    const-string v2, "k9"

    const-string v3, "Creating Storage database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "DROP TABLE IF EXISTS preferences_storage"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v2, "CREATE TABLE preferences_storage (primkey TEXT PRIMARY KEY ON CONFLICT REPLACE, value TEXT)"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 162
    :cond_d
    return-object v16
.end method

.method private static readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v8, 0x0

    .line 419
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 422
    .local v9, "value":Ljava/lang/String;
    :try_start_0
    const-string v1, "preferences_storage"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "primkey = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 431
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 434
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', value = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    if-eqz v8, :cond_1

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_1
    return-object v9

    .line 442
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 453
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "primkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "preferences_storage"

    const-string v2, "primkey"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 459
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 461
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing key \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', value = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final doInTransaction(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "dbWork"    # Ljava/lang/Runnable;

    .prologue
    .line 287
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 288
    .local v5, "newStorage":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 289
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 291
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 292
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "changedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 300
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 301
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 302
    iput-object v5, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 303
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, "changedKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 307
    invoke-interface {v6, p0, v0}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 313
    .end local v0    # "changedKey":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    .line 314
    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    .line 315
    iget-object v7, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    .line 316
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 317
    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v6

    .line 313
    :cond_2
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 314
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 315
    iget-object v6, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 316
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 317
    if-eqz v4, :cond_3

    .line 319
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 322
    :cond_3
    return-void
.end method

.method public final bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/Editor;

    move-result-object v0

    return-object v0
.end method

.method public final edit()Lcom/fsck/k9/preferences/Editor;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/fsck/k9/preferences/Editor;

    invoke-direct {v0, p0}, Lcom/fsck/k9/preferences/Editor;-><init>(Lcom/fsck/k9/preferences/Storage;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 350
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 355
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 361
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 366
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .restart local p2    # "defValue":F
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 372
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 377
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .restart local p2    # "defValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 383
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 388
    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 399
    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method protected final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "primkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "preferences_storage"

    const-string v3, "primkey"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 262
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method protected final remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences_storage"

    const-string v2, "primkey = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected final removeAll()V
    .locals 4

    .prologue
    .line 277
    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM preferences_storage"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 283
    return-void
.end method

.method public final size()J
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method
