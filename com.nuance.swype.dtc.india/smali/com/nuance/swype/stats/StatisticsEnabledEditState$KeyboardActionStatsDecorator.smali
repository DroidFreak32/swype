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
    accessFlags = 0x2
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
    .line 96
    return-void
.end method

.method public onHardwareCharKey(I[I)V
    .locals 0
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 102
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

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->mark(I)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$200(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$200(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeycodeTapped(I)V

    .line 47
    :cond_1
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onMultitapTimeout()V

    .line 71
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
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    .line 51
    return-void
.end method

.method public onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 2
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_SWYPED:I

    invoke-static {v0, v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->mark(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isStreaming"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    .line 107
    invoke-static {}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string/jumbo v2, "onUpdateSpeechText"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 109
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    sget v2, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_SPOKEN:I

    invoke-static {v1, v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I

    .line 110
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$200(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    .line 114
    .local v0, "wordCount":I
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->mark(II)V

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    if-eqz p3, :cond_2

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$200(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordCommittedSentence(Ljava/lang/String;)V

    .line 125
    .end local v0    # "wordCount":I
    :cond_2
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
    .line 85
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onWrite(Ljava/util/List;)V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    sget v1, Lcom/nuance/swypeconnect/ac/ACReportingService;->INPUT_TYPE_HANDWRITTEN:I

    invoke-static {v0, v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$002(Lcom/nuance/swype/stats/StatisticsEnabledEditState;I)I

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v0}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$100(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->this$0:Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-static {v1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->access$000(Lcom/nuance/swype/stats/StatisticsEnabledEditState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->mark(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public swipeDown()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeDown()V

    .line 63
    return-void
.end method

.method public swipeLeft()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeLeft()V

    .line 55
    return-void
.end method

.method public swipeRight()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeRight()V

    .line 59
    return-void
.end method

.method public swipeUp()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$KeyboardActionStatsDecorator;->base:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->swipeUp()V

    .line 67
    return-void
.end method
