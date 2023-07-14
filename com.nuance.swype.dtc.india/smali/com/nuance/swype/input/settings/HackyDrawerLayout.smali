.class public Lcom/nuance/swype/input/settings/HackyDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "HackyDrawerLayout.java"


# instance fields
.field private mIsDisallowIntercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->mIsDisallowIntercept:Z

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 37
    .local v0, "handled":Z
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 40
    .end local v0    # "handled":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->mIsDisallowIntercept:Z

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 30
    return-void
.end method
