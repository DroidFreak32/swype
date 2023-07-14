.class final Lcom/google/android/gms/ads/internal/zzg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakv:Lcom/google/android/gms/ads/internal/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzakv:Lcom/google/android/gms/ads/internal/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "/appSettingsFetched"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzlh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzakv:Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzg;->zza(Lcom/google/android/gms/ads/internal/zzg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo v2, "true"

    const-string/jumbo v0, "isSuccessful"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "appSettingsJson"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzg$1;->zzakv:Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzg;->zzb(Lcom/google/android/gms/ads/internal/zzg;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzjx;->zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
