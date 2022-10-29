.class final Lcom/google/android/gms/internal/zzip$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzla$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzceh:Lcom/google/android/gms/internal/zzdi;

.field final synthetic zzcei:Lcom/google/android/gms/internal/zzip$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzip$2;Lcom/google/android/gms/internal/zzdi;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzceh:Lcom/google/android/gms/internal/zzdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzft;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzip$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzceh:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzip$2;->zzakg:Lcom/google/android/gms/internal/zzdk;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzdk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdk;->zzkg()Lcom/google/android/gms/internal/zzdi;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzdk;->zzbei:Lcom/google/android/gms/internal/zzdi;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_51

    .line 1000
    const-string/jumbo v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzip$2;->zzcee:Lcom/google/android/gms/internal/zzir;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzir;->zzcep:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzip$2;->zzcee:Lcom/google/android/gms/internal/zzir;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzir;->zzceq:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    const-string/jumbo v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzip$2;->zzcee:Lcom/google/android/gms/internal/zzir;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzir;->zzcer:Lcom/google/android/gms/internal/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    :try_start_46
    const-string/jumbo v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$2$1;->zzcei:Lcom/google/android/gms/internal/zzip$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzip$2;->zzceg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzft;->zzj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_54

    :goto_50
    return-void

    .line 2000
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    .line 1000
    :catch_54
    move-exception v0

    const-string/jumbo v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50
.end method
