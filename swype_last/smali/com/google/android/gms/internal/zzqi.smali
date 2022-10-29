.class public final Lcom/google/android/gms/internal/zzqi;
.super Ljava/lang/Object;


# instance fields
.field final vl:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzs;->zzhb(I)Z

    move-result v0

    .line 0
    if-nez v0, :cond_15

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1f

    :cond_15
    const/4 v0, 0x1

    :goto_16
    const-string/jumbo v1, "This Activity is not supported before platform version 11 (3.0 Honeycomb). Please use FragmentActivity instead."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->vl:Ljava/lang/Object;

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method
