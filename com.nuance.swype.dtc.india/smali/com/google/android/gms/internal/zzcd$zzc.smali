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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcd$zzc;->zzard:Lcom/google/android/gms/internal/zzju;

    return-void
.end method


# virtual methods
.method public final zzhh()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final zzhi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->zzard:Lcom/google/android/gms/internal/zzju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzhj()Lcom/google/android/gms/internal/zzck;
    .locals 0

    return-object p0
.end method
