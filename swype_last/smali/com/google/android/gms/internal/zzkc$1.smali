.class final Lcom/google/android/gms/internal/zzkc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzckm:Lcom/google/android/gms/internal/zzkc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkc$1;->zzckm:Lcom/google/android/gms/internal/zzkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkc$1;->zzckm:Lcom/google/android/gms/internal/zzkc;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/internal/zzkc;->zzckk:Ljava/lang/Thread;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkc$1;->zzckm:Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zzew()V

    return-void
.end method
