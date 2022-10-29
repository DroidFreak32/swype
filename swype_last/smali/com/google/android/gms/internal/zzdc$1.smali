.class final Lcom/google/android/gms/internal/zzdc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdc$1;->zzala:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzcx()Ljava/lang/Void;
    .registers 6

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdc$1;->zzala:Landroid/content/Context;

    .line 1000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzdb;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzdb;->zzamt:Z

    if-eqz v3, :cond_10

    monitor-exit v2

    .line 0
    :goto_e
    const/4 v0, 0x0

    return-object v0

    .line 1000
    :cond_10
    invoke-static {v1}, Lcom/google/android/gms/common/zze;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1b

    monitor-exit v2

    goto :goto_e

    :catchall_18
    move-exception v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfx()Lcom/google/android/gms/internal/zzda;

    .line 2000
    const-string/jumbo v3, "google_ads_flags"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzdb;->zzaxu:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzdb;->zzamt:Z

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_18

    goto :goto_e
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdc$1;->zzcx()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
