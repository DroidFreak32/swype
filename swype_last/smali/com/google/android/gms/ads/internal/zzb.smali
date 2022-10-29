.class public abstract Lcom/google/android/gms/ads/internal/zzb;
.super Lcom/google/android/gms/ads/internal/zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;
.implements Lcom/google/android/gms/ads/internal/purchase/zzj;
.implements Lcom/google/android/gms/ads/internal/zzs;
.implements Lcom/google/android/gms/internal/zzer;
.implements Lcom/google/android/gms/internal/zzgb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mMessenger:Landroid/os/Messenger;

.field public final zzajz:Lcom/google/android/gms/internal/zzgj;

.field protected transient zzaka:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 8

    new-instance v0, Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, v0, p4, p6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 7

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/ads/internal/zzd;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajz:Lcom/google/android/gms/internal/zzgj;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/internal/zzhl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzhl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaka:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzjw;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
    .registers 45

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1a} :catch_16d

    move-result-object v8

    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v2, :cond_aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_aa

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getHeight()I

    move-result v9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzv$zza;->isShown()Z

    move-result v3

    if-eqz v3, :cond_86

    add-int v3, v4, v6

    if-lez v3, :cond_86

    add-int v3, v5, v9

    if-lez v3, :cond_86

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v4, v3, :cond_86

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v3, :cond_86

    const/4 v2, 0x1

    :cond_86
    new-instance v3, Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-direct {v3, v10}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "height"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "visible"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_aa
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzjx;->zzsj()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    new-instance v4, Lcom/google/android/gms/internal/zzjv;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Lcom/google/android/gms/internal/zzjv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    .line 8000
    iget-object v4, v2, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_cc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/google/android/gms/internal/zzjv;->zzciy:J

    iget-object v5, v2, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzjx;->zzsk()Lcom/google/android/gms/internal/zzjy;

    move-result-object v5

    iget-wide v10, v2, Lcom/google/android/gms/internal/zzjv;->zzciy:J

    .line 9000
    iget-object v6, v5, Lcom/google/android/gms/internal/zzjy;->zzail:Ljava/lang/Object;

    monitor-enter v6
    :try_end_dd
    .catchall {:try_start_cc .. :try_end_dd} :catchall_178

    :try_start_dd
    iget-wide v12, v5, Lcom/google/android/gms/internal/zzjy;->zzckd:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_171

    iput-wide v10, v5, Lcom/google/android/gms/internal/zzjy;->zzckd:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/zzjy;->zzckd:J

    iput-wide v10, v5, Lcom/google/android/gms/internal/zzjy;->zzckc:J

    :goto_eb
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_17b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "gw"

    const/4 v11, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_17b

    monitor-exit v6
    :try_end_101
    .catchall {:try_start_dd .. :try_end_101} :catchall_175

    .line 8000
    :goto_101
    :try_start_101
    monitor-exit v4
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_178

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaph:Lcom/google/android/gms/ads/internal/client/zzy;

    if-eqz v2, :cond_12f

    :try_start_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaph:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zzy;->getValue()J
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_12e} :catch_184

    move-result-wide v22

    :cond_12f
    :goto_12f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0, v9}, Lcom/google/android/gms/internal/zzjx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzjz;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_14e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    if-ge v4, v2, :cond_18c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapn:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_14e

    :catch_16d
    move-exception v2

    const/4 v8, 0x0

    goto/16 :goto_1b

    .line 9000
    :cond_171
    :try_start_171
    iput-wide v10, v5, Lcom/google/android/gms/internal/zzjy;->zzckc:J

    goto/16 :goto_eb

    :catchall_175
    move-exception v2

    monitor-exit v6
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_175

    :try_start_177
    throw v2

    .line 8000
    :catchall_178
    move-exception v2

    monitor-exit v4
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_178

    throw v2

    .line 9000
    :cond_17b
    :try_start_17b
    iget v2, v5, Lcom/google/android/gms/internal/zzjy;->zzcke:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v5, Lcom/google/android/gms/internal/zzjy;->zzcke:I

    monitor-exit v6
    :try_end_182
    .catchall {:try_start_17b .. :try_end_182} :catchall_175

    goto/16 :goto_101

    .line 0
    :catch_184
    move-exception v2

    const-string/jumbo v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_12f

    :cond_18c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzho;

    if-eqz v2, :cond_2be

    const/4 v2, 0x1

    move v4, v2

    :goto_196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    if-eqz v2, :cond_2c2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzjx;->zzsv()Z

    move-result v2

    if-eqz v2, :cond_2c2

    const/4 v2, 0x1

    move v15, v2

    :goto_1aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzd;->zzakl:Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-interface {v2, v5}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzr(Landroid/content/Context;)Z

    move-result v29

    const-string/jumbo v36, ""

    sget-object v2, Lcom/google/android/gms/internal/zzdc;->zzbdn:Lcom/google/android/gms/internal/zzcy;

    .line 10000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v2

    .line 0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1ec

    const-string/jumbo v2, "Getting webview cookie from CookieManager."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzki;->zzao(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v2

    if-eqz v2, :cond_1ec

    const-string/jumbo v5, "googleads.g.doubleclick.net"

    invoke-virtual {v2, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    :cond_1ec
    const/16 v37, 0x0

    if-eqz p3, :cond_1f6

    .line 11000
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjw;->zzcjg:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 0
    :cond_1f6
    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v10

    .line 12000
    iget-object v10, v10, Lcom/google/android/gms/internal/zzjx;->zzcjm:Ljava/lang/String;

    .line 0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/zzv;->zzaps:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/zzjx;->zzsn()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->mMessenger:Landroid/os/Messenger;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    invoke-static {}, Lcom/google/android/gms/internal/zzdc;->zzjx()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaot:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v27, v0

    new-instance v28, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v4, v15, v1}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;-><init>(ZZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zzv;->zzgt()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zzey()F

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zzfa()Z

    move-result v31

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzam(Landroid/content/Context;)I

    move-result v32

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkh;->zzn(Landroid/view/View;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v34, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzjx;->zzsr()Z

    move-result v35

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v4

    .line 13000
    iget-boolean v0, v4, Lcom/google/android/gms/internal/zzjx;->zzcjz:Z

    move/from16 v38, v0

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    move-result-object v4

    .line 14000
    iget-object v4, v4, Lcom/google/android/gms/internal/zzfc;->zzbje:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v39

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    invoke-static {}, Lcom/google/android/gms/internal/zzkh;->zzti()Landroid/os/Bundle;

    move-result-object v40

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v40}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;)V

    return-object v2

    :cond_2be
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_196

    :cond_2c2
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_1aa
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbop:Ljava/lang/String;

    goto :goto_7
.end method

.method public onAdClicked()V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-nez v0, :cond_e

    const-string/jumbo v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnm:Ljava/util/List;

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzga;->zzbnm:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbmz:Ljava/util/List;

    if-eqz v0, :cond_72

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzfz;->zzbmz:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    :cond_72
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zza;->onAdClicked()V

    goto :goto_d
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzk(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzl(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method

.method public pause()V
    .registers 3

    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzgp()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzki;->zzi(Lcom/google/android/gms/internal/zzlh;)Z

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v0, :cond_3f

    :try_start_36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->pause()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3f} :catch_4e

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzk(Lcom/google/android/gms/internal/zzju;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->pause()V

    return-void

    :catch_4e
    move-exception v0

    const-string/jumbo v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method public recordImpression()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzju;Z)V

    return-void
.end method

.method public resume()V
    .registers 3

    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    :cond_1b
    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzv;->zzgp()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju;->zzbtm:Lcom/google/android/gms/internal/zzlh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzki;->zzj(Lcom/google/android/gms/internal/zzlh;)Z

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v1, :cond_48

    :try_start_3f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju;->zzboo:Lcom/google/android/gms/internal/zzgk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgk;->resume()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_48} :catch_5f

    :cond_48
    :goto_48
    if-eqz v0, :cond_50

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzup()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->resume()V

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzl(Lcom/google/android/gms/internal/zzju;)V

    return-void

    :catch_5f
    move-exception v1

    const-string/jumbo v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_48
.end method

.method public showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzho;)V
    .registers 3

    const-string/jumbo v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzho;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/zzk;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapt:Lcom/google/android/gms/ads/internal/purchase/zzk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzsm()Z

    move-result v0

    if-nez v0, :cond_33

    if-eqz p1, :cond_33

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzapt:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs;Lcom/google/android/gms/ads/internal/purchase/zzk;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzpy()Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzju;Z)V
    .registers 9

    .prologue
    const-wide/16 v4, -0x1

    .line 0
    if-nez p1, :cond_b

    const-string/jumbo v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    .line 15000
    :cond_b
    if-nez p1, :cond_5c

    const-string/jumbo v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    .line 0
    :cond_13
    :goto_13
    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnn:Ljava/util/List;

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzga;->zzbnn:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    :cond_37
    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbna:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzfz;->zzbna:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_a

    .line 15000
    :cond_5c
    const-string/jumbo v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    .line 16000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_69
    iget-wide v2, v0, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_80

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzjv;->zzciv:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_80

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzjv;->zzciv:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjv;)V

    :cond_80
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzsk()Lcom/google/android/gms/internal/zzjy;

    move-result-object v0

    .line 17000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzjy;->zzail:Ljava/lang/Object;

    monitor-enter v2
    :try_end_89
    .catchall {:try_start_69 .. :try_end_89} :catchall_b3

    :try_start_89
    iget v3, v0, Lcom/google/android/gms/internal/zzjy;->zzckg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/zzjy;->zzckg:I

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_b0

    .line 16000
    :try_start_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_b3

    .line 15000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzbnn:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzju;->zzcin:Z

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzju;->zzbnn:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzju;->zzcin:Z

    goto/16 :goto_13

    .line 17000
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v0

    .line 16000
    :catchall_b3
    move-exception v0

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b3

    throw v0
.end method

.method public zza(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzd;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzho;

    if-nez v1, :cond_98

    const-string/jumbo v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_30
    return-void

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    if-nez v1, :cond_3e

    const-string/jumbo v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_30

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapt:Lcom/google/android/gms/ads/internal/purchase/zzk;

    if-nez v1, :cond_4b

    const-string/jumbo v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_30

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapx:Z

    if-eqz v1, :cond_58

    const-string/jumbo v0, "An in-app purchase request is already in progress, abort"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_30

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapx:Z

    :try_start_5d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzhs;->isValidPurchase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:Z
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_6c} :catch_6d

    goto :goto_30

    :catch_6d
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:Z

    goto :goto_30

    :cond_79
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzga()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnm:Z

    new-instance v4, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzv;->zzapt:Lcom/google/android/gms/ads/internal/purchase/zzk;

    invoke-direct {v4, v5, v6, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/zzk;Lcom/google/android/gms/internal/zzhn;Lcom/google/android/gms/ads/internal/purchase/zzj;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zza(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    goto :goto_30

    :cond_98
    :try_start_98
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzho;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzho;->zza(Lcom/google/android/gms/internal/zzhn;)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9f} :catch_a0

    goto :goto_30

    :catch_a0
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_30
.end method

.method public zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .registers 14

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzhs;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/zzg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzhs;->zza(Lcom/google/android/gms/internal/zzhr;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_28

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzb$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/ads/internal/zzb$1;-><init>(Lcom/google/android/gms/ads/internal/zzb;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_28
    move-exception v0

    const-string/jumbo v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzdk;)Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdw()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return v3

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjx;->zzaa(Landroid/content/Context;)Lcom/google/android/gms/internal/zzco;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzco;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput v3, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbct:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjx;->zzst()Lcom/google/android/gms/internal/zzjw;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgi()Lcom/google/android/gms/ads/internal/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 2000
    iget-object v5, v4, Lcom/google/android/gms/internal/zzjw;->zzcjf:Ljava/lang/String;

    .line 0
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzjw;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    invoke-direct {p0, p1, v7, v4}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzjw;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    move-result-object v0

    const-string/jumbo v1, "seq_num"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcau:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "request_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcbg:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "session_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcav:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcas:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_7f

    const-string/jumbo v1, "app_version"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcas:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfm()Lcom/google/android/gms/ads/internal/request/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v2, v3, v0, v4, p0}, Lcom/google/android/gms/ads/internal/request/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/request/zza$zza;)Lcom/google/android/gms/internal/zzkc;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/internal/zzkc;

    const/4 v3, 0x1

    goto/16 :goto_7
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzju;Z)Z
    .registers 8

    const-wide/16 v2, 0x0

    if-nez p3, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzgp()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzju;->zzbns:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzju;->zzbns:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzfc()Z

    move-result v0

    return v0

    :cond_20
    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-eqz v0, :cond_36

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzga;->zzbns:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzga;->zzbns:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/zzr;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    goto :goto_19

    :cond_36
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzju;->zzcby:Z

    if-nez v0, :cond_19

    iget v0, p2, Lcom/google/android/gms/internal/zzju;->errorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzr;->zzg(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_19
.end method

.method final zza(Lcom/google/android/gms/internal/zzju;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_a
    :goto_a
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzju;Z)Z

    move-result v0

    return v0

    :cond_f
    iget-object v1, p1, Lcom/google/android/gms/internal/zzju;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_a
.end method

.method public zza(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/internal/zzju;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 0
    if-eqz p1, :cond_d

    iget-object v1, p1, Lcom/google/android/gms/internal/zzju;->zzboq:Lcom/google/android/gms/internal/zzgc;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/google/android/gms/internal/zzju;->zzboq:Lcom/google/android/gms/internal/zzgc;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzgc;->zza(Lcom/google/android/gms/internal/zzgb;)V

    :cond_d
    iget-object v1, p2, Lcom/google/android/gms/internal/zzju;->zzboq:Lcom/google/android/gms/internal/zzgc;

    if-eqz v1, :cond_16

    iget-object v1, p2, Lcom/google/android/gms/internal/zzju;->zzboq:Lcom/google/android/gms/internal/zzgc;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzgc;->zza(Lcom/google/android/gms/internal/zzgb;)V

    :cond_16
    iget-object v1, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-eqz v1, :cond_43

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget v1, v0, Lcom/google/android/gms/internal/zzga;->zzbny:I

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnz:I

    :goto_22
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzapu:Lcom/google/android/gms/internal/zzka;

    .line 3000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzka;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_29
    iput v1, v2, Lcom/google/android/gms/internal/zzka;->zzckh:I

    iput v0, v2, Lcom/google/android/gms/internal/zzka;->zzcki:I

    iget-object v0, v2, Lcom/google/android/gms/internal/zzka;->zzaob:Lcom/google/android/gms/internal/zzjx;

    iget-object v1, v2, Lcom/google/android/gms/internal/zzka;->zzcit:Ljava/lang/String;

    .line 4000
    iget-object v4, v0, Lcom/google/android/gms/internal/zzjx;->zzail:Ljava/lang/Object;

    monitor-enter v4
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_40

    :try_start_34
    iget-object v0, v0, Lcom/google/android/gms/internal/zzjx;->zzcjq:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3d

    .line 3000
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_40

    .line 0
    const/4 v0, 0x1

    return v0

    .line 4000
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0

    .line 3000
    :catchall_40
    move-exception v0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    move v1, v0

    goto :goto_22
.end method

.method public zzb(Lcom/google/android/gms/internal/zzju;)V
    .registers 8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzju;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "Pinging network fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzju;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzfz;->zzbnb:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnp:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    const-string/jumbo v0, "Pinging urls remotely"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzga;->zzbnp:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/util/List;)V

    :cond_4c
    iget v0, p1, Lcom/google/android/gms/internal/zzju;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbno:Ljava/util/List;

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/internal/zzgf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzju;->zzcig:Lcom/google/android/gms/internal/zzga;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzga;->zzbno:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgf;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzju;Ljava/lang/String;ZLjava/util/List;)V

    :cond_7a
    return-void
.end method

.method protected final zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaka:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected zzdw()Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.INTERNET"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzac(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_2a
    const/4 v0, 0x0

    :cond_2b
    return v0
.end method

.method public zzdx()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaju:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcg;->zzi(Lcom/google/android/gms/internal/zzju;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaka:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdr()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/internal/zzjv;

    .line 5000
    iget-object v2, v1, Lcom/google/android/gms/internal/zzjv;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_18
    iget-wide v4, v1, Lcom/google/android/gms/internal/zzjv;->zzciz:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3f

    iget-object v0, v1, Lcom/google/android/gms/internal/zzjv;->zzcir:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, v1, Lcom/google/android/gms/internal/zzjv;->zzcir:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjv$zza;

    .line 6000
    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjv$zza;->zzcjb:J

    .line 5000
    cmp-long v3, v4, v6

    if-nez v3, :cond_3f

    .line 7000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/zzjv$zza;->zzcjb:J

    .line 5000
    iget-object v0, v1, Lcom/google/android/gms/internal/zzjv;->zzaob:Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjv;)V

    :cond_3f
    monitor-exit v2

    return-void

    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_18 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public zzdy()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzaka:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdt()V

    return-void
.end method

.method public zzdz()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->onAdClicked()V

    return-void
.end method

.method public zzea()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdx()V

    return-void
.end method

.method public zzeb()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdo()V

    return-void
.end method

.method public zzec()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdy()V

    return-void
.end method

.method public zzed()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju;->zzbop:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Mediation adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzb;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzju;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzju;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->zzdu()V

    return-void
.end method

.method public zzee()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzb;->recordImpression()V

    return-void
.end method

.method public zzef()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzb$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzb$2;-><init>(Lcom/google/android/gms/ads/internal/zzb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzeg()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzb$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzb$3;-><init>(Lcom/google/android/gms/ads/internal/zzb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
