.class Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;
.super Ljava/lang/Object;
.source "KeyboardTouchEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchGesture"
.end annotation


# instance fields
.field private gestureDirection:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;->FLIP_NONE:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->gestureDirection:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->startPoint(FF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->currentPoint(FF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;

    .prologue
    .line 751
    iget v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->x1:F

    return v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;

    .prologue
    .line 751
    iget v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->x2:F

    return v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;

    .prologue
    .line 751
    iget v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->y1:F

    return v0
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;

    .prologue
    .line 751
    iget v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->y2:F

    return v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->gestureDirection:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;
    .param p1, "x1"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->gestureDirection:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$GestureDirection;

    return-object p1
.end method

.method private currentPoint(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 764
    iput p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->x2:F

    .line 765
    iput p2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->y2:F

    .line 766
    return-void
.end method

.method private startPoint(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 759
    iput p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->x1:F

    .line 760
    iput p2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchGesture;->y1:F

    .line 761
    return-void
.end method
