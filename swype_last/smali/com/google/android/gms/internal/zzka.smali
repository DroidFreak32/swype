.class public final Lcom/google/android/gms/internal/zzka;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field public final zzail:Ljava/lang/Object;

.field public final zzaob:Lcom/google/android/gms/internal/zzjx;

.field public final zzcit:Ljava/lang/String;

.field public zzckh:I

.field public zzcki:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzka;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka;->zzaob:Lcom/google/android/gms/internal/zzjx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzka;->zzcit:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzka;-><init>(Lcom/google/android/gms/internal/zzjx;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/zzka;->zzckh:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/zzka;->zzcki:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method
