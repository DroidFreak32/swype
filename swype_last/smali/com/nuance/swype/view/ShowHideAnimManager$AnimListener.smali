.class final Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShowHideAnimManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/ShowHideAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimListener"
.end annotation


# instance fields
.field private isShow:Z

.field final synthetic this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nuance/swype/view/ShowHideAnimManager;Landroid/view/View;Z)V
    .registers 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isShow"    # Z

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->view:Landroid/view/View;

    .line 111
    iput-boolean p3, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->isShow:Z

    .line 112
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-boolean v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->isShow:Z

    if-eqz v0, :cond_10

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

    iget-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/view/ShowHideAnimManager;->onShowComplete(Landroid/view/View;Z)V

    .line 124
    :goto_c
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    return-void

    .line 122
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

    iget-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;Z)V

    goto :goto_c
.end method
