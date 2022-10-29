.class final Lcom/google/android/gms/internal/zzsb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsb$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzsb$zzb$zza;)Lcom/google/android/gms/internal/zzsb$zzb$zzb;
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb$zzb$zzb;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zzsb$zzb$zza;->zzt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    iget v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KP:I

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/internal/zzsb$zzb$zza;->zzd(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    iget v1, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KQ:I

    if-eqz v1, :cond_13

    iput v2, v0, Lcom/google/android/gms/internal/zzsb$zzb$zzb;->KR:I

    goto :goto_13
.end method
