.class final Lcom/google/android/gms/internal/zzcj$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzfs;)V
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
.field final synthetic zzart:Lcom/google/android/gms/internal/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcj$3;->zzart:Lcom/google/android/gms/internal/zzcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzft;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj$3;->zzart:Lcom/google/android/gms/internal/zzcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcj;->zza$711cf703(Lcom/google/android/gms/internal/zzcj;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj$3;->zzart:Lcom/google/android/gms/internal/zzcj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcj;->zzc(Lcom/google/android/gms/internal/zzft;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj$3;->zzart:Lcom/google/android/gms/internal/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcj;->zzgw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj$3;->zzart:Lcom/google/android/gms/internal/zzcj;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcj;->zzk(I)V

    .line 0
    return-void
.end method
