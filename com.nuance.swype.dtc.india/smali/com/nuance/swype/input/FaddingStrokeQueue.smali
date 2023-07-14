.class public Lcom/nuance/swype/input/FaddingStrokeQueue;
.super Ljava/lang/Object;
.source "FaddingStrokeQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;,
        Lcom/nuance/swype/input/FaddingStrokeQueue$FadingStroke;
    }
.end annotation


# static fields
.field protected static final FADING_DELAY:I = 0x82

.field protected static final FADING_SPEED:I = 0x8

.field protected static final FADING_SPEED_PEN_DOWN:I = 0xc

.field protected static final MSG_FADING:I = 0x1

.field protected static final SUB_FADING_SPEED:I = 0x3

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final handlerCallback:Landroid/os/Handler$Callback;

.field protected mFaddingStarted:Z

.field protected mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

.field final mHandler:Landroid/os/Handler;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "FaddingStrokeQueue"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/FaddingStrokeQueue;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/nuance/swype/input/FaddingStrokeQueue$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/FaddingStrokeQueue$1;-><init>(Lcom/nuance/swype/input/FaddingStrokeQueue;)V

    iput-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->handlerCallback:Landroid/os/Handler$Callback;

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    .line 34
    iput-object p3, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mView:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->add(Landroid/graphics/Path;)V

    .line 118
    return-void
.end method

.method public clearAll()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 62
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->draw(Landroid/graphics/Canvas;)V

    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->reduceAlpha()V

    .line 57
    :cond_0
    return-void
.end method

.method public fading()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    iget v0, v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->reduceAlpha()V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    :cond_0
    return-void
.end method

.method public pauseFading()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    .line 107
    return-void
.end method

.method public startActionFading()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    iget v0, v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->reduceAlpha()V

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 80
    :cond_0
    return-void
.end method

.method public startActionFadingPenDown()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    iget v0, v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->reduceAlphaPenDown()V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 88
    :cond_0
    return-void
.end method

.method public startFading()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    iget v0, v0, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->mFadingQueueSize:I

    if-lez v0, :cond_0

    .line 97
    iput-boolean v1, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    goto :goto_0
.end method

.method public stopActionFading()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    .line 92
    return-void
.end method

.method public stopFading()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStrokeQueueBuffer:Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue$FaddingStrokeQueueBuffer;->clear()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mFaddingStarted:Z

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/FaddingStrokeQueue;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 114
    return-void
.end method
