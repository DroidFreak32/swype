.class public final Lcom/google/android/gms/internal/zzif;
.super Lcom/google/android/gms/internal/zzib;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final zzajn:Lcom/google/android/gms/internal/zzdk;

.field private zzajz:Lcom/google/android/gms/internal/zzgj;

.field final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field private zzboe:Lcom/google/android/gms/internal/zzga;

.field zzbym:Lcom/google/android/gms/internal/zzfy;

.field protected zzbyn:Lcom/google/android/gms/internal/zzge;

.field zzbyo:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzic$zza;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzlh;)V
    .registers 8

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzib;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzic$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzif;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzju$zza;->zzcig:Lcom/google/android/gms/internal/zzga;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzif;->zzajn:Lcom/google/android/gms/internal/zzdk;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzif;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    return-void
.end method

.method private static zzg(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 0
    const-string/jumbo v0, ""

    if-nez p0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzge;

    if-eqz v0, :cond_10

    iget-object v4, v0, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfz;->zzbmx:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzfz;->zzbmx:Ljava/lang/String;

    iget v1, v0, Lcom/google/android/gms/internal/zzge;->zzbom:I

    .line 6000
    packed-switch v1, :pswitch_data_b8

    :pswitch_39
    const/4 v1, 0x6

    .line 5000
    :goto_3a
    iget-wide v6, v0, Lcom/google/android/gms/internal/zzge;->zzbos:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x21

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_10

    :pswitch_9b
    move v1, v2

    .line 6000
    goto :goto_3a

    :pswitch_9d
    const/4 v1, 0x1

    goto :goto_3a

    :pswitch_9f
    const/4 v1, 0x2

    goto :goto_3a

    :pswitch_a1
    const/4 v1, 0x3

    goto :goto_3a

    :pswitch_a3
    const/4 v1, 0x4

    goto :goto_3a

    :pswitch_a5
    const/4 v1, 0x5

    goto :goto_3a

    .line 0
    :cond_a7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 6000
    nop

    :pswitch_data_b8
    .packed-switch -0x1
        :pswitch_a3
        :pswitch_9b
        :pswitch_9d
        :pswitch_39
        :pswitch_9f
        :pswitch_a1
        :pswitch_a5
    .end packed-switch
.end method


# virtual methods
.method public final onStop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzif;->zzbxu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzib;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbym:Lcom/google/android/gms/internal/zzfy;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbym:Lcom/google/android/gms/internal/zzfy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfy;->cancel()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected final zzak(I)Lcom/google/android/gms/internal/zzju;
    .registers 40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzju;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzif;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnm:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnn:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcca:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbns:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcau:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcby:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    if-eqz v6, :cond_f6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v14, v6, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    :goto_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    if-eqz v6, :cond_f9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v15, v6, Lcom/google/android/gms/internal/zzge;->zzboo:Lcom/google/android/gms/internal/zzgk;

    :goto_4c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    if-eqz v6, :cond_fc

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzge;->zzbop:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    if-eqz v6, :cond_104

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzge;->zzboq:Lcom/google/android/gms/internal/zzgc;

    move-object/from16 v18, v0

    :goto_6e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbz:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbx:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccc:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccd:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzju$zza;->zzcie:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccn:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcco:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccp:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    if-eqz v6, :cond_108

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzga;->zzbnx:Z

    move/from16 v34, v0

    :goto_ce
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzccr:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbym:Lcom/google/android/gms/internal/zzfy;

    if-eqz v6, :cond_10b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbym:Lcom/google/android/gms/internal/zzfy;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzfy;->zzmg()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/zzif;->zzg(Ljava/util/List;)Ljava/lang/String;

    move-result-object v36

    :goto_e8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbnp:Ljava/util/List;

    move-object/from16 v37, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v37}, Lcom/google/android/gms/internal/zzju;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzlh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/internal/zzgk;Ljava/lang/String;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzgc;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_f6
    const/4 v14, 0x0

    goto/16 :goto_40

    :cond_f9
    const/4 v15, 0x0

    goto/16 :goto_4c

    :cond_fc
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5a

    :cond_104
    const/16 v18, 0x0

    goto/16 :goto_6e

    :cond_108
    const/16 v34, 0x0

    goto :goto_ce

    :cond_10b
    const/16 v36, 0x0

    goto :goto_e8
.end method

.method protected final zzh(J)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzib$zza;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v13, p0, Lcom/google/android/gms/internal/zzif;->zzbxu:Ljava/lang/Object;

    monitor-enter v13

    .line 1000
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnv:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_78

    new-instance v1, Lcom/google/android/gms/internal/zzgg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzif;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzif;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauw:Z

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbh:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 1000
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/zzgg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzga;ZZJJ)V

    .line 0
    :goto_33
    iput-object v1, p0, Lcom/google/android/gms/internal/zzif;->zzbym:Lcom/google/android/gms/internal/zzfy;

    monitor-exit v13
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_a4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzga;->zzbnk:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatw:Landroid/os/Bundle;

    const-string/jumbo v3, "com.google.ads.mediation.admob.AdMobAdapter"

    if-eqz v2, :cond_5a

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5a

    const-string/jumbo v0, "_skipMediation"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_5a
    if-eqz v0, :cond_a7

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_60
    :goto_60
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbmw:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_60

    .line 1000
    :cond_78
    :try_start_78
    new-instance v1, Lcom/google/android/gms/internal/zzgh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzif;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzif;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzif;->zzboe:Lcom/google/android/gms/internal/zzga;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbxs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzauw:Z

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbh:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 1000
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/android/gms/internal/zzif;->zzajn:Lcom/google/android/gms/internal/zzdk;

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzgh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzga;ZZJJLcom/google/android/gms/internal/zzdk;)V

    goto :goto_33

    .line 0
    :catchall_a4
    move-exception v0

    monitor-exit v13
    :try_end_a6
    .catchall {:try_start_78 .. :try_end_a6} :catchall_a4

    throw v0

    :cond_a7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbym:Lcom/google/android/gms/internal/zzfy;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfy;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzge;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget v0, v0, Lcom/google/android/gms/internal/zzge;->zzbom:I

    packed-switch v0, :pswitch_data_158

    new-instance v0, Lcom/google/android/gms/internal/zzib$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget v1, v1, Lcom/google/android/gms/internal/zzge;->zzbom:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unexpected mediation result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_d7
    new-instance v0, Lcom/google/android/gms/internal/zzib$zza;

    const-string/jumbo v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_e1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbyn:Lcom/google/android/gms/internal/zzge;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzge;->zzbon:Lcom/google/android/gms/internal/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfz;->zzbnf:Ljava/lang/String;

    if-eqz v0, :cond_157

    .line 4000
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzif$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzif$1;-><init>(Lcom/google/android/gms/internal/zzif;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_101
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_106
    .catch Ljava/lang/InterruptedException; {:try_start_101 .. :try_end_106} :catch_11a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzif;->zzbxu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_109
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzif;->zzbyo:Z

    if-nez v0, :cond_144

    new-instance v0, Lcom/google/android/gms/internal/zzib$zza;

    const-string/jumbo v2, "View could not be prepared"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_117
    move-exception v0

    monitor-exit v1
    :try_end_119
    .catchall {:try_start_109 .. :try_end_119} :catchall_117

    throw v0

    :catch_11a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzib$zza;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Interrupted while waiting for latch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_144
    :try_start_144
    iget-object v0, p0, Lcom/google/android/gms/internal/zzif;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_156

    new-instance v0, Lcom/google/android/gms/internal/zzib$zza;

    const-string/jumbo v2, "Assets not loaded, web view is destroyed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzib$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_156
    monitor-exit v1
    :try_end_157
    .catchall {:try_start_144 .. :try_end_157} :catchall_117

    :cond_157
    return-void

    .line 0
    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_d7
    .end packed-switch
.end method
