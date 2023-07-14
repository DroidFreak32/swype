.class final Lcom/google/android/gms/internal/zzfs$zzd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs$zzd;->zzme()V
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
        "Lcom/google/android/gms/internal/zzfp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbmo:Lcom/google/android/gms/internal/zzfs$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$zzd$3;->zzbmo:Lcom/google/android/gms/internal/zzfs$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzfp;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zzd$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzfs$zzd$3$1;-><init>(Lcom/google/android/gms/internal/zzfs$zzd$3;Lcom/google/android/gms/internal/zzfp;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method
