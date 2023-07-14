.class public Lcom/nuance/swype/input/DrawableCandidate;
.super Lcom/nuance/input/swypecorelib/WordCandidate;
.source "DrawableCandidate.java"


# instance fields
.field public final icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 17
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    return-object v0
.end method
