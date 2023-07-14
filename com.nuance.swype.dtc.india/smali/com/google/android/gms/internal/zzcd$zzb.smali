.class public final Lcom/google/android/gms/internal/zzcd$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private zzarc:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$zzb;->zzarc:Lcom/google/android/gms/ads/internal/formats/zzh;

    return-void
.end method


# virtual methods
.method public final zzhh()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzb;->zzarc:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzlc()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final zzhi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzb;->zzarc:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzhj()Lcom/google/android/gms/internal/zzck;
    .locals 0

    return-object p0
.end method
