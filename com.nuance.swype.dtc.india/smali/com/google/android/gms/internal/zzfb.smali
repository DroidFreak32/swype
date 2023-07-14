.class public final Lcom/google/android/gms/internal/zzfb;
.super Lcom/google/android/gms/internal/zzkc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzbgf:Lcom/google/android/gms/internal/zzlh;

.field final zzbjb:Lcom/google/android/gms/internal/zzfd;

.field private final zzbjc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzfd;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfb;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfb;->zzbjb:Lcom/google/android/gms/internal/zzfd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfb;->zzbjc:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfc;->zzbje:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzbjb:Lcom/google/android/gms/internal/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfd;->abort()V

    return-void
.end method

.method public final zzew()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzbjb:Lcom/google/android/gms/internal/zzfd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfb;->zzbjc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfd;->zzaz(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfb$1;-><init>(Lcom/google/android/gms/internal/zzfb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzkh;->zzclc:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzfb$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfb$1;-><init>(Lcom/google/android/gms/internal/zzfb;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
