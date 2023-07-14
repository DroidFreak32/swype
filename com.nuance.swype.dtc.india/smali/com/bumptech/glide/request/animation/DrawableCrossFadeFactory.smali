.class public final Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final duration:I

.field private firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(B)V

    .line 31
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;

    invoke-direct {v1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    .local p1, "animationFactory":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    .line 47
    const/16 v0, 0x12c

    iput v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    .line 48
    return-void
.end method


# virtual methods
.method public final build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 3
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    const/4 v2, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    if-eqz p2, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 1065
    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-virtual {v0, v2, v2}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 1074
    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 1076
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    goto :goto_0
.end method
