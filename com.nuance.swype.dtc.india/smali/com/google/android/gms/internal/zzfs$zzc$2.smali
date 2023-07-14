.class final Lcom/google/android/gms/internal/zzfs$zzc$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs$zzc;->release()V
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
.field final synthetic zzbmk:Lcom/google/android/gms/internal/zzfs$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zzc$2;->zzbmk:Lcom/google/android/gms/internal/zzfs$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    const-string/jumbo v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$zzc$2;->zzbmk:Lcom/google/android/gms/internal/zzfs$zzc;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$zzc;->zzbmi:Lcom/google/android/gms/internal/zzfs$zzd;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfs$zzd;->zzmc()V

    .line 0
    return-void
.end method
