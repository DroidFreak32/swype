.class public Lcom/facebook/share/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/LikeView$2;,
        Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;,
        Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;,
        Lcom/facebook/share/widget/LikeView$OnErrorListener;,
        Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;,
        Lcom/facebook/share/widget/LikeView$HorizontalAlignment;,
        Lcom/facebook/share/widget/LikeView$Style;,
        Lcom/facebook/share/widget/LikeView$ObjectType;
    }
.end annotation


# static fields
.field private static final NO_FOREGROUND_COLOR:I = -0x1


# instance fields
.field private auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private containerView:Landroid/widget/LinearLayout;

.field private creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

.field private edgePadding:I

.field private explicitlyDisabled:Z

.field private foregroundColor:I

.field private horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field private internalPadding:I

.field private likeActionController:Lcom/facebook/share/internal/LikeActionController;

.field private likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

.field private likeButton:Lcom/facebook/share/internal/LikeButton;

.field private likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;

.field private socialSentenceView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 282
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 283
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 284
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 301
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 283
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 284
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 312
    invoke-direct {p0, p2}, Lcom/facebook/share/widget/LikeView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/widget/LikeView;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;
    .param p1, "x1"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;)Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;
    .param p1, "x1"    # Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/share/widget/LikeView;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->toggleLike()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/share/widget/LikeView;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method private associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 6
    .param p1, "likeActionController"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 632
    new-instance v2, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 633
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 637
    .local v1, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 643
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .registers 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 581
    .local v0, "context":Landroid/content/Context;
    :goto_4
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 582
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_4

    .line 585
    :cond_13
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    .line 586
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 588
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1a
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unable to get Activity."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 592
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 593
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "style"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$Style;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string/jumbo v1, "auxiliary_position"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v1, "horizontal_alignment"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string/jumbo v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 495
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$dimen;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    .line 496
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$dimen;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    .line 497
    iget v1, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    .line 498
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$color;->com_facebook_likeview_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 501
    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/share/widget/LikeView;->setBackgroundColor(I)V

    .line 503
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 504
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 507
    .local v0, "containerViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeSocialSentenceView(Landroid/content/Context;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeLikeCountView(Landroid/content/Context;)V

    .line 513
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 514
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/facebook/share/widget/LikeView;->addView(Landroid/view/View;)V

    .line 519
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {p0, v1, v2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 520
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    .line 521
    return-void
.end method

.method private initializeLikeButton(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 524
    new-instance v2, Lcom/facebook/share/internal/LikeButton;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    :goto_10
    invoke-direct {v2, p1, v1}, Lcom/facebook/share/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    .line 527
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    new-instance v2, Lcom/facebook/share/widget/LikeView$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/widget/LikeView$1;-><init>(Lcom/facebook/share/widget/LikeView;)V

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    .local v0, "buttonLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    return-void

    .line 524
    .end local v0    # "buttonLayout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private initializeLikeCountView(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 557
    new-instance v1, Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-direct {v1, p1}, Lcom/facebook/share/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    .line 559
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 562
    .local v0, "likeCountViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    return-void
.end method

.method private initializeSocialSentenceView(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 543
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/R$dimen;->com_facebook_likeview_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 546
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 547
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget v2, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 550
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 553
    .local v0, "socialSentenceViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 448
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_9

    .line 490
    :cond_8
    :goto_8
    return-void

    .line 452
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/R$styleable;->com_facebook_like_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 454
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_8

    .line 458
    sget v1, Lcom/facebook/R$styleable;->com_facebook_like_view_com_facebook_object_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 460
    sget v1, Lcom/facebook/R$styleable;->com_facebook_like_view_com_facebook_object_type:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 463
    sget v1, Lcom/facebook/R$styleable;->com_facebook_like_view_com_facebook_style:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    # invokes: Lcom/facebook/share/widget/LikeView$Style;->getValue()I
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$Style;->access$000(Lcom/facebook/share/widget/LikeView$Style;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$Style;->fromInt(I)Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 466
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    if-nez v1, :cond_53

    .line 467
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported value for LikeView \'style\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_53
    sget v1, Lcom/facebook/R$styleable;->com_facebook_like_view_com_facebook_auxiliary_view_position:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    # invokes: Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->getValue()I
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->access$100(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->fromInt(I)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 473
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-nez v1, :cond_72

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_72
    sget v1, Lcom/facebook/R$styleable;->com_facebook_like_view_com_facebook_horizontal_alignment:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    # invokes: Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->getValue()I
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->access$200(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->fromInt(I)Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 481
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-nez v1, :cond_91

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_91
    sget v1, Lcom/facebook/R$styleable;->com_facebook_like_view_com_facebook_foreground_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 489
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_8
.end method

.method private setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 5
    .param p1, "newObjectId"    # Ljava/lang/String;
    .param p2, "newObjectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->tearDownObjectAssociations()V

    .line 613
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 614
    iput-object p2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 616
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 627
    :cond_d
    :goto_d
    return-void

    .line 620
    :cond_e
    new-instance v0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 621
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 622
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    goto :goto_d
.end method

.method private tearDownObjectAssociations()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_14

    .line 647
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 657
    :cond_14
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    if-eqz v0, :cond_1f

    .line 658
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->cancel()V

    .line 660
    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 663
    :cond_1f
    iput-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 664
    return-void
.end method

.method private toggleLike()V
    .registers 5

    .prologue
    .line 566
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v1, :cond_18

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-nez v1, :cond_d

    .line 569
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 572
    :cond_d
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/share/internal/LikeActionController;->toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    .line 577
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_18
    return-void
.end method

.method private updateBoxCountCaretPosition()V
    .registers 4

    .prologue
    .line 760
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 776
    :goto_d
    return-void

    .line 762
    :pswitch_e
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 770
    :goto_12
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_d

    .line 766
    :pswitch_16
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_12

    .line 770
    :pswitch_1b
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v0, v2, :cond_26

    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_12

    :cond_26
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_12

    .line 760
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_1b
    .end packed-switch
.end method

.method private updateLayout()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 689
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 690
    .local v2, "containerViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v4}, Lcom/facebook/share/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 692
    .local v1, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v7, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v4, v7, :cond_88

    const/4 v3, 0x3

    .line 697
    .local v3, "viewGravity":I
    :goto_1b
    or-int/lit8 v4, v3, 0x30

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 701
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v4, v8}, Lcom/facebook/share/internal/LikeBoxCountView;->setVisibility(I)V

    .line 705
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    sget-object v7, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    if-ne v4, v7, :cond_92

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v4}, Lcom/facebook/share/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 708
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 718
    .local v0, "auxView":Landroid/view/View;
    :goto_43
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 723
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 725
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v8, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-ne v7, v8, :cond_57

    move v5, v6

    :cond_57
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 730
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v5, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eq v4, v5, :cond_6c

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v5, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-ne v4, v5, :cond_ae

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v5, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v4, v5, :cond_ae

    .line 734
    :cond_6c
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 735
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    :goto_7a
    sget-object v4, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v5, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v5}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_f0

    .line 757
    .end local v0    # "auxView":Landroid/view/View;
    :cond_87
    :goto_87
    return-void

    .line 692
    .end local v3    # "viewGravity":I
    :cond_88
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v7, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v4, v7, :cond_90

    move v3, v5

    goto :goto_1b

    :cond_90
    const/4 v3, 0x5

    goto :goto_1b

    .line 709
    .restart local v3    # "viewGravity":I
    :cond_92
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    sget-object v7, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    if-ne v4, v7, :cond_87

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v4}, Lcom/facebook/share/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 712
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateBoxCountCaretPosition()V

    .line 713
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    .restart local v0    # "auxView":Landroid/view/View;
    goto :goto_43

    .line 738
    :cond_ae
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7a

    .line 744
    :pswitch_b9
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v6, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v7, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_87

    .line 747
    :pswitch_c5
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v6, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v7, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_87

    .line 750
    :pswitch_d1
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v5, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v4, v5, :cond_e3

    .line 751
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v6, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v7, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_87

    .line 753
    :cond_e3
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v6, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v7, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_87

    .line 742
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_c5
        :pswitch_d1
    .end packed-switch
.end method

.method private updateLikeStateAndLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 667
    iget-boolean v2, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    if-nez v2, :cond_26

    const/4 v0, 0x1

    .line 669
    .local v0, "enabled":Z
    :goto_7
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-nez v2, :cond_28

    .line 670
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v2, v1}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 671
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v3}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 681
    :goto_1a
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 682
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setEnabled(Z)V

    .line 684
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 685
    return-void

    .end local v0    # "enabled":Z
    :cond_26
    move v0, v1

    .line 667
    goto :goto_7

    .line 674
    .restart local v0    # "enabled":Z
    :cond_28
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 675
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->shouldEnableView()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_1a
.end method


# virtual methods
.method public getOnErrorListener()Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 442
    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 444
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 445
    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)V
    .registers 3
    .param p1, "auxiliaryViewPosition"    # Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .prologue
    .line 353
    if-eqz p1, :cond_c

    .line 355
    :goto_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eq v0, p1, :cond_b

    .line 356
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 358
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 360
    :cond_b
    return-void

    .line 353
    :cond_c
    sget-object p1, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 434
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 436
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    .line 437
    return-void

    .line 434
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setForegroundColor(I)V
    .registers 3
    .param p1, "foregroundColor"    # I

    .prologue
    .line 384
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    if-eq v0, p1, :cond_9

    .line 385
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    :cond_9
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 429
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 430
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 417
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 418
    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)V
    .registers 3
    .param p1, "horizontalAlignment"    # Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .prologue
    .line 368
    if-eqz p1, :cond_c

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-eq v0, p1, :cond_b

    .line 371
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 373
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 375
    :cond_b
    return-void

    .line 368
    :cond_c
    sget-object p1, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    goto :goto_2
.end method

.method public setLikeViewStyle(Lcom/facebook/share/widget/LikeView$Style;)V
    .registers 3
    .param p1, "likeViewStyle"    # Lcom/facebook/share/widget/LikeView$Style;

    .prologue
    .line 338
    if-eqz p1, :cond_c

    .line 339
    :goto_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    if-eq v0, p1, :cond_b

    .line 340
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 342
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 344
    :cond_b
    return-void

    .line 338
    :cond_c
    sget-object p1, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    goto :goto_2
.end method

.method public setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 4
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    if-eqz p2, :cond_1a

    .line 324
    :goto_7
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eq p2, v0, :cond_19

    .line 325
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 327
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    .line 329
    :cond_19
    return-void

    .line 322
    :cond_1a
    sget-object p2, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    goto :goto_7
.end method

.method public setOnErrorListener(Lcom/facebook/share/widget/LikeView$OnErrorListener;)V
    .registers 2
    .param p1, "onErrorListener"    # Lcom/facebook/share/widget/LikeView$OnErrorListener;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    .line 397
    return-void
.end method
