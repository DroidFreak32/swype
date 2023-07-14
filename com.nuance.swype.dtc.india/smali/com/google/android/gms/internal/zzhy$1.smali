.class final Lcom/google/android/gms/internal/zzhy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbxw:Lcom/google/android/gms/internal/zzhy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhy$1;->zzbxw:Lcom/google/android/gms/internal/zzhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhy$1;->zzbxw:Lcom/google/android/gms/internal/zzhy;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzhy;->zzbxv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhy$1;->zzbxw:Lcom/google/android/gms/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhy;->cancel()V

    goto :goto_0
.end method
