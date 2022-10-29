.class public Lcom/google/android/gms/ads/internal/purchase/zzh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/purchase/zzh$zza;
    }
.end annotation


# static fields
.field private static final zzail:Ljava/lang/Object;

.field private static final zzbxk:Ljava/lang/String;

.field private static zzbxm:Lcom/google/android/gms/ads/internal/purchase/zzh;


# instance fields
.field private final zzbxl:Lcom/google/android/gms/ads/internal/purchase/zzh$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "InAppPurchase"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "purchase_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "developer_payload"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "record_time"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxk:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzh$zza;

    const-string/jumbo v1, "google_inapp_purchase.db"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh$zza;-><init>(Lcom/google/android/gms/ads/internal/purchase/zzh;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxl:Lcom/google/android/gms/ads/internal/purchase/zzh$zza;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxk:Ljava/lang/String;

    return-object v0
.end method

.method public static zzs(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;
    .registers 3

    sget-object v1, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxm:Lcom/google/android/gms/ads/internal/purchase/zzh;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxm:Lcom/google/android/gms/ads/internal/purchase/zzh;

    :cond_e
    sget-object v0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxm:Lcom/google/android/gms/ads/internal/purchase/zzh;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public getRecordCount()I
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v3, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_d

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    :goto_c
    return v0

    :cond_d
    :try_start_d
    const-string/jumbo v4, "select count(*) from InAppPurchase"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_1f} :catch_31
    .catchall {:try_start_d .. :try_end_1f} :catchall_56

    move-result v0

    if-eqz v2, :cond_25

    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_25
    monitor-exit v3

    goto :goto_c

    :catchall_27
    move-exception v0

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2f
    :goto_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_27

    goto :goto_c

    :catch_31
    move-exception v1

    :try_start_32
    const-string/jumbo v4, "Error getting record count"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_56

    if-eqz v2, :cond_2f

    :try_start_4c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_27

    goto :goto_2f

    :cond_50
    :try_start_50
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_56

    goto :goto_47

    :catchall_56
    move-exception v0

    if-eqz v2, :cond_5c

    :try_start_59
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_27
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzbxl:Lcom/google/android/gms/ads/internal/purchase/zzh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzh$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string/jumbo v0, "Error opening writable conversion tracking database"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public zza(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/zzf;
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzf;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/ads/internal/purchase/zzf;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .registers 10

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    goto :goto_2

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "purchase_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzbxf:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "InAppPurchase"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_e

    goto :goto_2
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    goto :goto_2

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    :try_start_11
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "product_id"

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzbxh:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "developer_payload"

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzbxg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "record_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "InAppPurchase"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzbxf:J

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getRecordCount()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-lez v0, :cond_4c

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzpt()V

    :cond_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_11 .. :try_end_4d} :catchall_e

    goto :goto_2
.end method

.method public zzg(J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/purchase/zzf;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    sget-object v11, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    monitor-exit v11

    move-object v0, v9

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1b

    monitor-exit v11
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_69

    move-object v0, v9

    goto :goto_11

    :cond_1b
    :try_start_1b
    const-string/jumbo v7, "record_time ASC"

    const-string/jumbo v1, "InAppPurchase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2d} :catch_49
    .catchall {:try_start_1b .. :try_end_2d} :catchall_79

    move-result-object v1

    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_34
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/zzf;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_3e} :catch_7c
    .catchall {:try_start_2e .. :try_end_3e} :catchall_72

    move-result v0

    if-nez v0, :cond_34

    :cond_41
    if-eqz v1, :cond_46

    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    :goto_46
    monitor-exit v11
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_69

    move-object v0, v9

    goto :goto_11

    :catch_49
    move-exception v0

    move-object v1, v10

    :goto_4b
    :try_start_4b
    const-string/jumbo v2, "Error extracing purchase info: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_60
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_72

    if-eqz v1, :cond_46

    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    :catchall_69
    move-exception v0

    monitor-exit v11
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_69

    throw v0

    :cond_6c
    :try_start_6c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_72

    goto :goto_60

    :catchall_72
    move-exception v0

    :goto_73
    if-eqz v1, :cond_78

    :try_start_75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_69

    :catchall_79
    move-exception v0

    move-object v1, v10

    goto :goto_73

    :catch_7c
    move-exception v0

    goto :goto_4b
.end method

.method public zzpt()V
    .registers 12

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzail:Ljava/lang/Object;

    monitor-enter v10

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_c

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_34

    :goto_b
    return-void

    :cond_c
    :try_start_c
    const-string/jumbo v7, "record_time ASC"

    const-string/jumbo v1, "InAppPurchase"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1d} :catch_37
    .catchall {:try_start_c .. :try_end_1d} :catchall_64

    move-result-object v1

    if-eqz v1, :cond_2d

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Landroid/database/Cursor;)Lcom/google/android/gms/ads/internal/purchase/zzf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_2d} :catch_67
    .catchall {:try_start_20 .. :try_end_2d} :catchall_5d

    :cond_2d
    if-eqz v1, :cond_32

    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_32
    :goto_32
    monitor-exit v10

    goto :goto_b

    :catchall_34
    move-exception v0

    monitor-exit v10
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw v0

    :catch_37
    move-exception v0

    move-object v1, v9

    :goto_39
    :try_start_39
    const-string/jumbo v2, "Error remove oldest record"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_57

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_5d

    if-eqz v1, :cond_32

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_34

    goto :goto_32

    :cond_57
    :try_start_57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_5d

    goto :goto_4e

    :catchall_5d
    move-exception v0

    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_34

    :catchall_64
    move-exception v0

    move-object v1, v9

    goto :goto_5e

    :catch_67
    move-exception v0

    goto :goto_39
.end method
