.class Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;
.super Ljava/lang/Object;
.source "InAppDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppDialogFragment$InAppDialog;->dismissWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v1, v1, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v1

    invoke-virtual {v1}, Lcom/localytics/android/InAppCampaign;->getDisplayLocation()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "location":Ljava/lang/String;
    const-string/jumbo v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$1200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const-string/jumbo v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$1300(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 737
    :cond_2
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$1400(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 742
    :cond_3
    const-string/jumbo v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$4;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-static {v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$1500(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
