.class final Lcom/google/android/gms/internal/zzkf$10;
.super Lcom/google/android/gms/internal/zzkf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzala:Landroid/content/Context;

.field final synthetic zzcko:Lcom/google/android/gms/internal/zzkf$zzb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzkf$zzb;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkf$10;->zzala:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkf$10;->zzcko:Lcom/google/android/gms/internal/zzkf$zzb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkf$zza;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final zzew()V
    .registers 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkf$10;->zzala:Landroid/content/Context;

    .line 1000
    const-string/jumbo v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "content_url_hashes"

    const-string/jumbo v3, "content_url_hashes"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkf$10;->zzcko:Lcom/google/android/gms/internal/zzkf$zzb;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkf$10;->zzcko:Lcom/google/android/gms/internal/zzkf$zzb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzkf$zzb;->zzg(Landroid/os/Bundle;)V

    :cond_28
    return-void
.end method
