.class final Lcom/google/android/gms/internal/zzpy$zzb;
.super Lcom/google/android/gms/internal/zzqe$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private uu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzpy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpy;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqe$zza;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzb;->uu:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzaou()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$zzb;->uu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpy;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/internal/zzpy;)V

    goto :goto_a
.end method
