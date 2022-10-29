.class public Lcom/google/android/gms/ads/internal/request/zzb;
.super Lcom/google/android/gms/internal/zzkc;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzb$zza;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private final zzbgd:Lcom/google/android/gms/internal/zzas;

.field zzboe:Lcom/google/android/gms/internal/zzga;

.field private zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private zzbxt:Ljava/lang/Runnable;

.field private final zzbxu:Ljava/lang/Object;

.field private final zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

.field private final zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

.field zzcag:Lcom/google/android/gms/internal/zzkj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/request/zza$zza;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxu:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbgd:Lcom/google/android/gms/internal/zzas;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxu:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/request/zzb;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzb;->zzd(ILjava/lang/String;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/request/zzb$zza;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauv:Z

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v2, v1

    move v0, v3

    :goto_d
    if-ge v0, v2, :cond_22

    aget-object v4, v1, v0

    iget-boolean v5, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauv:Z

    if-eqz v5, :cond_1f

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :goto_1e
    return-object v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string/jumbo v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_61

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string/jumbo v2, "Invalid ad size format from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_57
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :cond_61
    const/4 v1, 0x0

    :try_start_62
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6e} :catch_a9

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    move v2, v3

    :goto_75
    if-ge v2, v7, :cond_d5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_cb

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_8f
    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_ce

    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_9a
    if-ne v4, v0, :cond_d1

    if-ne v5, v1, :cond_d1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    goto/16 :goto_1e

    :catch_a9
    move-exception v0

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string/jumbo v2, "Invalid ad size number from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c1
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_c1

    :cond_cb
    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    goto :goto_8f

    :cond_ce
    iget v1, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_9a

    :cond_d1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_75

    :cond_d5
    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string/jumbo v2, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_ec
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_f0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_ec
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/request/zzb;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxt:Ljava/lang/Runnable;

    return-object v0
.end method

.method private zzd(ILjava/lang/String;)V
    .registers 14

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_32

    :cond_9
    invoke-static {p2}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    :goto_1d
    new-instance v0, Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    move v5, p1

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzju$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzju$zza;)V

    return-void

    :cond_32
    invoke-static {p2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_c

    :cond_36
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    goto :goto_17

    :cond_42
    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    invoke-direct {v1, v0, v4, v6, v7}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V

    goto :goto_1d
.end method


# virtual methods
.method public onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcag:Lcom/google/android/gms/internal/zzkj;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcag:Lcom/google/android/gms/internal/zzkj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkj;->cancel()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 13

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v1, 0x0

    .line 0
    const-string/jumbo v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxu:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcag:Lcom/google/android/gms/internal/zzkj;

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_69

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbq:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjx;->zzd(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    :try_start_27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-eq v0, v5, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-eq v0, v4, :cond_6c

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_57
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_27 .. :try_end_57} :catch_57

    :catch_57
    move-exception v0

    .line 7000
    iget v1, v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;->zzbyi:I

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/zzb$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/zzb;->zzd(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_68
    return-void

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    .line 3000
    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    if-eq v0, v4, :cond_e6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string/jumbo v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcaz:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjx;->zzc(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcby:Z
    :try_end_97
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_6c .. :try_end_97} :catch_57

    if-eqz v0, :cond_158

    :try_start_99
    new-instance v0, Lcom/google/android/gms/internal/zzga;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzga;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboe:Lcom/google/android/gms/internal/zzga;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzga;->zzbnq:Z

    .line 4000
    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzjx;->zzcjz:Z
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_ae} :catch_12f
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_99 .. :try_end_ae} :catch_57

    .line 3000
    :goto_ae
    :try_start_ae
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e6

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdn:Lcom/google/android/gms/internal/zzcy;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 3000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e6

    const-string/jumbo v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzki;->zzao(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_e6

    const-string/jumbo v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_e6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_16d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/request/zzb;->zzb(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    :try_end_f3
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_ae .. :try_end_f3} :catch_57

    move-result-object v4

    :goto_f4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcci:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzjx;->zzae(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16b

    :try_start_109
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccg:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_112} :catch_164

    :goto_112
    new-instance v0, Lcom/google/android/gms/internal/zzju$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzju$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcae:Lcom/google/android/gms/ads/internal/request/zza$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/zza$zza;->zza(Lcom/google/android/gms/internal/zzju$zza;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_68

    .line 3000
    :catch_12f
    move-exception v0

    :try_start_130
    const-string/jumbo v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$zza;

    const-string/jumbo v2, "Could not parse mediation config: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_152

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14d
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/ads/internal/request/zzb$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_152
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_14d

    :cond_158
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnq:Z

    .line 5000
    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzjx;->zzcjz:Z
    :try_end_162
    .catch Lcom/google/android/gms/ads/internal/request/zzb$zza; {:try_start_130 .. :try_end_162} :catch_57

    goto/16 :goto_ae

    .line 0
    :catch_164
    move-exception v0

    const-string/jumbo v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16b
    move-object v10, v1

    goto :goto_112

    :cond_16d
    move-object v4, v1

    goto :goto_f4
.end method

.method public zzew()V
    .registers 7

    .prologue
    .line 0
    const-string/jumbo v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/zzb$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxt:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbxt:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbg:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/google/android/gms/internal/zzlb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v1, Lcom/google/android/gms/ads/internal/request/zzb$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzb$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzb;Lcom/google/android/gms/internal/zzla;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkg;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzky;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbgd:Lcom/google/android/gms/internal/zzas;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzas;->zzafz:Lcom/google/android/gms/internal/zzan;

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->mContext:Landroid/content/Context;

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/zzan;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzcaf:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzb;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzla;->zzg(Ljava/lang/Object;)V

    return-void
.end method
