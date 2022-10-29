.class public final Lcom/google/android/gms/internal/zzgh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzajn:Lcom/google/android/gms/internal/zzdk;

.field private final zzajz:Lcom/google/android/gms/internal/zzgj;

.field private final zzarl:Z

.field private final zzawn:Z

.field private final zzboe:Lcom/google/android/gms/internal/zzga;

.field private final zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final zzbou:J

.field private final zzbov:J

.field private zzbox:Z

.field private zzboz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;"
        }
    .end annotation
.end field

.field private zzbpd:Lcom/google/android/gms/internal/zzgd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzga;ZZJJLcom/google/android/gms/internal/zzdk;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbox:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboz:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgh;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgh;->zzboe:Lcom/google/android/gms/internal/zzga;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzgh;->zzarl:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzgh;->zzawn:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgh;->zzbou:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzgh;->zzbov:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbox:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbpd:Lcom/google/android/gms/internal/zzgd;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzbpd:Lcom/google/android/gms/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgd;->cancel()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzge;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfz;",
            ">;)",
            "Lcom/google/android/gms/internal/zzge;"
        }
    .end annotation

    const-string/jumbo v2, "Starting mediation."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_17
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzfz;

    const-string/jumbo v3, "Trying mediation network: "

    iget-object v2, v7, Lcom/google/android/gms/internal/zzfz;->zzbmv:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_36
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/google/android/gms/internal/zzfz;->zzbmw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3f
    :goto_3f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgh;->zzail:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_5a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzgh;->zzbox:Z

    if-eqz v2, :cond_6e

    new-instance v2, Lcom/google/android/gms/internal/zzge;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzge;-><init>(I)V

    monitor-exit v20
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_112

    :goto_67
    return-object v2

    :cond_68
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :cond_6e
    :try_start_6e
    new-instance v2, Lcom/google/android/gms/internal/zzgd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgh;->zzajz:Lcom/google/android/gms/internal/zzgj;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgh;->zzboe:Lcom/google/android/gms/internal/zzga;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgh;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcar:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgh;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v9, v9, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgh;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzgh;->zzarl:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gms/internal/zzgh;->zzawn:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzgh;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzapo:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzgh;->zzbot:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v14, v14, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaps:Ljava/util/List;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/zzgd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/internal/zzfz;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZZLcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzgh;->zzbpd:Lcom/google/android/gms/internal/zzgd;

    monitor-exit v20
    :try_end_aa
    .catchall {:try_start_6e .. :try_end_aa} :catchall_112

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgh;->zzbpd:Lcom/google/android/gms/internal/zzgd;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzgh;->zzbou:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzgh;->zzbov:J

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/google/android/gms/internal/zzgd;->zza(JJ)Lcom/google/android/gms/internal/zzge;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->zzboz:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/google/android/gms/internal/zzge;->zzbom:I

    if-nez v3, :cond_115

    const-string/jumbo v3, "Adapter succeeded."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const-string/jumbo v5, "mediation_network_succeed"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ec

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const-string/jumbo v4, "mediation_networks_fail"

    const-string/jumbo v5, ","

    invoke-static {v5, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "mls"

    aput-object v6, v4, v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ttm"

    aput-object v6, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    goto/16 :goto_67

    :catchall_112
    move-exception v2

    :try_start_113
    monitor-exit v20
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw v2

    :cond_115
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "mlf"

    aput-object v6, v4, v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/zzge;->zzboo:Lcom/google/android/gms/internal/zzgk;

    if-eqz v3, :cond_3f

    sget-object v3, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzgh$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/zzgh$1;-><init>(Lcom/google/android/gms/internal/zzgh;Lcom/google/android/gms/internal/zzge;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3f

    :cond_13c
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_153

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgh;->zzajn:Lcom/google/android/gms/internal/zzdk;

    const-string/jumbo v3, "mediation_networks_fail"

    const-string/jumbo v4, ","

    invoke-static {v4, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_153
    new-instance v2, Lcom/google/android/gms/internal/zzge;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzge;-><init>(I)V

    goto/16 :goto_67
.end method

.method public final zzmg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzge;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh;->zzboz:Ljava/util/List;

    return-object v0
.end method
