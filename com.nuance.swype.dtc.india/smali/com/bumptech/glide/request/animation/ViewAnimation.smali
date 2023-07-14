.class public final Lcom/bumptech/glide/request/animation/ViewAnimation;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
    .locals 0
    .param p1, "animationFactory"    # Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/request/animation/ViewAnimation;, "Lcom/bumptech/glide/request/animation/ViewAnimation<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewAnimation;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    .line 22
    return-void
.end method


# virtual methods
.method public final animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
    .locals 3
    .param p2, "adapter"    # Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/bumptech/glide/request/animation/ViewAnimation;, "Lcom/bumptech/glide/request/animation/ViewAnimation<TR;>;"
    .local p1, "current":Ljava/lang/Object;, "TR;"
    invoke-interface {p2}, Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/request/animation/ViewAnimation;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

    invoke-interface {v2}, Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;->build()Landroid/view/animation/Animation;

    move-result-object v0

    .line 40
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
