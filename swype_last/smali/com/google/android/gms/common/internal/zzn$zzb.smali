.class final Lcom/google/android/gms/common/internal/zzn$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzn$zzb$zza;
    }
.end annotation


# instance fields
.field mState:I

.field xL:Landroid/os/IBinder;

.field yR:Landroid/content/ComponentName;

.field final yS:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

.field final yT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field yU:Z

.field final yV:Lcom/google/android/gms/common/internal/zzn$zza;

.field final synthetic yW:Lcom/google/android/gms/common/internal/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/internal/zzn$zza;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yV:Lcom/google/android/gms/common/internal/zzn$zza;

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzn$zzb$zza;-><init>(Lcom/google/android/gms/common/internal/zzn$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yS:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yT:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/ServiceConnection;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zza$2d8eac7(Landroid/content/ServiceConnection;)V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/common/stats/zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yV:Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzn$zza;->zzasy()Landroid/content/Intent;

    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzasz()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yT:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzhm(Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/common/stats/zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yV:Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzn$zza;->zzasy()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yS:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    const/16 v3, 0x81

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/stats/zzb;->zza$58d5677d(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yU:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yU:Z

    if-nez v0, :cond_35

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/common/stats/zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzn;->zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn$zzb;->yS:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method
