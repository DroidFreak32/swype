.class public final Lcom/google/android/gms/internal/zzcd$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field private final zzard:Lcom/google/android/gms/internal/zzju;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/zzju;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcd$zzc;->zzard:Lcom/google/android/gms/internal/zzju;

    return-void
.end method


# virtual methods
.method public final zzhh()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final zzhi()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->zzard:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final zzhj()Lcom/google/android/gms/internal/zzck;
    .registers 1

    return-object p0
.end method
