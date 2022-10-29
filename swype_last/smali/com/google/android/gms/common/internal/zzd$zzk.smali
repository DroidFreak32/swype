.class public final Lcom/google/android/gms/common/internal/zzd$zzk;
.super Lcom/google/android/gms/common/internal/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd$zza;"
    }
.end annotation


# instance fields
.field final synthetic xG:Lcom/google/android/gms/common/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzd;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd$zzk;->xG:Lcom/google/android/gms/common/internal/zzd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/zzd$zza;-><init>(Lcom/google/android/gms/common/internal/zzd;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final zzasd()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzk;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzd;->zzb(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzd$zzf;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzl(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzk;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzd;->zzb(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/zzd$zzf;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzk;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
