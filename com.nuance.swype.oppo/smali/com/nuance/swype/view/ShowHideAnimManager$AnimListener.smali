.class final Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShowHideAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/ShowHideAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimListener"
.end annotation


# instance fields
.field private isShow:Z

.field private synthetic this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nuance/swype/view/ShowHideAnimManager;Landroid/view/View;Z)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isShow"    # Z

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->view:Landroid/view/View;

    .line 94
    iput-boolean p3, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->isShow:Z

    .line 95
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->isShow:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

    iget-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onShowComplete(Landroid/view/View;)V

    .line 107
    :goto_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->this$0:Lcom/nuance/swype/view/ShowHideAnimManager;

    iget-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;)V

    goto :goto_0
.end method
