.class Lcom/facebook/login/widget/LoginButton$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton;->checkToolTipSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/LoginButton;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 488
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$1;->this$0:Lcom/facebook/login/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 491
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$1;->val$appId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v0

    .line 492
    .local v0, "settings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$1;->this$0:Lcom/facebook/login/widget/LoginButton;

    # invokes: Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$100(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$1$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$1$1;-><init>(Lcom/facebook/login/widget/LoginButton$1;Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method
