.class public Lcom/nuance/swype/input/RecaptureHandler;
.super Ljava/lang/Object;
.source "RecaptureHandler.java"

# interfaces
.implements Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    }
.end annotation


# static fields
.field private static final MAX_RECAPTURE_SIZE:I = 0x40

.field private static final MSG_CURSOR_RESTORE:I = 0x1

.field private static final MSG_RECAPTURE:I = 0x2

.field private static final PREVIOUS_CURSOR_COUNT:I = 0x3

.field private static final UNKNOWN_INDEX:I = -0x1

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

.field private final editState:Lcom/nuance/swype/input/EditState;

.field private editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

.field private final handler:Landroid/os/Handler;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private final ime:Lcom/nuance/swype/input/IME;

.field private imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private final inputView:Lcom/nuance/swype/input/InputView;

.field private final previousCursorPositions:[I

.field private recaptureDisabled:Z

.field private recaptureEnd:I

.field private recaptureNextOnUpdateSelection:Z

.field private recaptureStart:I

.field private restoreCursor:Z

.field private final selectOnDoubleTap:Z

.field private smileyDisableReacupture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private suppressNextRecaptureOnUpdateSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "RecaptureHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Z)V
    .locals 6
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "selectOnDoubleTap"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 92
    iput v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 94
    iput-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->smileyDisableReacupture:Ljava/util/List;

    .line 1031
    new-instance v5, Lcom/nuance/swype/input/RecaptureHandler$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/RecaptureHandler$1;-><init>(Lcom/nuance/swype/input/RecaptureHandler;)V

    iput-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->handlerCallback:Landroid/os/Handler$Callback;

    .line 1056
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v5}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Landroid/os/Handler;

    .line 144
    iput-object p1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 145
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    .line 146
    iput-object p2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 147
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputView;->isSupportRecapture()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v4

    :cond_0
    iput-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 148
    iput-boolean p3, p0, Lcom/nuance/swype/input/RecaptureHandler;->selectOnDoubleTap:Z

    .line 149
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    .line 150
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 152
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->smiley_contains_English_character:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 154
    .local v3, "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->smileyDisableReacupture:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "symbol":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RecaptureHandler;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/InputView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RecaptureHandler;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/RecaptureHandler;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RecaptureHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(Z)Z

    move-result v0

    return v0
.end method

.method private deleteRecapturedText(Landroid/view/inputmethod/InputConnection;)V
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 907
    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lez v1, :cond_1

    .line 909
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->selectTextToReplace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/util/InputConnectionUtils;->setSelection(Landroid/view/inputmethod/InputConnection;II)V

    .line 911
    invoke-static {p1, v3}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 912
    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-static {p1, v1, v2}, Lcom/nuance/android/compat/InputConnectionCompat;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    .line 930
    :cond_0
    :goto_0
    iput v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 931
    iput v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 932
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 934
    :cond_1
    return-void

    .line 915
    :cond_2
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p1, v1, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 916
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 917
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 920
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 923
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 927
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method private editStateRecapture(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Z)Z
    .locals 4
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .param p2, "updateSuggestions"    # Z

    .prologue
    const/4 v1, 0x1

    .line 567
    invoke-virtual {p1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 569
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->reconstruct()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "reconstructedWord":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-ltz v2, :cond_2

    .line 575
    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-virtual {p1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegion(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 578
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->deleteRecapturedText(Landroid/view/inputmethod/InputConnection;)V

    .line 579
    invoke-virtual {p1, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 581
    :cond_1
    if-eqz p2, :cond_3

    .line 582
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->recapture()V

    .line 588
    :cond_2
    if-eqz v0, :cond_4

    :goto_1
    return v1

    .line 584
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_0

    .line 588
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .locals 33
    .param p1, "isSwypeKeyPress"    # Z

    .prologue
    .line 767
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 768
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 769
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 770
    const/4 v9, 0x0

    .line 771
    .local v9, "contextWord":Ljava/lang/String;
    const/4 v5, 0x0

    .line 772
    .local v5, "contextBefore":Ljava/lang/String;
    const/16 v24, 0x0

    .line 774
    .local v24, "startOffset":I
    const/16 v22, 0x0

    .line 776
    .local v22, "shouldRecapture":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v15

    .line 778
    .local v15, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v15, :cond_e

    .line 780
    new-instance v28, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v28 .. v28}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    .line 781
    .local v11, "extractedText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v11}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v20

    .line 782
    .local v20, "selection":[I
    if-eqz v20, :cond_e

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v4

    .line 784
    .local v4, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    iget-object v0, v11, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    .line 785
    .local v25, "text":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v10

    .line 786
    .local v10, "extractedLength":I
    if-lez v10, :cond_e

    .line 787
    const/16 v28, 0x0

    aget v21, v20, v28

    .line 795
    .local v21, "selectionStart":I
    if-lez v10, :cond_0

    add-int/lit8 v28, v10, -0x1

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 796
    .local v8, "contextStart":I
    if-gez v8, :cond_1

    .line 798
    new-instance v28, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v28 .. v32}, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 899
    .end local v4    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v8    # "contextStart":I
    .end local v10    # "extractedLength":I
    .end local v11    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v20    # "selection":[I
    .end local v21    # "selectionStart":I
    .end local v25    # "text":Ljava/lang/String;
    :goto_1
    return-object v28

    .line 795
    .restart local v4    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    .restart local v10    # "extractedLength":I
    .restart local v11    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v20    # "selection":[I
    .restart local v21    # "selectionStart":I
    .restart local v25    # "text":Ljava/lang/String;
    :cond_0
    const/16 v28, 0x0

    goto :goto_0

    .line 801
    .restart local v8    # "contextStart":I
    :cond_1
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 802
    .local v3, "ch":C
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-nez v28, :cond_2

    .line 804
    :goto_2
    if-lez v8, :cond_3

    .line 805
    add-int/lit8 v28, v8, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 807
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-nez v28, :cond_3

    .line 808
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 812
    :cond_2
    const/16 v16, 0x0

    .line 813
    .local v16, "isWordFoundScanningLeft":Z
    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 815
    :goto_3
    if-lez v8, :cond_3

    .line 816
    add-int/lit8 v28, v8, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 817
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 818
    if-eqz p1, :cond_3

    if-eqz v16, :cond_5

    .line 831
    .end local v16    # "isWordFoundScanningLeft":Z
    :cond_3
    move v7, v8

    .line 832
    .local v7, "contextEnd":I
    const/4 v6, 0x0

    .line 835
    .local v6, "contextCount":I
    :goto_4
    if-ge v7, v10, :cond_6

    .line 837
    add-int/lit8 v6, v6, 0x1

    .line 838
    const/16 v28, 0x40

    move/from16 v0, v28

    if-gt v6, v0, :cond_6

    .line 839
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 842
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-nez v28, :cond_6

    .line 843
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 826
    .end local v6    # "contextCount":I
    .end local v7    # "contextEnd":I
    .restart local v16    # "isWordFoundScanningLeft":Z
    :cond_4
    const/16 v16, 0x1

    .line 815
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 847
    .end local v16    # "isWordFoundScanningLeft":Z
    .restart local v6    # "contextCount":I
    .restart local v7    # "contextEnd":I
    :cond_6
    if-eq v8, v7, :cond_e

    const/16 v28, 0x40

    move/from16 v0, v28

    if-gt v6, v0, :cond_e

    .line 849
    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v24, v0

    .line 850
    add-int v19, v8, v24

    .line 851
    .local v19, "newSelectionStart":I
    add-int v18, v7, v24

    .line 852
    .local v18, "newSelectionEnd":I
    if-eqz p1, :cond_8

    const/16 v28, 0x0

    aget v28, v20, v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v28, 0x1

    aget v28, v20, v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 853
    :cond_7
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 854
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 855
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 857
    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 858
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 862
    const/4 v12, 0x0

    .line 863
    .local v12, "foundLetter":Z
    const/4 v13, 0x0

    .line 864
    .local v13, "foundSurrogatePart":Z
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    .line 865
    .local v27, "wordLength":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move/from16 v0, v27

    if-ge v14, v0, :cond_c

    .line 866
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 867
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 868
    if-nez v12, :cond_9

    .line 869
    const/4 v12, 0x1

    .line 865
    :cond_9
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 871
    :cond_a
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v28

    if-nez v28, :cond_b

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 872
    :cond_b
    if-nez v13, :cond_9

    .line 873
    const/4 v13, 0x1

    goto :goto_6

    .line 878
    :cond_c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    if-eqz v12, :cond_f

    if-nez v13, :cond_f

    const/16 v28, 0x1

    .line 879
    :goto_7
    if-eqz v28, :cond_10

    invoke-static {v9}, Lcom/nuance/swype/util/CharacterUtilities;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    const/16 v22, 0x1

    .line 881
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldCheckSmileyWhenDeleting()Z

    move-result v28

    if-eqz v28, :cond_d

    const/16 v28, 0x0

    aget v28, v20, v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_d

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v26

    .line 883
    .local v26, "utility":Lcom/nuance/swype/util/CharacterUtilities;
    const/16 v28, 0x0

    aget v28, v20, v28

    move-object/from16 v0, v26

    iget v0, v0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11

    const/16 v28, 0x0

    aget v28, v20, v28

    move-object/from16 v0, v26

    iget v0, v0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 885
    .local v23, "start":I
    :goto_9
    const/16 v28, 0x0

    aget v28, v20, v28

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 886
    .local v17, "lastEmiley":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isSmiley(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 887
    const/16 v22, 0x0

    .line 891
    .end local v17    # "lastEmiley":Ljava/lang/String;
    .end local v23    # "start":I
    .end local v26    # "utility":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_d
    if-eqz v22, :cond_e

    .line 892
    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v28, v0

    add-int v28, v28, v8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 893
    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 899
    .end local v3    # "ch":C
    .end local v4    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v6    # "contextCount":I
    .end local v7    # "contextEnd":I
    .end local v8    # "contextStart":I
    .end local v10    # "extractedLength":I
    .end local v11    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v12    # "foundLetter":Z
    .end local v13    # "foundSurrogatePart":Z
    .end local v14    # "i":I
    .end local v18    # "newSelectionEnd":I
    .end local v19    # "newSelectionStart":I
    .end local v20    # "selection":[I
    .end local v21    # "selectionStart":I
    .end local v25    # "text":Ljava/lang/String;
    .end local v27    # "wordLength":I
    :cond_e
    new-instance v28, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-object/from16 v0, v28

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    goto/16 :goto_1

    .line 878
    .restart local v3    # "ch":C
    .restart local v4    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    .restart local v6    # "contextCount":I
    .restart local v7    # "contextEnd":I
    .restart local v8    # "contextStart":I
    .restart local v10    # "extractedLength":I
    .restart local v11    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v12    # "foundLetter":Z
    .restart local v13    # "foundSurrogatePart":Z
    .restart local v14    # "i":I
    .restart local v18    # "newSelectionEnd":I
    .restart local v19    # "newSelectionStart":I
    .restart local v20    # "selection":[I
    .restart local v21    # "selectionStart":I
    .restart local v25    # "text":Ljava/lang/String;
    .restart local v27    # "wordLength":I
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_7

    .line 879
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 883
    .restart local v26    # "utility":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_11
    const/16 v23, 0x0

    goto :goto_9
.end method

.method private isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z
    .locals 2
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 1027
    .local v0, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorWithinWord(Lcom/nuance/swype/util/CharacterUtilities;)Z

    move-result v1

    return v1
.end method

.method private isStringEndOfEmoticon(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->smileyDisableReacupture:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1017
    .local v1, "strSmiley":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    const/4 v2, 0x1

    .line 1021
    .end local v1    # "strSmiley":Ljava/lang/CharSequence;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recapture([I)Ljava/lang/String;
    .locals 6
    .param p1, "recaptureHistoryInfo"    # [I

    .prologue
    .line 674
    const/4 v1, 0x0

    .line 676
    .local v1, "recaptureContext":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    if-eqz v3, :cond_1

    .line 679
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/RecaptureHandler;->extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-result-object v0

    .line 680
    .local v0, "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    iget-boolean v3, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    if-eqz v3, :cond_1

    .line 683
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v4, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->textBefore:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 684
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 687
    iget-object v1, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    .line 688
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CI[I)Z

    move-result v3

    .line 692
    if-nez v3, :cond_0

    .line 693
    const/4 v1, 0x0

    .line 694
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 697
    :cond_0
    if-eqz v1, :cond_1

    .line 698
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v2

    .line 699
    .local v2, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    invoke-interface {v3, v1, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordRecapture(Ljava/lang/String;I)V

    .line 707
    .end local v0    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .end local v2    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :cond_1
    return-object v1
.end method

.method private reconstruct()Ljava/lang/String;
    .locals 7

    .prologue
    .line 716
    const/4 v3, 0x0

    .line 717
    .local v3, "reconstructContext":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    if-eqz v4, :cond_2

    .line 719
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/RecaptureHandler;->extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-result-object v1

    .line 720
    .local v1, "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    iget-boolean v4, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    if-eqz v4, :cond_2

    .line 722
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v5, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->textBefore:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 723
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 725
    iget-object v3, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    .line 727
    const/4 v2, 0x0

    .line 728
    .local v2, "recaptured":Z
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    instance-of v4, v4, Lcom/nuance/swype/input/AlphaInputView;

    if-eqz v4, :cond_0

    .line 730
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    check-cast v0, Lcom/nuance/swype/input/AlphaInputView;

    .line 731
    .local v0, "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->isTelexUsing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/AlphaInputView;->setReconstructWord(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->reconstructWord()V

    .line 735
    const/4 v2, 0x1

    .line 739
    .end local v0    # "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    :cond_0
    if-nez v2, :cond_1

    .line 741
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->reconstructWord([CI)Z

    move-result v2

    .line 745
    :cond_1
    if-nez v2, :cond_2

    .line 746
    const/4 v3, 0x0

    .line 747
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 751
    .end local v1    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .end local v2    # "recaptured":Z
    :cond_2
    return-object v3
.end method

.method private shouldDisableRecapture()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableRecapture()Z

    move-result v0

    return v0
.end method

.method private shouldRecaptureEditState(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)Z
    .locals 13
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .param p2, "keyCode"    # I

    .prologue
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 938
    iget-boolean v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->hasPendingSuggestionsUpdate()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return v8

    .line 943
    :cond_1
    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    .line 944
    .local v2, "candidatesSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v10, :cond_2

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v10, :cond_2

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v10, :cond_0

    .line 951
    :cond_2
    if-eq p2, v12, :cond_3

    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    .line 957
    :cond_3
    const/16 v10, 0x32

    invoke-virtual {p1, v10, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 960
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 964
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/RecaptureHandler;->isStringEndOfEmoticon(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 969
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 974
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 975
    .local v6, "lengthBefore":I
    if-eqz v6, :cond_0

    .line 980
    if-ne p2, v12, :cond_4

    .line 981
    if-eq v6, v9, :cond_0

    add-int/lit8 v10, v6, -0x2

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_0

    .line 989
    :cond_4
    add-int/lit8 v10, v6, -0x1

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 991
    .local v5, "lastChar":C
    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v3

    .line 993
    .local v3, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x27

    if-ne v5, v10, :cond_0

    .line 999
    :cond_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1000
    .local v7, "numChars":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_14

    .line 1001
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1002
    .local v0, "c":C
    const/16 v10, 0x20

    if-eq v0, v10, :cond_14

    .line 1003
    const/16 v10, 0x3000

    if-lt v0, v10, :cond_6

    const/16 v10, 0x3130

    if-lt v0, v10, :cond_12

    :cond_6
    const/16 v10, 0x318f

    if-le v0, v10, :cond_7

    const v10, 0x9fa5

    if-le v0, v10, :cond_12

    :cond_7
    const v10, 0xe000

    if-lt v0, v10, :cond_8

    const v10, 0xeeb1

    if-le v0, v10, :cond_12

    :cond_8
    const v10, 0xf3a0

    if-lt v0, v10, :cond_9

    const v10, 0xf7ed

    if-le v0, v10, :cond_12

    :cond_9
    const v10, 0xef50

    if-lt v0, v10, :cond_a

    const v10, 0xfe6b

    if-le v0, v10, :cond_12

    :cond_a
    const v10, 0xff01

    if-lt v0, v10, :cond_b

    const v10, 0xff5e

    if-le v0, v10, :cond_12

    :cond_b
    const/16 v10, 0x2e80

    if-lt v0, v10, :cond_c

    const/16 v10, 0x2eff

    if-le v0, v10, :cond_12

    :cond_c
    const/16 v10, 0x4e00

    if-lt v0, v10, :cond_d

    const v10, 0x9fff

    if-le v0, v10, :cond_12

    :cond_d
    const v10, 0xf900

    if-lt v0, v10, :cond_e

    const v10, 0xfaff

    if-le v0, v10, :cond_12

    :cond_e
    const v10, 0xffe0

    if-lt v0, v10, :cond_f

    const v10, 0xfe4f

    if-le v0, v10, :cond_12

    :cond_f
    const v10, 0xfe30

    if-lt v0, v10, :cond_10

    const v10, 0xffe5

    if-le v0, v10, :cond_12

    :cond_10
    const/high16 v10, 0x20000

    if-lt v0, v10, :cond_11

    const v10, 0x2a6df

    if-le v0, v10, :cond_12

    :cond_11
    const v10, 0x2f800

    if-lt v0, v10, :cond_13

    const v10, 0x2fa1f

    if-gt v0, v10, :cond_13

    :cond_12
    move v10, v9

    :goto_2
    if-nez v10, :cond_0

    .line 1000
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_13
    move v10, v8

    .line 1003
    goto :goto_2

    .end local v0    # "c":C
    :cond_14
    move v8, v9

    .line 1011
    goto/16 :goto_0
.end method

.method private wordRecapture(Z)Z
    .locals 11
    .param p1, "shouldResyncCache"    # Z

    .prologue
    const/4 v7, 0x0

    .line 598
    iget-boolean v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    if-eqz v8, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v7

    .line 602
    :cond_1
    iput-boolean v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    .line 604
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v8}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 605
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 609
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 611
    :cond_2
    sget-object v8, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v9, "cursor wordRecapture"

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 612
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 614
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 618
    const/4 v6, 0x0

    .line 621
    .local v6, "recaptured":Z
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v3

    .line 622
    .local v3, "lstCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 623
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v8}, Lcom/nuance/swype/input/EditState;->reselectToReplace()V

    .line 624
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v8, p0, v3, v7, v9}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)V

    :cond_3
    :goto_1
    move v7, v6

    .line 662
    goto :goto_0

    .line 625
    :cond_4
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->isHighlightedTextSpeechDictated()Z

    move-result v8

    if-nez v8, :cond_3

    .line 627
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 628
    .local v5, "recaptureHistoryInfo":[I
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/RecaptureHandler;->recapture([I)Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "recaptureContext":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 630
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v8}, Lcom/nuance/swype/input/EditState;->reselectToReplace()V

    .line 631
    const/4 v1, 0x0

    .line 632
    .local v1, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->getBackspaceRevertHandler()Lcom/nuance/swype/input/BackspaceRevertHandler;

    move-result-object v0

    .line 633
    .local v0, "brh":Lcom/nuance/swype/input/BackspaceRevertHandler;
    if-eqz v0, :cond_5

    .line 635
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onWordRecapture(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 637
    :cond_5
    if-nez v1, :cond_7

    .line 638
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    iget v7, v8, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->startOffset:I

    .line 639
    .local v7, "startOffset":I
    :cond_6
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    sub-int/2addr v9, v7

    iget v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    sub-int/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/nuance/swype/input/InputView;->getSmartCandidates(II)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 641
    if-nez v1, :cond_7

    .line 642
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v8, v9, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getRecaptureCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;[I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 646
    .end local v7    # "startOffset":I
    :cond_7
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-lez v8, :cond_3

    .line 647
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/InputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v9

    invoke-virtual {v8, p0, v1, v9}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 648
    const/4 v6, 0x1

    goto :goto_1

    .line 653
    .end local v0    # "brh":Lcom/nuance/swype/input/BackspaceRevertHandler;
    .end local v1    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_8
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v8}, Lcom/nuance/swype/input/IME;->isChangingOrientation()Z

    move-result v8

    if-nez v8, :cond_9

    .line 654
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 657
    :cond_9
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    goto :goto_1
.end method


# virtual methods
.method protected isExploreByTouchOn()Z
    .locals 2

    .prologue
    .line 1059
    const/4 v0, 0x0

    .line 1060
    .local v0, "exploreByTouch":Z
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v0

    .line 1063
    :cond_0
    return v0
.end method

.method public isUsingInputView(Lcom/nuance/swype/input/InputView;)Z
    .locals 1
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 495
    return-void
.end method

.method public onCharKey(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v3, 0x1

    .line 305
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 306
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 309
    .local v0, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDiacriticMark(C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureEditState(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/input/RecaptureHandler;->editStateRecapture(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Z)Z

    .line 327
    .end local v0    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_1
    :goto_0
    return-void

    .line 312
    .restart local v0    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_2
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/RecaptureHandler;->isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    iput-boolean v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    goto :goto_0

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_1

    .line 317
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputView;->onCancelNonEditStateRecaptureViaCharKey(C)V

    .line 320
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 321
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 528
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 529
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 530
    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v1

    .line 536
    .local v1, "selection":[I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    aget v3, v1, v4

    if-gt v2, v3, :cond_2

    aget v2, v1, v5

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-gt v2, v3, :cond_2

    .line 538
    iget-boolean v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->selectOnDoubleTap:Z

    if-eqz v2, :cond_0

    .line 539
    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 541
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 544
    :cond_0
    iput-boolean v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    .line 554
    .end local v1    # "selection":[I
    :cond_1
    :goto_0
    return v4

    .line 550
    .restart local v1    # "selection":[I
    :cond_2
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/RecaptureHandler;->onSingleTap(Z)Z

    goto :goto_0
.end method

.method public onKey(II)Z
    .locals 13
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 179
    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v11}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v11

    if-nez v11, :cond_0

    .line 283
    :goto_0
    return v10

    .line 183
    :cond_0
    const/4 v3, 0x0

    .line 184
    .local v3, "handled":Z
    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v11}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v5

    .line 185
    .local v5, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v5, :cond_1

    .line 186
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    move v10, v3

    .line 283
    goto :goto_0

    .line 188
    :sswitch_0
    if-gt p2, v9, :cond_4

    invoke-direct {p0, v5, p1}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureEditState(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 190
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    .line 192
    .local v2, "hadSelection":Z
    invoke-direct {p0, v5, v10}, Lcom/nuance/swype/input/RecaptureHandler;->editStateRecapture(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Z)Z

    move-result v6

    .line 195
    .local v6, "isRecaptured":Z
    if-eqz v2, :cond_3

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v11

    if-nez v11, :cond_3

    move v7, v9

    .line 196
    .local v7, "isSelectedTextAccepted":Z
    :goto_2
    if-nez v6, :cond_2

    if-eqz v7, :cond_1

    .line 198
    :cond_2
    move v3, v2

    goto :goto_1

    .end local v7    # "isSelectedTextAccepted":Z
    :cond_3
    move v7, v10

    .line 195
    goto :goto_2

    .line 200
    .end local v2    # "hadSelection":Z
    .end local v6    # "isRecaptured":Z
    :cond_4
    if-le p2, v9, :cond_5

    .line 201
    sget-object v10, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v11, "KeyboardEx.KEYCODE_DELETE...repeatedCount: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    goto :goto_1

    .line 204
    :cond_5
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/RecaptureHandler;->isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v11}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v11}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_1

    .line 207
    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    .line 209
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 210
    const/4 v3, 0x1

    goto :goto_1

    .line 214
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/RecaptureHandler;->isExploreByTouchOn()Z

    move-result v11

    if-nez v11, :cond_1

    .line 215
    invoke-virtual {v5, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    .line 218
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectionRangeInEditor()[I

    move-result-object v8

    .line 220
    .local v8, "selection":[I
    invoke-virtual {v5, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    .line 221
    if-eqz v8, :cond_8

    .line 222
    aget v11, v8, v10

    aget v12, v8, v9

    if-eq v11, v12, :cond_7

    move v4, v9

    .line 228
    .local v4, "hasSelection":Z
    :goto_3
    if-nez v4, :cond_6

    .line 229
    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v11

    .line 231
    if-nez v11, :cond_b

    .line 232
    invoke-direct {p0, v9}, Lcom/nuance/swype/input/RecaptureHandler;->extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-result-object v1

    .line 234
    .local v1, "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    iget-boolean v9, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    if-eqz v9, :cond_a

    .line 235
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 236
    const/4 v3, 0x1

    .line 253
    .end local v1    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    :cond_6
    :goto_4
    if-eqz v3, :cond_1

    .line 258
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    goto/16 :goto_1

    .end local v4    # "hasSelection":Z
    :cond_7
    move v4, v10

    .line 222
    goto :goto_3

    .line 226
    :cond_8
    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v11}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    move v4, v9

    .restart local v4    # "hasSelection":Z
    :goto_5
    goto :goto_3

    .end local v4    # "hasSelection":Z
    :cond_9
    move v4, v10

    goto :goto_5

    .line 237
    .restart local v1    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .restart local v4    # "hasSelection":Z
    :cond_a
    iget-object v9, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 240
    const/4 v3, 0x1

    goto :goto_4

    .line 243
    .end local v1    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    :cond_b
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v0

    .line 244
    .local v0, "composing":[I
    if-eqz v0, :cond_6

    .line 246
    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 247
    aget v10, v0, v10

    aget v9, v0, v9

    invoke-virtual {v5, v10, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 248
    const/4 v3, 0x1

    goto :goto_4

    .line 263
    .end local v0    # "composing":[I
    .end local v4    # "hasSelection":Z
    .end local v8    # "selection":[I
    :sswitch_2
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v9

    .line 264
    if-nez v9, :cond_c

    .line 265
    sget-object v9, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v11, "cursor GESTURE_KEYCODE_CASE_EDIT onKey"

    invoke-virtual {v9, v11}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 266
    invoke-direct {p0, v10}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(Z)Z

    .line 267
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 268
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9, p0}, Lcom/nuance/swype/input/InputView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 270
    :cond_c
    const/4 v3, 0x1

    .line 271
    goto/16 :goto_1

    .line 275
    :sswitch_3
    iget-object v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v11}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v11

    sget-object v12, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v11, v12, :cond_1

    .line 276
    new-instance v11, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v11}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v5, v11, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    .line 277
    invoke-static {v11}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v8

    .line 278
    .restart local v8    # "selection":[I
    if-eqz v8, :cond_1

    .line 279
    aget v10, v8, v10

    iget v11, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-ne v10, v11, :cond_1

    aget v9, v8, v9

    iget v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ne v9, v10, :cond_1

    .line 280
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_1

    .line 186
    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_2
        0x8 -> :sswitch_0
        0xfe4 -> :sswitch_3
        0x192d -> :sswitch_3
        0xaa37 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(II)V
    .locals 3
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 298
    if-le p2, v2, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 299
    sget-object v0, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cursor onRelease"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 300
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(Z)Z

    .line 302
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 11
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "absorbSelection":Z
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_0

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_4

    .line 344
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 345
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    if-eqz v7, :cond_3

    .line 347
    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    .line 348
    if-eqz v4, :cond_3

    .line 350
    new-instance v7, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v7}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v4, v7, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 351
    .local v2, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v6

    .line 352
    .local v6, "selection":[I
    if-eqz v6, :cond_3

    aget v7, v6, v9

    iget v8, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-ne v7, v8, :cond_3

    aget v7, v6, v10

    iget v8, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ne v7, v8, :cond_3

    .line 357
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x3

    if-ge v3, v7, :cond_3

    .line 358
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    aget v1, v7, v3

    .line 359
    .local v1, "cursorPosition":I
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-le v1, v7, :cond_1

    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-gt v7, v1, :cond_5

    .line 363
    :cond_1
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-le v1, v7, :cond_2

    .line 364
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    iget v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    sub-int v5, v7, v8

    .line 365
    .local v5, "oldLength":I
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 369
    .end local v5    # "oldLength":I
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 377
    .end local v1    # "cursorPosition":I
    .end local v2    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "i":I
    .end local v6    # "selection":[I
    :cond_3
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    iget-object v7, v7, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->noReplacingReselectedWordWhenMatching()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    iget-object v7, v7, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 381
    const/4 v0, 0x1

    .line 382
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 383
    if-eqz v4, :cond_4

    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ltz v7, :cond_4

    .line 384
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    iget v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 390
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    :goto_1
    return v0

    .line 357
    .restart local v1    # "cursorPosition":I
    .restart local v2    # "eText":Landroid/view/inputmethod/ExtractedText;
    .restart local v3    # "i":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "selection":[I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "cursorPosition":I
    .end local v2    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "i":I
    .end local v6    # "selection":[I
    :cond_6
    if-eqz v4, :cond_4

    .line 387
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/RecaptureHandler;->deleteRecapturedText(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1
.end method

.method public onSingleTap(Z)Z
    .locals 6
    .param p1, "shouldResyncCache"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 498
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechDictationInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 503
    .local v2, "speechDictationInProgress":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v1, v3

    .line 507
    .local v1, "isCurrentLanguageCJ":Z
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    move v0, v3

    .line 511
    .local v0, "hasActiveAlphaWord":Z
    :goto_2
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->tracedGesture()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    move v4, v3

    .line 523
    :goto_3
    return v4

    .end local v0    # "hasActiveAlphaWord":Z
    .end local v1    # "isCurrentLanguageCJ":Z
    .end local v2    # "speechDictationInProgress":Z
    :cond_3
    move v2, v4

    .line 498
    goto :goto_0

    .restart local v2    # "speechDictationInProgress":Z
    :cond_4
    move v1, v4

    .line 503
    goto :goto_1

    .restart local v1    # "isCurrentLanguageCJ":Z
    :cond_5
    move v0, v4

    .line 507
    goto :goto_2

    .line 518
    .restart local v0    # "hasActiveAlphaWord":Z
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    :goto_4
    iput-boolean v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 519
    sget-object v3, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "cursor onSingleTap"

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(Z)Z

    goto :goto_3

    :cond_8
    move v3, v4

    .line 518
    goto :goto_4
.end method

.method public onStartInputView()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 164
    iget-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 168
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    .line 336
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 9
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 415
    if-ne p3, p4, :cond_1

    .line 416
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 417
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    aput v7, v6, v1

    .line 416
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    const/4 v7, 0x0

    aput p3, v6, v7

    .line 426
    .end local v1    # "i":I
    :cond_1
    if-eq p1, p3, :cond_2

    if-eq p2, p4, :cond_2

    if-ne p3, p4, :cond_2

    if-eq p5, p6, :cond_3

    :cond_2
    if-ne p3, p4, :cond_d

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ne p3, v6, :cond_d

    if-eq p1, p2, :cond_d

    :cond_3
    const/4 v0, 0x1

    .line 432
    .local v0, "cursorValid":Z
    :goto_1
    if-ne p3, p4, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ne p3, v6, :cond_4

    if-eq p1, p2, :cond_4

    .line 433
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 436
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v2

    .line 439
    .local v2, "newRecapture":Z
    iget v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    iget v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    iget v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-lt p3, v6, :cond_5

    iget v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lt v6, p4, :cond_5

    iget-boolean v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    if-eqz v6, :cond_e

    :cond_5
    const/4 v3, 0x1

    .line 446
    .local v3, "refreshRecapture":Z
    :goto_2
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechDictationInProgress()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v5, 0x1

    .line 454
    .local v5, "speechDictationInProgress":Z
    :goto_3
    const/4 v4, 0x1

    .line 455
    .local v4, "shouldClearAndRecapture":Z
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isTelexUsing()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isNationalUsing()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 456
    const/4 v4, 0x0

    .line 460
    :cond_7
    if-ne p3, p4, :cond_8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ne p3, v6, :cond_8

    if-eq p1, p2, :cond_8

    .line 461
    if-eqz v4, :cond_8

    .line 462
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 466
    :cond_8
    iget-boolean v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->hasPendingSuggestionsUpdate()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->isHandlingTrace()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->tracedGesture()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/InputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v6

    if-nez v6, :cond_a

    if-nez v5, :cond_a

    if-nez v4, :cond_10

    :cond_a
    const/4 v6, 0x1

    .line 475
    :goto_4
    if-nez v6, :cond_c

    if-eqz v0, :cond_c

    if-nez v3, :cond_b

    if-nez v2, :cond_b

    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/InputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 478
    :cond_b
    sget-object v6, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v7, "onUpdateSelection(): wordRecapture"

    invoke-virtual {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 479
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(Z)Z

    .line 482
    :cond_c
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    .line 483
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    .line 484
    return-void

    .line 426
    .end local v0    # "cursorValid":Z
    .end local v2    # "newRecapture":Z
    .end local v3    # "refreshRecapture":Z
    .end local v4    # "shouldClearAndRecapture":Z
    .end local v5    # "speechDictationInProgress":Z
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 439
    .restart local v0    # "cursorValid":Z
    .restart local v2    # "newRecapture":Z
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 446
    .restart local v3    # "refreshRecapture":Z
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 466
    .restart local v4    # "shouldClearAndRecapture":Z
    .restart local v5    # "speechDictationInProgress":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_4
.end method
