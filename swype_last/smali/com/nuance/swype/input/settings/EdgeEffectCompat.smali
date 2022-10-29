.class public Lcom/nuance/swype/input/settings/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;


# instance fields
.field private mEdgeEffect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 167
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->finish(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public isFinished()Z
    .registers 3

    .prologue
    .line 103
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .registers 4
    .param p1, "velocity"    # I

    .prologue
    .line 153
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->onAbsorb(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public onPull(F)Z
    .registers 4
    .param p1, "deltaDistance"    # F

    .prologue
    .line 126
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onRelease()Z
    .registers 3

    .prologue
    .line 138
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->onRelease(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->IMPL:Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat$EdgeEffectImpl;->setSize(Ljava/lang/Object;II)V

    .line 93
    return-void
.end method
