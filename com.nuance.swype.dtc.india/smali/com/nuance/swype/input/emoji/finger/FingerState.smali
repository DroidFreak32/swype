.class public Lcom/nuance/swype/input/emoji/finger/FingerState;
.super Ljava/lang/Object;
.source "FingerState.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/FingerInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/finger/FingerState$Params;,
        Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;,
        Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;,
        Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;,
        Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;,
        Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    }
.end annotation


# static fields
.field private static final ENABLE_LOG:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static nf:Ljava/text/NumberFormat;


# instance fields
.field private currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

.field private doublePressPendingState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private doublePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

.field private idleState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private isCaptured:Z

.field private listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

.field private longHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private final params:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

.field private pointerId:I

.field private shortHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private singlePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private timer:Lcom/nuance/swype/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/util/Callback",
            "<+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private unpressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private xDown:F

.field private xPos:F

.field private xVel:F

.field private yDown:F

.field private yPos:F

.field private yVel:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18
    const-string/jumbo v0, "FingerState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerState;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 146
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 148
    sput-object v0, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 149
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 150
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerStateListener;ILcom/nuance/swype/input/emoji/finger/FingerState$Params;)V
    .locals 4
    .param p1, "listener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .param p2, "pointerId"    # I
    .param p3, "params"    # Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    .prologue
    const/4 v1, 0x0

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$1;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/util/Callback;->create$afe0100(Ljava/lang/Runnable;J)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->timer:Lcom/nuance/swype/util/Callback;

    .line 285
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$2;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->idleState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 360
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->idleState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 512
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$SinglePressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->singlePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 545
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->unpressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 552
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$3;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->shortHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 597
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$4;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->longHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 624
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$5;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->doublePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 650
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$6;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->doublePressPendingState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 723
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->params:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    .line 724
    iput p2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->pointerId:I

    .line 725
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->setListener(Lcom/nuance/swype/input/emoji/finger/FingerStateListener;)V

    .line 726
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/emoji/finger/FingerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xPos:F

    return v0
.end method

.method static synthetic access$1002(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xPos:F

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/emoji/finger/FingerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yPos:F

    return v0
.end method

.method static synthetic access$1102(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yPos:F

    return p1
.end method

.method static synthetic access$1202(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xVel:F

    return p1
.end method

.method static synthetic access$1302(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yVel:F

    return p1
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->singlePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/emoji/finger/FingerState;FFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->updateMovementData(FFZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/emoji/finger/FingerState;Landroid/view/MotionEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->updateMovementData(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->params:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->idleState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->doublePressPendingState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->shortHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->longHoldState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->doublePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->unpressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->timer:Lcom/nuance/swype/util/Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/emoji/finger/FingerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->isCaptured:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/input/emoji/finger/FingerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->isCaptured:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/emoji/finger/FingerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xDown:F

    return v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xDown:F

    return p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/emoji/finger/FingerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 16
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yDown:F

    return v0
.end method

.method static synthetic access$902(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yDown:F

    return p1
.end method

.method private discardVelocityTracker()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    .line 745
    :cond_0
    return-void
.end method

.method protected static getName(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 729
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "[*]"

    goto :goto_0
.end method

.method private updateMovementData(FFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isHistorical"    # Z

    .prologue
    .line 163
    iput p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xPos:F

    .line 164
    iput p2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yPos:F

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->pointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xVel:F

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->pointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yVel:F

    .line 172
    :cond_0
    return-void
.end method

.method private updateMovementData(Landroid/view/MotionEvent;Z)V
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isHistorical"    # Z

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    shr-int/lit8 v0, v1, 0x8

    .line 175
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->updateMovementData(FFZ)V

    .line 176
    return-void
.end method

.method private updateVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->params:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    iget-boolean v0, v0, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->isTrackVelocityEnabled:Z

    if-nez v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 752
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public capture()V
    .locals 1

    .prologue
    .line 768
    const-string/jumbo v0, "capture()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->dlog(Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onCapture()V

    .line 770
    return-void
.end method

.method protected changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 3
    .param p1, "next"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeState():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getName(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getName(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->dlog(Ljava/lang/Object;)V

    .line 812
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onExit(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 816
    .local v0, "old":Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .line 817
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    if-eqz v1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 820
    :cond_1
    return-void
.end method

.method protected dlog(Ljava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 808
    return-void
.end method

.method public getDesc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ps: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getPointerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownObject()Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;

    return-object v0
.end method

.method public getDownX()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xDown:F

    return v0
.end method

.method public getDownY()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yDown:F

    return v0
.end method

.method public getMoveDesc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getPosX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getPosY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; xv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    .line 156
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getVelX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; yv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerState;->nf:Ljava/text/NumberFormat;

    .line 158
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->getVelY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetX()F
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xPos:F

    iget v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xDown:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getOffsetY()F
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yPos:F

    iget v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yDown:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->pointerId:I

    return v0
.end method

.method public getPosX()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xPos:F

    return v0
.end method

.method public getPosY()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yPos:F

    return v0
.end method

.method public getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    move-result-object v0

    return-object v0
.end method

.method public getVelX()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->xVel:F

    return v0
.end method

.method public getVelY()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->yVel:F

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCaptured()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->isCaptured:Z

    return v0
.end method

.method public isDoublePressPending()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->isDoublePressPending()Z

    move-result v0

    return v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->isDown()Z

    move-result v0

    return v0
.end method

.method public onPointerCancel()V
    .locals 1

    .prologue
    .line 788
    const-string/jumbo v0, "onPointerCancel()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->dlog(Ljava/lang/Object;)V

    .line 789
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onCancel()V

    .line 790
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->discardVelocityTracker()V

    .line 791
    return-void
.end method

.method public onPointerDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 758
    const-string/jumbo v0, "onPointerDown()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->dlog(Ljava/lang/Object;)V

    .line 759
    if-nez p1, :cond_0

    .line 760
    const-string/jumbo v0, "onDown(): no item associated with down event"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->dlog(Ljava/lang/Object;)V

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->discardVelocityTracker()V

    .line 763
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->updateVelocityTracker(Landroid/view/MotionEvent;)V

    .line 764
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V

    .line 765
    return-void
.end method

.method public onPointerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "isHistorical"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V

    .line 785
    return-void
.end method

.method public onPointerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 794
    const-string/jumbo v0, "onPointerRelease()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->dlog(Ljava/lang/Object;)V

    .line 795
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->updateVelocityTracker(Landroid/view/MotionEvent;)V

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V

    .line 797
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->discardVelocityTracker()V

    .line 798
    return-void
.end method

.method protected onTimeout()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->state:Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->onTimeout()V

    .line 824
    return-void
.end method

.method public onVelocityData(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->updateVelocityTracker(Landroid/view/MotionEvent;)V

    .line 777
    return-void
.end method

.method public final setListener(Lcom/nuance/swype/input/emoji/finger/FingerStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    .line 734
    return-void
.end method
