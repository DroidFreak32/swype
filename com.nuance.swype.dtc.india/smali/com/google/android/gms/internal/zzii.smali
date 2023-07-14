.class public final Lcom/google/android/gms/internal/zzii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzii$zzb;,
        Lcom/google/android/gms/internal/zzii$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzju;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbyt:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzbgb:Lcom/google/android/gms/internal/zzih;

.field private final zzbgd:Lcom/google/android/gms/internal/zzas;

.field private final zzbxr:Lcom/google/android/gms/internal/zzju$zza;

.field private zzbyi:I

.field private final zzbzc:Lcom/google/android/gms/internal/zzkn;

.field private final zzbzd:Lcom/google/android/gms/ads/internal/zzq;

.field private zzbze:Z

.field private zzbzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbzg:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzii;->zzbyt:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzkn;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzju$zza;)V
    .locals 7

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii;->zzbzd:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii;->zzbzc:Lcom/google/android/gms/internal/zzkn;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzii;->zzbgd:Lcom/google/android/gms/internal/zzas;

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/zzih;

    invoke-direct {v0, p1, p5, p2, p4}, Lcom/google/android/gms/internal/zzih;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbgb:Lcom/google/android/gms/internal/zzih;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzii;->zzbgb:Lcom/google/android/gms/internal/zzih;

    .line 2000
    iget-boolean v0, v5, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    if-eqz v0, :cond_2

    .line 3000
    sget-object v6, Lcom/google/android/gms/internal/zzih;->zzamr:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzih;->zzbyu:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfs;

    iget-object v1, v5, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v5, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iget-object v2, v5, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v5, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzih;->zzd(Lcom/google/android/gms/internal/zzju$zza;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzih$3;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzih$3;-><init>(Lcom/google/android/gms/internal/zzih;)V

    new-instance v5, Lcom/google/android/gms/internal/zzfs$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfs$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/internal/zzkl;)V

    sput-object v0, Lcom/google/android/gms/internal/zzih;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzih;->zzbyu:Z

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzii;->zzbze:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzii;->zzbyi:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbzf:Ljava/util/List;

    return-void

    .line 3000
    :cond_1
    :try_start_1
    iget-object v1, v5, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4000
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfq;-><init>()V

    iput-object v0, v5, Lcom/google/android/gms/internal/zzih;->zzbyw:Lcom/google/android/gms/internal/zzfq;

    goto :goto_1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzii;)Lcom/google/android/gms/internal/zzju$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzdz;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    .line 17000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbzd:Lcom/google/android/gms/ads/internal/zzq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdz;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzdz;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzii;)Lcom/google/android/gms/ads/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbzd:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzju;
    .locals 38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzii;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/zzii;->zzbyi:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/zzii;->zzbyi:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzju;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzii;->zzbzf:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcil:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbzg:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnp:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-direct/range {v2 .. v37}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzlh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzgc;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method private static zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzc(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic zzi(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 18000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzc;->zzkt()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 0
    :cond_0
    return-object v1
.end method

.method private zzqr()Lcom/google/android/gms/internal/zzju;
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 0
    :try_start_0
    iget-object v9, p0, Lcom/google/android/gms/internal/zzii;->zzbgb:Lcom/google/android/gms/internal/zzih;

    .line 5000
    iget-boolean v2, v9, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    if-eqz v2, :cond_1

    .line 6000
    new-instance v2, Lcom/google/android/gms/internal/zzfs$zze;

    .line 7000
    sget-object v3, Lcom/google/android/gms/internal/zzih;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    .line 6000
    iget-object v4, v9, Lcom/google/android/gms/internal/zzih;->zzbgd:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzfs;->zzc(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzfs$zze;-><init>(Lcom/google/android/gms/internal/zzfs$zzc;)V

    iput-object v2, v9, Lcom/google/android/gms/internal/zzih;->zzbyx:Lcom/google/android/gms/internal/zzfs$zze;

    .line 0
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 11000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzii;->zzqs()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v7, v11

    .line 12000
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzii;->zzqs()Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgp:Z

    move v4, v2

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgr:Z

    move v3, v2

    :goto_3
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzij;

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/zzij;-><init>(ZZ)V

    move-object v3, v2

    .line 13000
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzii;->zzqs()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v3, v11

    .line 14000
    :goto_5
    instance-of v2, v3, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-eqz v2, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzf;

    move-object v2, v0

    new-instance v4, Lcom/google/android/gms/internal/zzii$zzb;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzii$zzb;-><init>(Lcom/google/android/gms/internal/zzii;)V

    new-instance v5, Lcom/google/android/gms/internal/zzii$3;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/internal/zzii$3;-><init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/ads/internal/formats/zzf;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/zzii$zzb;->zzbzz:Lcom/google/android/gms/internal/zzep;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbgb:Lcom/google/android/gms/internal/zzih;

    new-instance v4, Lcom/google/android/gms/internal/zzii$4;

    invoke-direct {v4, p0, v5}, Lcom/google/android/gms/internal/zzii$4;-><init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzep;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzih$zza;)V

    .line 0
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzii;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzju;

    move-result-object v2

    :goto_6
    return-object v2

    .line 9000
    :cond_1
    iget-object v3, v9, Lcom/google/android/gms/internal/zzih;->zzbyw:Lcom/google/android/gms/internal/zzfq;

    .line 8000
    iget-object v4, v9, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v9, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzih;->zzd(Lcom/google/android/gms/internal/zzju$zza;)Ljava/lang/String;

    move-result-object v8

    iget-object v7, v9, Lcom/google/android/gms/internal/zzih;->zzbgd:Lcom/google/android/gms/internal/zzas;

    .line 10000
    new-instance v6, Lcom/google/android/gms/internal/zzfq$zza;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/zzfq$zza;-><init>(B)V

    sget-object v10, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzfq$1;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzfq$1;-><init>(Lcom/google/android/gms/internal/zzfq;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzfq$zza;Lcom/google/android/gms/internal/zzas;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8000
    sget-wide v2, Lcom/google/android/gms/internal/zzih;->zzbyt:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfp;

    iput-object v2, v9, Lcom/google/android/gms/internal/zzih;->zzbyy:Lcom/google/android/gms/internal/zzfp;

    iget-object v2, v9, Lcom/google/android/gms/internal/zzih;->zzbyy:Lcom/google/android/gms/internal/zzfp;

    iget-object v3, v9, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v9, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v9, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v6, v9, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzfp;->zza$279dadbc$3b0b03b9(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 0
    :catch_0
    move-exception v2

    :goto_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzii;->zzbze:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v12}, Lcom/google/android/gms/internal/zzii;->zzan(I)V

    :cond_2
    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/zzii;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzju;

    move-result-object v2

    goto :goto_6

    .line 11000
    :cond_3
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/zzkv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzkv;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzii$zzb;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzii$zzb;-><init>(Lcom/google/android/gms/internal/zzii;)V

    new-instance v4, Lcom/google/android/gms/internal/zzii$1;

    invoke-direct {v4, p0, v3, v2, v10}, Lcom/google/android/gms/internal/zzii$1;-><init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzii$zzb;Lcom/google/android/gms/internal/zzkv;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzii;->zzbgb:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzih;->zza(Lcom/google/android/gms/internal/zzih$zza;)V

    sget-wide v4, Lcom/google/android/gms/internal/zzii;->zzbyt:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzkv;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    move-object v7, v2

    goto/16 :goto_1

    :cond_4
    move v4, v12

    .line 12000
    goto/16 :goto_2

    :cond_5
    move v3, v12

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/zzik;

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/zzik;-><init>(ZZ)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v2, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzkv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzkv;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzii$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/google/android/gms/internal/zzii$2;-><init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzkv;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v8, Lcom/google/android/gms/internal/zzii;->zzbyt:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9, v2}, Lcom/google/android/gms/internal/zzkv;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/zzil;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/zzil;-><init>(Z)V

    move-object v3, v2

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v3, "No handler for custom template: "

    const-string/jumbo v2, "custom_template_id"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    :cond_9
    :goto_9
    move-object v3, v11

    goto/16 :goto_4

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 0
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 12000
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzii;->zzan(I)V

    goto :goto_9

    .line 0
    :catch_2
    move-exception v2

    goto/16 :goto_7

    .line 13000
    :cond_c
    const-string/jumbo v2, "tracking_urls_and_actions"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v2, "impression_tracking_urls"

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzii;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v11

    :goto_a
    iput-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbzf:Ljava/util/List;

    const-string/jumbo v2, "active_view"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzii;->zzbzg:Lorg/json/JSONObject;

    invoke-interface {v3, p0, v7}, Lcom/google/android/gms/internal/zzii$zza;->zza(Lcom/google/android/gms/internal/zzii;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-result-object v8

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzii;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzii;->zzbzd:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzii;->zzbgb:Lcom/google/android/gms/internal/zzih;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzii;->zzbgd:Lcom/google/android/gms/internal/zzas;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/ads/internal/formats/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzas;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    move-object v3, v8

    goto/16 :goto_5

    :cond_d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    goto :goto_a

    .line 0
    :catch_3
    move-exception v2

    const-string/jumbo v3, "Malformed native JSON response."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_4
    move-exception v2

    const-string/jumbo v3, "Timeout when loading native ad."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzii;->zzqr()Lcom/google/android/gms/internal/zzju;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzky;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzky",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gms/internal/zzii;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzky;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzky;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzky",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 0
    if-eqz p2, :cond_0

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string/jumbo v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/internal/zzii;->zza(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzkw;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/zzkw;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzkw;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v7, v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzkw;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/google/android/gms/internal/zzii;->zzbzc:Lcom/google/android/gms/internal/zzkn;

    new-instance v1, Lcom/google/android/gms/internal/zzii$6;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzii$6;-><init>(Lcom/google/android/gms/internal/zzii;ZDLjava/lang/String;)V

    .line 16000
    new-instance v0, Lcom/google/android/gms/internal/zzkn$zzc;

    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/zzkn$zzc;-><init>(Lcom/google/android/gms/internal/zzkn;B)V

    sget-object v2, Lcom/google/android/gms/internal/zzkn;->zzcmc:Lcom/google/android/gms/internal/zzl;

    new-instance v3, Lcom/google/android/gms/internal/zzkn$zzb;

    invoke-direct {v3, v6, v1, v0}, Lcom/google/android/gms/internal/zzkn$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzkn$zza;Lcom/google/android/gms/internal/zzm$zzb;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    goto :goto_1
.end method

.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzky",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/zzii;->zza(IZ)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-virtual {p0, v2, p3, p4}, Lcom/google/android/gms/internal/zzii;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zzky;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public final zza(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzii;->zzan(I)V

    :cond_0
    return-void
.end method

.method public final zzan(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzii;->zzbze:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzii;->zzbyi:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzky;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzky",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zza;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 0
    const-string/jumbo v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzkw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzkw;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v0, "text_color"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzii;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v0, "bg_color"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzii;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->versionCode:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v8, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzbgs:I

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "images"

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzii;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzn(Ljava/util/List;)Lcom/google/android/gms/internal/zzky;

    move-result-object v13

    new-instance v0, Lcom/google/android/gms/internal/zzii$5;

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzii$5;-><init>(Lcom/google/android/gms/internal/zzii;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIII)V

    .line 15000
    new-instance v1, Lcom/google/android/gms/internal/zzkv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzkv;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzkx$1;

    invoke-direct {v2, v1, v0, v13}, Lcom/google/android/gms/internal/zzkx$1;-><init>(Lcom/google/android/gms/internal/zzkv;Lcom/google/android/gms/internal/zzkx$zza;Lcom/google/android/gms/internal/zzky;)V

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/zzky;->zzc(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 0
    goto :goto_0

    :cond_1
    move v8, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "image"

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzii;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzky;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final zzqs()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzii;->zzbze:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
