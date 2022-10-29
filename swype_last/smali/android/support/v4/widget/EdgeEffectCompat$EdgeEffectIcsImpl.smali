.class Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
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
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    .line 1062
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 127
    return v0
.end method

.method public final finish(Ljava/lang/Object;)V
    .registers 2
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 111
    .line 1042
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 112
    return-void
.end method

.method public final isFinished(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 107
    .line 1038
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 107
    return v0
.end method

.method public final newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    .line 1030
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 99
    return-object v0
.end method

.method public final onAbsorb(Ljava/lang/Object;I)Z
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "velocity"    # I

    .prologue
    .line 123
    .line 1057
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1058
    const/4 v0, 0x1

    .line 123
    return v0
.end method

.method public final onPull(Ljava/lang/Object;F)Z
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 115
    invoke-static {p1, p2}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onPull(Ljava/lang/Object;FF)Z
    .registers 5
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F
    .param p3, "displacement"    # F

    .prologue
    .line 131
    invoke-static {p1, p2}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public final onRelease(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 119
    .line 1051
    check-cast p1, Landroid/widget/EdgeEffect;

    .line 1052
    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1053
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 119
    return v0
.end method

.method public final setSize(Ljava/lang/Object;II)V
    .registers 4
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 103
    .line 1034
    check-cast p1, Landroid/widget/EdgeEffect;

    .end local p1    # "edgeEffect":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 104
    return-void
.end method
