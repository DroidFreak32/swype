.class public final Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;
.super Ljava/lang/Object;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/TimerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepeatKeyRate"
.end annotation


# instance fields
.field repeatChangeRate:I

.field repeatCount:I

.field final repeatPressTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatCount:I

    .line 147
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatPressTimeout:I

    .line 149
    iget v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatPressTimeout:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x12c

    iput v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatChangeRate:I

    .line 150
    return-void
.end method


# virtual methods
.method public final getRepeatCount()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatCount:I

    return v0
.end method

.method public final getRepeatDelay()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatChangeRate:I

    return v0
.end method

.method public final updateRepeatCount()V
    .registers 5

    .prologue
    .line 153
    iget v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatCount:I

    .line 154
    iget v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatChangeRate:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_18

    .line 155
    iget v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatChangeRate:I

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;->repeatChangeRate:I

    .line 157
    :cond_18
    return-void
.end method
