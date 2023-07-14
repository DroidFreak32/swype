.class Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    invoke-static {p1, p2}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .locals 0
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->finish(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onAbsorb(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "velocity"    # I

    .prologue
    .line 65
    invoke-static {p1, p2}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->onAbsorb(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 57
    invoke-static {p1, p2}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->onRelease(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/settings/EdgeEffectCompatIcs;->setSize(Ljava/lang/Object;II)V

    .line 46
    return-void
.end method
