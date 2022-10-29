.class public Lcom/google/android/gms/internal/zzki$zze;
.super Lcom/google/android/gms/internal/zzki$zzd;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzki$zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzki$zzd;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final zztl()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method
