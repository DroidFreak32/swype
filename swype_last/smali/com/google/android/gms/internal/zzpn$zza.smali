.class final Lcom/google/android/gms/internal/zzpn$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic sP:Lcom/google/android/gms/internal/zzpn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpn;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpn$zza;-><init>(Lcom/google/android/gms/internal/zzpn;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzpn;->mStarted:Z

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/internal/zzpn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpn;->vm:Lcom/google/android/gms/internal/zzqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpn;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/internal/zzpn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzpn;->zzb(Lcom/google/android/gms/internal/zzpn;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zzb(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqk;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpn;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/internal/zzpn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    .line 2000
    iget v1, v1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzpn;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpn;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzpn;->vm:Lcom/google/android/gms/internal/zzqk;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/internal/zzpn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    .line 3000
    iget v3, v3, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza$31f23251(Landroid/app/Activity;Lcom/google/android/gms/internal/zzqk;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_6

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/internal/zzpn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 4000
    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    const/16 v1, 0x12

    if-ne v0, v1, :cond_8f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpn;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzpn;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzpn$zza$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzpn$zza$1;-><init>(Lcom/google/android/gms/internal/zzpn$zza;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqe$zza;)Lcom/google/android/gms/internal/zzqe;

    goto/16 :goto_6

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/internal/zzpn;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpn$zza;->sP:Lcom/google/android/gms/internal/zzpn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpn;->zzb(Lcom/google/android/gms/internal/zzpn;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpn;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto/16 :goto_6
.end method
