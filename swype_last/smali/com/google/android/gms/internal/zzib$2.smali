.class final Lcom/google/android/gms/internal/zzib$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzib;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakt:Lcom/google/android/gms/internal/zzju;

.field final synthetic zzbyh:Lcom/google/android/gms/internal/zzib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzib;Lcom/google/android/gms/internal/zzju;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzib$2;->zzbyh:Lcom/google/android/gms/internal/zzib;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzib$2;->zzakt:Lcom/google/android/gms/internal/zzju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$2;->zzbyh:Lcom/google/android/gms/internal/zzib;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzib;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzib$2;->zzbyh:Lcom/google/android/gms/internal/zzib;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzib$2;->zzakt:Lcom/google/android/gms/internal/zzju;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzib;->zzm(Lcom/google/android/gms/internal/zzju;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
