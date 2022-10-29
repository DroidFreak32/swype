.class Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
.super Ljava/lang/Object;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/TimerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyTimerMessageParam"
.end annotation


# instance fields
.field keyIndex:I

.field keyType:Lcom/nuance/input/swypecorelib/KeyType;

.field pointerId:I

.field repeatKeyRate:Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;


# direct methods
.method private constructor <init>(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)V
    .registers 5
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatKeyRate"    # Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->pointerId:I

    .line 134
    iput p2, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyIndex:I

    .line 135
    iput-object p3, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    .line 136
    iput-object p4, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->repeatKeyRate:Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;Lcom/nuance/swype/input/keyboard/TimerHandler$1;)V
    .registers 6
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "x3"    # Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;
    .param p5, "x4"    # Lcom/nuance/swype/input/keyboard/TimerHandler$1;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;-><init>(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)V

    return-void
.end method
