.class public Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;
.super Lcom/nuance/swype/stats/AbstractScribe;
.source "BasicUsageScribe.java"

# interfaces
.implements Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nuance/swype/stats/AbstractScribe;-><init>()V

    .line 23
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "Starting Basic Usage Scribe"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/AbstractScribe;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "Starting Basic Usage Scribe"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public filterInputBuffer(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "spelling"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordActiveWord"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public recordAlternativeText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordAlternativeText"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public recordAppInstallRemove(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "Event"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordAppInstallRemove appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public recordCommittedSentence(Ljava/lang/String;)V
    .registers 5
    .param p1, "sentence"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordCommittedSentence sentence="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public recordCompletedText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordCompletedText text="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public recordDeletedWord(Ljava/lang/String;)V
    .registers 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordDeletedWord word="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public recordGestureType(Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordGestureType type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public recordInitialLocaleSetting(Ljava/lang/String;)V
    .registers 5
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordInitialLocaleSetting locale settings:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public recordInlineText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordInlineText"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 5
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 84
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordKeyboardLayerChange mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 6
    .param p1, "from"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "to"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 89
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordKeyboardLayerChange mode from="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public recordKeyboardPageXML(Ljava/lang/String;)V
    .registers 5
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordKeyboardPageXML xml="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public recordKeycodeLongpress(I)V
    .registers 5
    .param p1, "keycode"    # I

    .prologue
    .line 44
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordKeycodeLongpress keycode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public recordKeycodeTapped(I)V
    .registers 5
    .param p1, "keycode"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordKeycodeTapped keycode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public recordRecapture(Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 52
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordRecapture context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public recordSearchBuffer(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordSearchBuffer search="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public recordSelectedWord(Ljava/lang/String;)V
    .registers 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordSelectedWord word="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public recordSelectionListContext(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/String;)V
    .registers 5
    .param p1, "candate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "contextBuffer"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordSelectionListContext"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public recordSelectionListOptionString(Ljava/util/List;)V
    .registers 4
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
    .line 68
    .local p1, "selection":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordSelectionListOptionString"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public recordSelectionListOptions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 64
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordSelectionListOptions"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public recordSetContext(Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordSetContext context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public recordShiftMargin(I)V
    .registers 5
    .param p1, "margin"    # I

    .prologue
    .line 101
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordShiftMargin margin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 4
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 76
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordShiftState"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public recordTextBuffer(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordTextBuffer text="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public recordTotalSwypeDistance(Ljava/lang/String;)V
    .registers 5
    .param p1, "distance"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordTotalSwypeDistance distance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public recordTracePath(Ljava/util/List;Ljava/util/List;)V
    .registers 5
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
    .line 36
    .local p1, "tracePath":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "eventTime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "recordTracePath"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public recordUdbAdd(Ljava/lang/String;)V
    .registers 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordUdbAdd word="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public recordUdbDelete(Ljava/lang/String;)V
    .registers 5
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordUdbDelete word="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recordUsedTimeSelectionListDisplay name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public recordWordWCLDataPoint(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lcom/nuance/swype/stats/basiclogging/BasicUsageScribe;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v0, p1}, Lcom/nuance/swype/util/LogManager$Log;->v(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
