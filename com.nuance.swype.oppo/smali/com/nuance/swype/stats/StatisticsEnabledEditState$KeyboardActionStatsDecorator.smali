.class Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;
.super Ljava/lang/Object;
.source "StatisticsEnabledEditState.java"

# interfaces
.implements Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/stats/StatisticsEnabledEditState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardActionStatsDecorator"
.end annotation


# instance fields
.field private base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

.field final synthetic this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/stats/StatisticsEnabledEditState;Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    .line 25
    return-void
.end method


# virtual methods
.method public onDoublePress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onHardwareCharKey(I[I)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 100
    return-void
.end method

.method public onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 39
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_TAPPED:I

    invoke-static {v0, v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->mark(I)V

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeycodeTapped(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 69
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 30
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 35
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    .line 49
    return-void
.end method

.method public onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 2
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_SWYPED:I

    invoke-static {v0, v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->mark(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public onWrite(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onWrite(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_HANDWRITTEN:I

    invoke-static {v0, v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->mark(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeDown()V

    .line 61
    return-void
.end method

.method public swipeLeft()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeLeft()V

    .line 53
    return-void
.end method

.method public swipeRight()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeRight()V

    .line 57
    return-void
.end method

.method public swipeUp()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeUp()V

    .line 65
    return-void
.end method
