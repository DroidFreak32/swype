.class final Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public final finish(Ljava/lang/Object;)V
    .locals 0
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 105
    return-void
.end method

.method public final isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public final newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final onPull(Ljava/lang/Object;F)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 108
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onRelease(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public final setSize(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 96
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 97
    return-void
.end method
