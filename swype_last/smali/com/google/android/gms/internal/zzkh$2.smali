.class final Lcom/google/android/gms/internal/zzkh$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkh;->zzg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzclh:Lcom/google/android/gms/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkh;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkh$2;->zzclh:Lcom/google/android/gms/internal/zzkh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkh$2;->zzala:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$2;->zzclh:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zza(Lcom/google/android/gms/internal/zzkh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$2;->zzclh:Lcom/google/android/gms/internal/zzkh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkh$2;->zzala:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkh;->zzae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzkh;->zza(Lcom/google/android/gms/internal/zzkh;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkh$2;->zzclh:Lcom/google/android/gms/internal/zzkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zza(Lcom/google/android/gms/internal/zzkh;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method
