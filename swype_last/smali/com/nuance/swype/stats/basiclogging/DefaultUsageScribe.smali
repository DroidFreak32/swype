.class public Lcom/nuance/swype/stats/basiclogging/DefaultUsageScribe;
.super Lcom/nuance/swype/stats/AbstractScribe;
.source "DefaultUsageScribe.java"

# interfaces
.implements Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;-><init>()V

    .line 24
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/DefaultUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "Starting Default Usage Scribe"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/AbstractScribe;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/DefaultUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "Starting Default Usage Scribe"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public filterInputBuffer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "spelling"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public recordAlternativeText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public recordAppInstallRemove(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "Event"    # Ljava/lang/String;

    .prologue
    .line 136
    return-void
.end method

.method public recordCommittedSentence(Ljava/lang/String;)V
    .registers 2
    .param p1, "sentence"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method public recordCompletedText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method public recordDeletedWord(Ljava/lang/String;)V
    .registers 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public recordGestureType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public recordInitialLocaleSetting(Ljava/lang/String;)V
    .registers 2
    .param p1, "localeSetting"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public recordInlineText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 3
    .param p1, "from"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "to"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 79
    return-void
.end method

.method public recordKeyboardPageXML(Ljava/lang/String;)V
    .registers 2
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public recordKeycodeLongpress(I)V
    .registers 2
    .param p1, "keycode"    # I

    .prologue
    .line 46
    return-void
.end method

.method public recordKeycodeTapped(I)V
    .registers 2
    .param p1, "keycode"    # I

    .prologue
    .line 34
    return-void
.end method

.method public recordRecapture(Ljava/lang/String;I)V
    .registers 3
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 54
    return-void
.end method

.method public recordSelectedWord(Ljava/lang/String;)V
    .registers 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method

.method public recordSelectionListContext(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/String;)V
    .registers 3
    .param p1, "candate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "contextBuffer"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public recordSelectionListOptionString(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "selection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public recordSelectionListOptions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 58
    return-void
.end method

.method public recordSetContext(Ljava/lang/String;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public recordShiftMargin(I)V
    .registers 2
    .param p1, "margin"    # I

    .prologue
    .line 91
    return-void
.end method

.method public recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 2
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 70
    return-void
.end method

.method public recordTextBuffer(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public recordTracePath(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "tracePath":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "eventTime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public recordWordWCLDataPoint(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method
