.class final Lcom/google/android/gms/internal/zzpw$zzb;
.super Lcom/google/android/gms/internal/zzpw$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic tQ:Lcom/google/android/gms/internal/zzpw;

.field private final tS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzpw$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpw;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzpw$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzpw$zzf;-><init>(Lcom/google/android/gms/internal/zzpw;B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tS:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzapl()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanu()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tS:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw$zza;

    .line 1000
    iget v0, v0, Lcom/google/android/gms/internal/zzpw$zza;->tf:I

    .line 0
    if-nez v0, :cond_7

    move v0, v2

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzpw;->tz:Lcom/google/android/gms/common/zzc;

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 3000
    iget-object v3, v3, Lcom/google/android/gms/internal/zzpw;->mContext:Landroid/content/Context;

    .line 0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v4

    :cond_0
    if-eqz v4, :cond_4

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    new-instance v2, Lcom/google/android/gms/internal/zzpw$zzb$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/internal/zzpw$zzb$1;-><init>(Lcom/google/android/gms/internal/zzpw$zzb;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqa$zza;)V

    :cond_2
    return-void

    :cond_3
    move v0, v4

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 5000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzpw;->tI:Z

    .line 0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tG:Lcom/google/android/gms/internal/zzvu;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvu;->connect()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzd$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzanu()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpw;->tw:Lcom/google/android/gms/internal/zzqa;

    .line 0
    new-instance v3, Lcom/google/android/gms/internal/zzpw$zzb$2;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpw$zzb;->tQ:Lcom/google/android/gms/internal/zzpw;

    invoke-direct {v3, p0, v5, v1}, Lcom/google/android/gms/internal/zzpw$zzb$2;-><init>(Lcom/google/android/gms/internal/zzpw$zzb;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/internal/zzd$zzf;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzqa;->zza(Lcom/google/android/gms/internal/zzqa$zza;)V

    goto :goto_3

    :cond_6
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_3

    :cond_7
    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_8
    move v2, v3

    move v0, v4

    goto :goto_1
.end method
