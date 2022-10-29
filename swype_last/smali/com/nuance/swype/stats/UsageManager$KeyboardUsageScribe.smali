.class public interface abstract Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
.super Ljava/lang/Object;
.source "UsageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/stats/UsageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyboardUsageScribe"
.end annotation


# virtual methods
.method public abstract filterInputBuffer(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract recordActiveWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordAlternativeText(Ljava/lang/String;)V
.end method

.method public abstract recordAppInstallRemove(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordCommittedSentence(Ljava/lang/String;)V
.end method

.method public abstract recordCompletedText(Ljava/lang/String;)V
.end method

.method public abstract recordDeletedWord(Ljava/lang/String;)V
.end method

.method public abstract recordGestureType(Ljava/lang/String;)V
.end method

.method public abstract recordInitialLocaleSetting(Ljava/lang/String;)V
.end method

.method public abstract recordInlineText(Ljava/lang/String;)V
.end method

.method public abstract recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
.end method

.method public abstract recordKeyboardPageXML(Ljava/lang/String;)V
.end method

.method public abstract recordKeycodeLongpress(I)V
.end method

.method public abstract recordKeycodeTapped(I)V
.end method

.method public abstract recordRecapture(Ljava/lang/String;I)V
.end method

.method public abstract recordSelectedWord(Ljava/lang/String;)V
.end method

.method public abstract recordSelectionListContext(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/String;)V
.end method

.method public abstract recordSelectionListOptionString(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recordSelectionListOptions(Lcom/nuance/input/swypecorelib/Candidates;)V
.end method

.method public abstract recordSetContext(Ljava/lang/String;)V
.end method

.method public abstract recordShiftMargin(I)V
.end method

.method public abstract recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
.end method

.method public abstract recordTextBuffer(Ljava/lang/String;)V
.end method

.method public abstract recordTracePath(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract recordUsedTimeSelectionListDisplay(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordWordWCLDataPoint(Ljava/lang/String;)V
.end method
