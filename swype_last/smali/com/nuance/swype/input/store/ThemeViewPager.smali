.class public Lcom/nuance/swype/input/store/ThemeViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ThemeViewPager.java"


# instance fields
.field private mDisableScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 49
    :cond_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_b
    return v0

    .line 43
    :pswitch_c
    iget-boolean v0, p0, Lcom/nuance/swype/input/store/ThemeViewPager;->mDisableScroll:Z

    if-eqz v0, :cond_7

    .line 44
    const/4 v0, 0x0

    goto :goto_b

    .line 39
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 26
    :try_start_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/store/ThemeViewPager;->mDisableScroll:Z

    if-eqz v1, :cond_6

    .line 32
    :goto_5
    return v0

    .line 29
    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result v0

    goto :goto_5

    .line 31
    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public setScrollDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/nuance/swype/input/store/ThemeViewPager;->mDisableScroll:Z

    .line 54
    return-void
.end method
