.class public Lcom/nuance/swype/input/emoji/finger/FingerStateManager;
.super Ljava/lang/Object;
.source "FingerStateManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;,
        Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final fingerStateParams:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

.field protected fingers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

.field private mapper:Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string/jumbo v0, "FingerStateManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/finger/FingerState$Params;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    .param p3, "listener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .param p4, "mapper"    # Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingers:Landroid/util/SparseArray;

    .line 69
    iput-object p4, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->mapper:Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;

    .line 70
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    .line 71
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingerStateParams:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    .prologue
    .line 84
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$SimpleMapper;-><init>(Landroid/content/Context;ZLcom/nuance/swype/input/emoji/finger/FingerStateManager$1;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .param p3, "mapper"    # Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->createFingerStateParams(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/finger/FingerState$Params;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;)V

    .line 76
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingerStateParams:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    return-object v0
.end method

.method private static createFingerStateParams(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->createDefault(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v0

    .line 80
    .local v0, "defaults":Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    new-instance v1, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;

    invoke-direct {v1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState$Params;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->setTrackVelocity(Z)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->build()Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v1

    return-object v1
.end method

.method private notifyFingerOnTouch(IILandroid/view/MotionEvent;)V
    .registers 10
    .param p1, "pointerIndex"    # I
    .param p2, "action"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 102
    .local v2, "pointerId":I
    if-ltz v2, :cond_1e

    .line 103
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->getFinger(I)Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    move-result-object v0

    .line 104
    .local v0, "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    const/4 v3, 0x3

    if-eq v3, p2, :cond_1f

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->mapper:Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;

    .line 105
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 106
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 104
    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;->map(FF)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    .line 107
    .local v1, "fingerable":Lcom/nuance/swype/input/emoji/finger/Fingerable;
    :goto_1b
    invoke-virtual {v0, v1, p2, p3}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->onTouch(Lcom/nuance/swype/input/emoji/finger/Fingerable;ILandroid/view/MotionEvent;)V

    .line 109
    .end local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    .end local v1    # "fingerable":Lcom/nuance/swype/input/emoji/finger/Fingerable;
    :cond_1e
    return-void

    .line 104
    .restart local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public cancelAll()V
    .registers 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 119
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    .line 120
    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->cancel()V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 122
    :cond_17
    return-void
.end method

.method protected getFinger(I)Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    .registers 7
    .param p1, "pointerId"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    .line 92
    .local v0, "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    if-nez v0, :cond_32

    .line 93
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    .end local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;I)V

    .line 94
    .restart local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onTouch(): mapping pointer id "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " to new finger instance "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :cond_32
    return-object v0
.end method

.method onMove(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 162
    .local v5, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "pointerIndex":I
    :goto_5
    if-ge v6, v5, :cond_15

    .line 163
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->getFinger(I)Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    move-result-object v9

    .line 164
    invoke-virtual {v9, p1}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->updateVelocityTracker(Landroid/view/MotionEvent;)V

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 168
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 169
    .local v2, "historySize":I
    const/4 v3, 0x0

    .local v3, "idxHistory":I
    :goto_1a
    if-ge v3, v2, :cond_3f

    .line 170
    const/4 v4, 0x0

    .local v4, "idxPointer":I
    :goto_1d
    if-ge v4, v5, :cond_3c

    .line 171
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->getFinger(I)Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    move-result-object v0

    .line 172
    .local v0, "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v7

    .line 173
    .local v7, "xPos":F
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v8

    .line 174
    .local v8, "yPos":F
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->mapper:Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;

    invoke-interface {v9, v7, v8}, Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;->map(FF)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    .line 175
    .local v1, "fingerable":Lcom/nuance/swype/input/emoji/finger/Fingerable;
    const/4 v9, 0x1

    invoke-virtual {v0, v1, v7, v8, v9}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 169
    .end local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    .end local v1    # "fingerable":Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .end local v7    # "xPos":F
    .end local v8    # "yPos":F
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 181
    .end local v4    # "idxPointer":I
    :cond_3f
    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_5f

    .line 182
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->getFinger(I)Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;

    move-result-object v0

    .line 183
    .restart local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 184
    .restart local v7    # "xPos":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 185
    .restart local v8    # "yPos":F
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->mapper:Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;

    invoke-interface {v9, v7, v8}, Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;->map(FF)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    .line 186
    .restart local v1    # "fingerable":Lcom/nuance/swype/input/emoji/finger/Fingerable;
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v7, v8, v9}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 188
    .end local v0    # "finger":Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
    .end local v1    # "fingerable":Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .end local v7    # "xPos":F
    .end local v8    # "yPos":F
    :cond_5f
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 127
    and-int/lit16 v0, v3, 0xff

    .line 130
    .local v0, "action":I
    packed-switch v0, :pswitch_data_38

    .line 149
    :pswitch_a
    sget-object v3, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "onTouch(): ignoring action: "

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 153
    :cond_1e
    :goto_1e
    return v7

    .line 134
    :pswitch_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, v3, v0, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->notifyFingerOnTouch(IILandroid/view/MotionEvent;)V

    goto :goto_1e

    .line 138
    :pswitch_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 139
    .local v1, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "pointerIndex":I
    :goto_2c
    if-ge v2, v1, :cond_1e

    .line 140
    invoke-direct {p0, v2, v0, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->notifyFingerOnTouch(IILandroid/view/MotionEvent;)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 146
    .end local v1    # "pointerCount":I
    .end local v2    # "pointerIndex":I
    :pswitch_34
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_1e

    .line 130
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_34
        :pswitch_27
        :pswitch_a
        :pswitch_1f
    .end packed-switch
.end method
