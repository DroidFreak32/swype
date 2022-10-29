.class public Lcom/nuance/swype/input/emoji/EmojiViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "EmojiViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;
    }
.end annotation


# instance fields
.field private allowScroll:Z

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->allowScroll:Z

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->allowScroll:Z

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiViewPager;)Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiViewPager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->listener:Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->allowScroll:Z

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->listener:Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;

    if-eqz v0, :cond_11

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/swype/input/emoji/EmojiViewPager$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/emoji/EmojiViewPager$1;-><init>(Lcom/nuance/swype/input/emoji/EmojiViewPager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_11
    return-void
.end method

.method public setAllowScroll(Z)V
    .registers 2
    .param p1, "allowScroll"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->allowScroll:Z

    .line 34
    return-void
.end method

.method public setPagerSizeChangeListener(Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiViewPager;->listener:Lcom/nuance/swype/input/emoji/EmojiViewPager$PagerSizeChangeListener;

    .line 38
    return-void
.end method
