.class public final Lcom/google/android/gms/internal/zzig;
.super Lcom/google/android/gms/internal/zzkc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field final zzbxq:Lcom/google/android/gms/internal/zzic$zza;

.field private final zzbxr:Lcom/google/android/gms/internal/zzju$zza;

.field private final zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private final zzbyq:Lcom/google/android/gms/internal/zzii;

.field private zzbyr:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzju;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzic$zza;)V
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/zzii;

    new-instance v3, Lcom/google/android/gms/internal/zzkn;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzkn;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzii;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzkn;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzju$zza;)V

    invoke-direct {p0, p3, p5, v0}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzic$zza;Lcom/google/android/gms/internal/zzii;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzic$zza;Lcom/google/android/gms/internal/zzii;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzig;->zzbxq:Lcom/google/android/gms/internal/zzic$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzig;->zzbyq:Lcom/google/android/gms/internal/zzii;

    return-void
.end method


# virtual methods
.method public final onStop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzbyr:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzbyr:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final zzew()V
    .registers 39

    .prologue
    .line 0
    const/4 v6, -0x2

    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzig;->zzail:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_7} :catch_35
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_7} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_7} :catch_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_7} :catch_4f

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzig;->zzbyq:Lcom/google/android/gms/internal/zzii;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkg;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzky;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzig;->zzbyr:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_32

    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzig;->zzbyr:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzju;
    :try_end_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_23} :catch_35
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_23} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_23} :catch_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_23} :catch_4f

    :goto_23
    if-eqz v2, :cond_53

    :goto_25
    sget-object v3, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzig$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/zzig$1;-><init>(Lcom/google/android/gms/internal/zzig;Lcom/google/android/gms/internal/zzju;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2
    :try_end_35
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_35} :catch_35
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_35} :catch_47
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_35} :catch_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_34 .. :try_end_35} :catch_4f

    :catch_35
    move-exception v2

    const-string/jumbo v2, "Timed out waiting for native ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzig;->zzbyr:Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-object v2, v3

    goto :goto_23

    :catch_47
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_23

    :catch_4b
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_23

    :catch_4f
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_23

    .line 1000
    :cond_53
    new-instance v2, Lcom/google/android/gms/internal/zzju;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbz:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcie:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccq:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v2 .. v37}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzlh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzgc;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_25
.end method
