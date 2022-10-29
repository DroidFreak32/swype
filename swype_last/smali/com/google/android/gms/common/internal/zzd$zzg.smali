.class public final Lcom/google/android/gms/common/internal/zzd$zzg;
.super Lcom/google/android/gms/common/internal/zzt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation


# instance fields
.field private xI:Lcom/google/android/gms/common/internal/zzd;

.field private final xJ:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzd;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzt$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->xI:Lcom/google/android/gms/common/internal/zzd;

    iput p2, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->xJ:I

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 11

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->xI:Lcom/google/android/gms/common/internal/zzd;

    const-string/jumbo v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->xI:Lcom/google/android/gms/common/internal/zzd;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->xJ:I

    .line 1000
    iget-object v2, v0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, -0x1

    new-instance v6, Lcom/google/android/gms/common/internal/zzd$zzj;

    invoke-direct {v6, v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzd$zzj;-><init>(Lcom/google/android/gms/common/internal/zzd;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzg;->xI:Lcom/google/android/gms/common/internal/zzd;

    .line 0
    return-void
.end method

.method public final zzb(ILandroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
