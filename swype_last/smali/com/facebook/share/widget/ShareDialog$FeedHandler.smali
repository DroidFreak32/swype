.class Lcom/facebook/share/widget/ShareDialog$FeedHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.com/facebook/internal/FacebookDialogBase$com/facebook/internal/FacebookDialogBase$com/facebook/internal/FacebookDialogBase$com/facebook/internal/FacebookDialogBase$ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .registers 2

    .prologue
    .line 430
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/ShareDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/ShareDialog$1;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    .line 438
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/facebook/share/internal/ShareFeedContent;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 430
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .registers 8
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 444
    iget-object v3, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v4, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v4}, Lcom/facebook/share/widget/ShareDialog;->access$900(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    invoke-static {v3, v4, p1, v5}, Lcom/facebook/share/widget/ShareDialog;->access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 445
    iget-object v3, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v3}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 447
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    instance-of v3, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v3, :cond_28

    move-object v1, p1

    .line 448
    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .line 449
    .local v1, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    invoke-static {v1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 450
    invoke-static {v1}, Lcom/facebook/share/internal/WebDialogParameters;->createForFeed(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v2

    .line 456
    .end local v1    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    .end local p1    # "content":Lcom/facebook/share/model/ShareContent;
    .local v2, "params":Landroid/os/Bundle;
    :goto_21
    const-string/jumbo v3, "feed"

    invoke-static {v0, v3, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 461
    return-object v0

    .line 452
    .end local v2    # "params":Landroid/os/Bundle;
    .restart local p1    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_28
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    .line 453
    .end local p1    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->createForFeed(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "params":Landroid/os/Bundle;
    goto :goto_21
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 430
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 433
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
