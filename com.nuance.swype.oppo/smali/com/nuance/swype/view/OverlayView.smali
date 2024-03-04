.class public final Lcom/nuance/swype/view/OverlayView;
.super Lcom/nuance/swype/view/BasicViewLayout;
.source "OverlayView.java"


# static fields
.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private parentViewGroupId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "OverlayView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/OverlayView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const v0, 0x1020002

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parentViewGroupId"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput p3, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    .line 47
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->enableHardwareAccel()V

    .line 48
    return-void
.end method

.method private findParentGroup(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "rootView":Landroid/view/View;
    iget v2, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 160
    check-cast v0, Landroid/widget/FrameLayout;

    .line 164
    .local v0, "parentGroup":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 162
    .end local v0    # "parentGroup":Landroid/view/ViewGroup;
    :cond_0
    iget v2, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "parentGroup":Landroid/view/ViewGroup;
    goto :goto_0

    .end local v0    # "parentGroup":Landroid/view/ViewGroup;
    :cond_1
    const v2, 0x1020002

    goto :goto_1
.end method


# virtual methods
.method public final attach(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/swype/view/OverlayView;->findParentGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find parent for overlay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/swype/view/OverlayView;->findParentGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/nuance/swype/view/OverlayView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "ensureOverlayAddedToContentFrame(): overlay parented in wrong view"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target view has no window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final detach()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->removeAllViews()V

    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 71
    .local v0, "vp":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 72
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v0    # "vp":Landroid/view/ViewParent;
    :cond_1
    sget-object v1, Lcom/nuance/swype/view/OverlayView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "detach(): unexpected (parent not ViewGroup)"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final windowToOverlayConfine$202867f8(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "rc"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    new-array v1, v7, [I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    aput v2, v1, v5

    iget v2, p1, Landroid/graphics/Rect;->top:I

    aput v2, v1, v6

    new-array v2, v7, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v1, v5

    aget v4, v2, v5

    sub-int/2addr v3, v4

    aget v4, v1, v6

    aget v2, v2, v6

    sub-int v2, v4, v2

    aput v3, v1, v5

    aput v2, v1, v6

    aget v2, v1, v5

    aget v1, v1, v6

    invoke-static {p1, v2, v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 125
    move-object v0, p1

    .local v0, "out":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p1, v1, v7}, Landroid/support/v4/app/ActivityCompatHoneycomb;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 126
    return-object v0
.end method
