.class final Lcom/google/android/gms/internal/zzfs$zzd$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfs$zzd$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbmp:Lcom/google/android/gms/internal/zzfp;

.field final synthetic zzbmq:Lcom/google/android/gms/internal/zzfs$zzd$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$zzd$3;Lcom/google/android/gms/internal/zzfp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zzd$3$1;->zzbmq:Lcom/google/android/gms/internal/zzfs$zzd$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$zzd$3$1;->zzbmp:Lcom/google/android/gms/internal/zzfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zzd$3$1;->zzbmq:Lcom/google/android/gms/internal/zzfs$zzd$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$zzd$3;->zzbmo:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$zzd;->zzblt:Lcom/google/android/gms/internal/zzkl;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfs$zzd$3$1;->zzbmp:Lcom/google/android/gms/internal/zzfp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzkl;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zzd$3$1;->zzbmp:Lcom/google/android/gms/internal/zzfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfp;->destroy()V

    return-void
.end method
