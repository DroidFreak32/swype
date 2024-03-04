.class public Lcom/fsck/k9/view/ToggleScrollView;
.super Landroid/widget/ScrollView;
.source "ToggleScrollView.java"


# instance fields
.field private mScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/ToggleScrollView;->mScrolling:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/fsck/k9/view/ToggleScrollView;->mScrolling:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/fsck/k9/view/ToggleScrollView;->mScrolling:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScrolling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/fsck/k9/view/ToggleScrollView;->mScrolling:Z

    .line 20
    return-void
.end method
