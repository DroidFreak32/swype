.class public Lcom/google/android/gms/ads/internal/overlay/zzx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzamw:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzbvq:Ljava/lang/String;

.field private final zzbvr:Lcom/google/android/gms/internal/zzdi;

.field private final zzbvs:Lcom/google/android/gms/internal/zzdk;

.field private final zzbvt:Lcom/google/android/gms/internal/zzkm;

.field private final zzbvu:[J

.field private final zzbvv:[Ljava/lang/String;

.field private zzbvw:Lcom/google/android/gms/internal/zzdi;

.field private zzbvx:Lcom/google/android/gms/internal/zzdi;

.field private zzbvy:Lcom/google/android/gms/internal/zzdi;

.field private zzbvz:Lcom/google/android/gms/internal/zzdi;

.field private zzbwa:Z

.field private zzbwb:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzbwc:Z

.field private zzbwd:Z

.field private zzbwe:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;)V
    .registers 12

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzb;-><init>()V

    const-string/jumbo v1, "min_1"

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkm$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkm$zzb;

    move-result-object v0

    const-string/jumbo v1, "1_5"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkm$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkm$zzb;

    move-result-object v0

    const-string/jumbo v1, "5_10"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkm$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkm$zzb;

    move-result-object v0

    const-string/jumbo v1, "10_20"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkm$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkm$zzb;

    move-result-object v0

    const-string/jumbo v1, "20_30"

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkm$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkm$zzb;

    move-result-object v0

    const-string/jumbo v1, "30_max"

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkm$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzkm$zzb;

    move-result-object v0

    .line 1000
    new-instance v1, Lcom/google/android/gms/internal/zzkm;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzkm;-><init>(Lcom/google/android/gms/internal/zzkm$zzb;B)V

    .line 0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvt:Lcom/google/android/gms/internal/zzkm;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwe:J

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzamw:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvr:Lcom/google/android/gms/internal/zzdi;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzayt:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7c

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvv:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    :cond_7b
    return-void

    :cond_7c
    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvv:[Ljava/lang/String;

    array-length v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    const/4 v0, 0x0

    :goto_8e
    array-length v1, v2

    if-ge v0, v1, :cond_7b

    :try_start_91
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v0
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_9b} :catch_9e

    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :catch_9e
    move-exception v1

    const-string/jumbo v3, "Unable to parse frame hash target time number."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v0

    goto :goto_9b
.end method


# virtual methods
.method public onStop()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzays:Lcom/google/android/gms/internal/zzcy;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwc:Z

    if-nez v0, :cond_f7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "native-player-metrics"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvq:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "player"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwb:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzni()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvt:Lcom/google/android/gms/internal/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkm;->getBuckets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkm$zza;

    const-string/jumbo v1, "fps_c_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzkm$zza;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_90

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_66
    iget v3, v0, Lcom/google/android/gms/internal/zzkm$zza;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "fps_p_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzkm$zza;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_96

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_86
    iget-wide v6, v0, Lcom/google/android/gms/internal/zzkm$zza;->zzcly:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_90
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :cond_96
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :cond_9c
    const/4 v0, 0x0

    :goto_9d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    array-length v1, v1

    if-ge v0, v1, :cond_e5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvv:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_e2

    const-string/jumbo v2, "fh_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_e5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzamw:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    const-string/jumbo v3, "gmob-apps"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzkh;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwc:Z

    :cond_f7
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvr:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vpc"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvw:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    const-string/jumbo v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzni()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwb:Lcom/google/android/gms/ads/internal/overlay/zzi;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .registers 14

    .prologue
    .line 0
    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvy:Lcom/google/android/gms/internal/zzdi;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvz:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvy:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vff"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvr:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vtt"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvz:Lcom/google/android/gms/internal/zzdi;

    :cond_30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->nanoTime()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwa:Z

    if-eqz v0, :cond_89

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwd:Z

    if-eqz v0, :cond_89

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwe:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_89

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwe:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    div-double v4, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvt:Lcom/google/android/gms/internal/zzkm;

    .line 5000
    iget v0, v1, Lcom/google/android/gms/internal/zzkm;->zzclv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/google/android/gms/internal/zzkm;->zzclv:I

    const/4 v0, 0x0

    :goto_61
    iget-object v6, v1, Lcom/google/android/gms/internal/zzkm;->zzclt:[D

    array-length v6, v6

    if-ge v0, v6, :cond_89

    iget-object v6, v1, Lcom/google/android/gms/internal/zzkm;->zzclt:[D

    aget-wide v6, v6, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_7e

    iget-object v6, v1, Lcom/google/android/gms/internal/zzkm;->zzcls:[D

    aget-wide v6, v6, v0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_7e

    iget-object v6, v1, Lcom/google/android/gms/internal/zzkm;->zzclu:[I

    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    :cond_7e
    iget-object v6, v1, Lcom/google/android/gms/internal/zzkm;->zzclt:[D

    aget-wide v6, v6, v0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_89

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 4000
    :cond_89
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwa:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwd:Z

    iput-wide v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwe:J

    .line 6000
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzayu:Lcom/google/android/gms/internal/zzcy;

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 6000
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x0

    :goto_a5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvv:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_118

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvv:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_119

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvu:[J

    aget-wide v6, v1, v0

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_119

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvv:[Ljava/lang/String;

    .line 8000
    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v10

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x3f

    const/4 v1, 0x0

    move v8, v1

    :goto_ce
    const/16 v1, 0x8

    if-ge v8, v1, :cond_105

    const/4 v1, 0x0

    move-wide v6, v4

    move-wide v4, v2

    :goto_d5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_ff

    invoke-virtual {v10, v1, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v3, v11

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-le v2, v3, :cond_fc

    const-wide/16 v2, 0x1

    :goto_f1
    long-to-int v11, v4

    shl-long/2addr v2, v11

    or-long/2addr v6, v2

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    move-wide v4, v2

    goto :goto_d5

    :cond_fc
    const-wide/16 v2, 0x0

    goto :goto_f1

    :cond_ff
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_ce

    :cond_105
    const-string/jumbo v1, "%016X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6000
    aput-object v1, v9, v0

    :cond_118
    return-void

    :cond_119
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5
.end method

.method public zzoj()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvw:Lcom/google/android/gms/internal/zzdi;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvx:Lcom/google/android/gms/internal/zzdi;

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvw:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vfr"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvx:Lcom/google/android/gms/internal/zzdi;

    goto :goto_8
.end method

.method public zzpi()V
    .registers 6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwa:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvx:Lcom/google/android/gms/internal/zzdi;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvy:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvx:Lcom/google/android/gms/internal/zzdi;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vfp"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvs:Lcom/google/android/gms/internal/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbvy:Lcom/google/android/gms/internal/zzdi;

    :cond_22
    return-void
.end method

.method public zzpj()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzbwa:Z

    return-void
.end method
