.class final Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;
.super Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPull(Ljava/lang/Object;FF)Z
    .registers 5
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F
    .param p3, "displacement"    # F

    .prologue
    .line 137
    .line 1024
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1025
    const/4 v0, 0x1

    .line 137
    return v0
.end method
