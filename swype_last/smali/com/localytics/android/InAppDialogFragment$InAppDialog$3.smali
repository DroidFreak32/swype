.class Lcom/localytics/android/InAppDialogFragment$InAppDialog$3;
.super Ljava/lang/Object;
.source "InAppDialogFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppDialogFragment$InAppDialog;->createAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V
    .registers 2

    .prologue
    .line 613
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$3;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$3;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v0, v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mListener:Lcom/localytics/android/MessagingListener;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$1100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/MessagingListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 624
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 626
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$3;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v0, v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mListener:Lcom/localytics/android/MessagingListener;
    invoke-static {v0}, Lcom/localytics/android/InAppDialogFragment;->access$1100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/MessagingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/localytics/android/MessagingListener;->localyticsDidDisplayInAppMessage()V

    .line 629
    :cond_1b
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 634
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 617
    return-void
.end method
