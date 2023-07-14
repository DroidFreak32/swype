.class public Lcom/nuance/swype/input/RecaptureHandler;
.super Ljava/lang/Object;
.source "RecaptureHandler.java"

# interfaces
.implements Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;,
        Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    }
.end annotation


# static fields
.field private static final MAX_RECAPTURE_SIZE:I = 0x40

.field private static final MSG_CURSOR_RESTORE:I = 0x1

.field private static final MSG_RECAPTURE:I = 0x2

.field private static final PREVIOUS_CURSOR_COUNT:I = 0x3

.field private static final RECAPTURE_DELAY:I = 0x64

.field private static final UNKNOWN_INDEX:I = -0x1

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

.field private final editState:Lcom/nuance/swype/input/EditState;

.field private editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

.field private handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

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

.field private undoLastAccept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "RecaptureHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Z)V
    .locals 5
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "selectOnDoubleTap"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 102
    iput v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 104
    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->smileyDisableReacupture:Ljava/util/List;

    .line 169
    iput-object p1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 170
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    .line 171
    iput-object p2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 172
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputView;->isSupportRecapture()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 173
    iput-boolean p3, p0, Lcom/nuance/swype/input/RecaptureHandler;->selectOnDoubleTap:Z

    .line 174
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    .line 175
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 176
    new-instance v1, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;-><init>(Lcom/nuance/swype/input/RecaptureHandler;)V

    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    .line 177
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$array;->smiley_contains_English_character:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 178
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 179
    .local v0, "symbol":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->smileyDisableReacupture:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "symbol":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RecaptureHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/InputView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RecaptureHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/RecaptureHandler;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/RecaptureHandler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(ZZ)Z

    move-result v0

    return v0
.end method

.method private deleteRecapturedText(Landroid/view/inputmethod/InputConnection;)V
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 1048
    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lez v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->selectTextToReplace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1051
    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/util/InputConnectionUtils;->setSelection(Landroid/view/inputmethod/InputConnection;II)V

    .line 1052
    invoke-static {p1, v3}, Lcom/nuance/android/compat/InputConnectionCompat;->getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1053
    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-static {p1, v1, v2}, Lcom/nuance/android/compat/InputConnectionCompat;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    .line 1071
    :cond_0
    :goto_0
    iput v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 1072
    iput v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 1073
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 1075
    :cond_1
    return-void

    .line 1056
    :cond_2
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p1, v1, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 1057
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 1058
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1061
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1064
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

    .line 1068
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method private editStateRecapture(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Z)Z
    .locals 5
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .param p2, "checkHistory"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/RecaptureHandler;->reconstruct(Z)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v0

    .line 661
    .local v0, "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    sget-object v3, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-ltz v3, :cond_1

    .line 662
    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-virtual {p1, v3, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegion(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 665
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->deleteRecapturedText(Landroid/view/inputmethod/InputConnection;)V

    .line 666
    iget-object v3, v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWord:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 669
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v3, v4, v2}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    .line 670
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->recapture()V

    .line 673
    :cond_1
    sget-object v3, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v0, v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .locals 33
    .param p1, "isSwypeKeyPress"    # Z

    .prologue
    .line 908
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 909
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 910
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 911
    const/4 v9, 0x0

    .line 912
    .local v9, "contextWord":Ljava/lang/String;
    const/4 v5, 0x0

    .line 913
    .local v5, "contextBefore":Ljava/lang/String;
    const/16 v24, 0x0

    .line 915
    .local v24, "startOffset":I
    const/16 v22, 0x0

    .line 917
    .local v22, "shouldRecapture":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v15

    .line 919
    .local v15, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v15, :cond_e

    .line 921
    new-instance v28, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v28 .. v28}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    .line 922
    .local v11, "extractedText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v11}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v20

    .line 923
    .local v20, "selection":[I
    if-eqz v20, :cond_e

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v4

    .line 925
    .local v4, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    iget-object v0, v11, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    .line 926
    .local v25, "text":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v10

    .line 927
    .local v10, "extractedLength":I
    if-lez v10, :cond_e

    .line 928
    const/16 v28, 0x0

    aget v21, v20, v28

    .line 936
    .local v21, "selectionStart":I
    add-int/lit8 v28, v10, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 937
    .local v8, "contextStart":I
    if-gez v8, :cond_0

    .line 939
    new-instance v28, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v28 .. v32}, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    .line 1040
    .end local v4    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v8    # "contextStart":I
    .end local v10    # "extractedLength":I
    .end local v11    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v20    # "selection":[I
    .end local v21    # "selectionStart":I
    .end local v25    # "text":Ljava/lang/String;
    :goto_0
    return-object v28

    .line 942
    .restart local v4    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    .restart local v8    # "contextStart":I
    .restart local v10    # "extractedLength":I
    .restart local v11    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v20    # "selection":[I
    .restart local v21    # "selectionStart":I
    .restart local v25    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 943
    .local v3, "ch":C
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-nez v28, :cond_1

    .line 945
    :goto_1
    if-lez v8, :cond_2

    .line 946
    add-int/lit8 v28, v8, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 948
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-nez v28, :cond_2

    .line 945
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 953
    :cond_1
    const/16 v16, 0x0

    .line 954
    .local v16, "isWordFoundScanningLeft":Z
    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 956
    :goto_2
    if-lez v8, :cond_2

    .line 957
    add-int/lit8 v28, v8, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 958
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 959
    if-eqz p1, :cond_2

    if-eqz v16, :cond_4

    .line 972
    .end local v16    # "isWordFoundScanningLeft":Z
    :cond_2
    move v7, v8

    .line 973
    .local v7, "contextEnd":I
    const/4 v6, 0x0

    .line 976
    .local v6, "contextCount":I
    :goto_3
    if-ge v7, v10, :cond_5

    .line 978
    add-int/lit8 v6, v6, 0x1

    .line 979
    const/16 v28, 0x40

    move/from16 v0, v28

    if-gt v6, v0, :cond_5

    .line 982
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 983
    invoke-virtual {v4, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v28

    if-nez v28, :cond_5

    .line 976
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 967
    .end local v6    # "contextCount":I
    .end local v7    # "contextEnd":I
    .restart local v16    # "isWordFoundScanningLeft":Z
    :cond_3
    const/16 v16, 0x1

    .line 956
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 988
    .end local v16    # "isWordFoundScanningLeft":Z
    .restart local v6    # "contextCount":I
    .restart local v7    # "contextEnd":I
    :cond_5
    if-eq v8, v7, :cond_e

    const/16 v28, 0x40

    move/from16 v0, v28

    if-gt v6, v0, :cond_e

    .line 990
    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v24, v0

    .line 991
    add-int v19, v8, v24

    .line 992
    .local v19, "newSelectionStart":I
    add-int v18, v7, v24

    .line 993
    .local v18, "newSelectionEnd":I
    if-eqz p1, :cond_7

    const/16 v28, 0x0

    aget v28, v20, v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    const/16 v28, 0x1

    aget v28, v20, v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 994
    :cond_6
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 995
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 996
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 998
    :cond_7
    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 999
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1003
    const/4 v12, 0x0

    .line 1004
    .local v12, "foundLetter":Z
    const/4 v13, 0x0

    .line 1005
    .local v13, "foundSurrogatePart":Z
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    .line 1006
    .local v27, "wordLength":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v27

    if-ge v14, v0, :cond_c

    .line 1007
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1008
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1009
    const/4 v12, 0x1

    .line 1013
    :cond_8
    :goto_5
    if-eqz v12, :cond_9

    if-nez v13, :cond_c

    .line 1006
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1010
    :cond_a
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v28

    if-nez v28, :cond_b

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1011
    :cond_b
    const/4 v13, 0x1

    goto :goto_5

    .line 1018
    :cond_c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_f

    if-eqz v12, :cond_f

    if-nez v13, :cond_f

    const/16 v28, 0x1

    .line 1019
    :goto_6
    if-eqz v28, :cond_10

    invoke-static {v9}, Lcom/nuance/swype/util/CharacterUtilities;->endsWithSurrogatePair(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    const/16 v22, 0x1

    .line 1022
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/nuance/swype/input/IMEApplication;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

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

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v26

    .line 1024
    .local v26, "utility":Lcom/nuance/swype/util/CharacterUtilities;
    const/16 v28, 0x0

    aget v28, v20, v28

    .line 1476
    move-object/from16 v0, v26

    iget v0, v0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    move/from16 v29, v0

    .line 1024
    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11

    const/16 v28, 0x0

    aget v28, v20, v28

    .line 2476
    move-object/from16 v0, v26

    iget v0, v0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    move/from16 v29, v0

    .line 1024
    sub-int v23, v28, v29

    .line 1026
    .local v23, "start":I
    :goto_8
    const/16 v28, 0x0

    aget v28, v20, v28

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1027
    .local v17, "lastEmiley":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isSmiley(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1028
    const/16 v22, 0x0

    .line 1032
    .end local v17    # "lastEmiley":Ljava/lang/String;
    .end local v23    # "start":I
    .end local v26    # "utility":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_d
    if-eqz v22, :cond_e

    .line 1033
    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v28, v0

    add-int v28, v28, v8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    .line 1034
    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    .line 1040
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

    goto/16 :goto_0

    .line 1018
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

    goto/16 :goto_6

    .line 1019
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 1024
    .restart local v26    # "utility":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_11
    const/16 v23, 0x0

    goto :goto_8
.end method

.method private isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z
    .locals 2
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 1170
    .local v0, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorWithinWord(Lcom/nuance/swype/util/CharacterUtilities;)Z

    move-result v1

    return v1
.end method

.method private isStringEndOfEmoticon(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->smileyDisableReacupture:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1160
    .local v0, "strSmiley":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1161
    const/4 v1, 0x1

    .line 1164
    .end local v0    # "strSmiley":Ljava/lang/CharSequence;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reconstruct(Z)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .locals 11
    .param p1, "checkHistory"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 838
    sget-object v2, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    .line 840
    .local v2, "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    if-eqz v8, :cond_3

    .line 842
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/RecaptureHandler;->extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-result-object v1

    .line 844
    .local v1, "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    iget-boolean v8, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    if-eqz v8, :cond_3

    .line 845
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 846
    iget-object v4, v1, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    .line 849
    .local v4, "reconstructContext":Ljava/lang/String;
    const/4 v3, 0x0

    .line 850
    .local v3, "recaptured":Z
    const/4 v0, 0x0

    .line 852
    .local v0, "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    instance-of v8, v8, Lcom/nuance/swype/input/AlphaInputView;

    if-eqz v8, :cond_1

    .line 853
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .end local v0    # "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    check-cast v0, Lcom/nuance/swype/input/AlphaInputView;

    .line 854
    .restart local v0    # "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setReconstructWord(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->isUsingVietnameseTelexInputMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 857
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->reconstructWord()V

    .line 858
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/input/swypecorelib/RecaptureInfo;->makeRecaptureInfo([C)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v2

    .line 859
    const/4 v3, 0x1

    .line 863
    :cond_0
    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setInlineWord(Ljava/lang/String;)V

    .line 867
    :cond_1
    if-nez v3, :cond_3

    .line 868
    if-eqz p1, :cond_5

    .line 870
    iget-object v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CZ)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v2

    .line 871
    sget-object v8, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v2, v8, :cond_4

    move v3, v6

    .line 882
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 883
    if-eqz v0, :cond_3

    .line 884
    invoke-virtual {v0, v10}, Lcom/nuance/swype/input/AlphaInputView;->setReconstructWord(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0, v10}, Lcom/nuance/swype/input/AlphaInputView;->setInlineWord(Ljava/lang/String;)V

    .line 892
    .end local v0    # "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    .end local v1    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .end local v3    # "recaptured":Z
    .end local v4    # "reconstructContext":Ljava/lang/String;
    :cond_3
    return-object v2

    .restart local v0    # "alphaInputView":Lcom/nuance/swype/input/AlphaInputView;
    .restart local v1    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .restart local v3    # "recaptured":Z
    .restart local v4    # "reconstructContext":Ljava/lang/String;
    :cond_4
    move v3, v7

    .line 871
    goto :goto_0

    .line 874
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 875
    .local v5, "word":[C
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->reconstructWord([C)Z

    move-result v3

    .line 876
    if-eqz v3, :cond_2

    .line 877
    invoke-static {v5}, Lcom/nuance/input/swypecorelib/RecaptureInfo;->makeRecaptureInfo([C)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v2

    goto :goto_0
.end method

.method private shouldDisableRecapture()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDisableRecapture()Z

    move-result v0

    return v0
.end method

.method private shouldRecaptureEditState(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)Z
    .locals 12
    .param p1, "ic"    # Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .param p2, "keyCode"    # I

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1079
    iget-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->hasPendingSuggestionsUpdate()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return v7

    .line 1084
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    .line 1085
    .local v2, "candidatesSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v9, :cond_2

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v9, :cond_2

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v9, :cond_2

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v9, :cond_2

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v9, :cond_0

    .line 1094
    :cond_2
    if-eq p2, v11, :cond_3

    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 1095
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 1096
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    :cond_3
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 1097
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    .line 1101
    const/16 v9, 0x32

    invoke-virtual {p1, v9, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1104
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1108
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/RecaptureHandler;->isStringEndOfEmoticon(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1113
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureHandler;->isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1118
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1119
    .local v6, "lengthBefore":I
    if-eqz v6, :cond_0

    .line 1124
    if-ne p2, v11, :cond_4

    .line 1125
    if-eq v6, v8, :cond_0

    add-int/lit8 v9, v6, -0x2

    .line 1126
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1133
    :cond_4
    add-int/lit8 v9, v6, -0x1

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1135
    .local v5, "lastChar":C
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v9}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v3

    .line 1137
    .local v3, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-static {v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1138
    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x27

    if-ne v5, v9, :cond_0

    .line 1143
    :cond_5
    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_6

    .line 1144
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1145
    .local v0, "c":C
    const/16 v9, 0x20

    if-eq v0, v9, :cond_6

    .line 1148
    invoke-static {v0}, Lcom/nuance/swype/util/CharacterUtilities;->isValidCJChar(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1143
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v0    # "c":C
    :cond_6
    move v7, v8

    .line 1154
    goto/16 :goto_0
.end method

.method private shouldRecaptureForCaseEdit()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRecaptureForCaseEdit()Z

    move-result v0

    return v0
.end method

.method private shouldRecaptureForSingleTapWhenFocusInURLField()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRecaptureForSingleTapWhenFocusInURLField()Z

    move-result v0

    return v0
.end method

.method private shouldRecaptureForSwypeKey()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRecaptureForSwypeKey()Z

    move-result v0

    return v0
.end method

.method private tryToRecaptureWord()Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .locals 7

    .prologue
    .line 798
    sget-object v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    .line 800
    .local v1, "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    if-eqz v4, :cond_1

    .line 803
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/RecaptureHandler;->extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-result-object v0

    .line 804
    .local v0, "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    iget-boolean v4, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    if-eqz v4, :cond_1

    .line 807
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    iget-object v5, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->textBefore:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setContext([C)V

    .line 811
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getUndoAcceptHandler()Lcom/nuance/swype/input/UndoAcceptHandler;

    move-result-object v4

    iget-object v5, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/UndoAcceptHandler;->undoAccept(Ljava/lang/String;)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v1

    .line 813
    sget-object v4, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-ne v1, v4, :cond_0

    .line 815
    iget-object v4, v0, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 816
    .local v3, "wordArray":[C
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->recaptureWord([CZ)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v1

    .line 819
    .end local v3    # "wordArray":[C
    :cond_0
    sget-object v4, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v1, v4, :cond_1

    .line 820
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v2

    .line 821
    .local v2, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v2, :cond_1

    .line 822
    invoke-virtual {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v4

    iget-object v5, v1, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWord:Ljava/lang/String;

    iget v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    invoke-interface {v4, v5, v6}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordRecapture(Ljava/lang/String;I)V

    .line 829
    .end local v0    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .end local v2    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    :cond_1
    return-object v1
.end method

.method private wordRecapture(ZZ)Z
    .locals 13
    .param p1, "shouldResyncCache"    # Z
    .param p2, "orientationChanged"    # Z

    .prologue
    .line 683
    iget-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    if-eqz v9, :cond_4

    .line 684
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 686
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 687
    .local v3, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 691
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 695
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 697
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v9

    if-nez v9, :cond_1

    .line 698
    const/4 v6, 0x0

    .line 788
    .end local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :goto_0
    return v6

    .line 701
    .restart local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->isChangingOrientation()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez p2, :cond_2

    .line 702
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 705
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    .line 707
    .end local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 710
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    .line 712
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 713
    .restart local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz p1, :cond_5

    if-eqz v3, :cond_5

    .line 717
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->reSyncFromEditor()V

    .line 719
    :cond_5
    sget-object v9, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "cursor wordRecapture...shouldResyncCache: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "...orientationChanged: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 722
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 724
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v9

    if-nez v9, :cond_6

    .line 725
    const/4 v6, 0x0

    goto :goto_0

    .line 728
    :cond_6
    const/4 v6, 0x0

    .line 731
    .local v6, "recaptured":Z
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getSpeechAlternateCandidates()Ljava/util/List;

    move-result-object v4

    .line 732
    .local v4, "lstCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_9

    .line 733
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v9}, Lcom/nuance/swype/input/EditState;->reselectToReplace()V

    .line 734
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    const/4 v10, 0x0

    sget-object v11, Lcom/nuance/input/swypecorelib/Candidates$Source;->SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v9, p0, v4, v10, v11}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 786
    :cond_7
    :goto_1
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->wordReCaptureComplete()V

    .line 787
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_8
    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    goto/16 :goto_0

    .line 735
    :cond_9
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->isHighlightedTextSpeechDictated()Z

    move-result v9

    if-nez v9, :cond_7

    .line 737
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->tryToRecaptureWord()Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v5

    .line 739
    .local v5, "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    sget-object v9, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v5, v9, :cond_d

    .line 741
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v9}, Lcom/nuance/swype/input/EditState;->reselectToReplace()V

    .line 743
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v9, v10, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getRecaptureCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/RecaptureInfo;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 745
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-lez v9, :cond_7

    .line 746
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "defaultWord":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "exactWord":Ljava/lang/String;
    iget-object v7, v5, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWord:Ljava/lang/String;

    .line 751
    .local v7, "recapturedWord":Ljava/lang/String;
    if-eqz v3, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 752
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    .line 753
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 754
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9, v2}, Lcom/nuance/swype/input/InputView;->setInlineWord(Ljava/lang/String;)V

    .line 755
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v3, v7, v9, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegionBeforeCursor(Ljava/lang/CharSequence;IZ)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 756
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v8

    .line 757
    .local v8, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-eqz v8, :cond_c

    .line 759
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    .line 758
    invoke-virtual {v3, v9, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 765
    .end local v8    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_a
    :goto_3
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/InputView;->setInlineWord(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 769
    :cond_b
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v10, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v10, v0}, Lcom/nuance/swype/input/InputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v10

    invoke-virtual {v9, p0, v0, v10}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 771
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 773
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 762
    .restart local v8    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_c
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_3

    .line 778
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v1    # "defaultWord":Ljava/lang/String;
    .end local v2    # "exactWord":Ljava/lang/String;
    .end local v7    # "recapturedWord":Ljava/lang/String;
    .end local v8    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_d
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->isChangingOrientation()Z

    move-result v9

    if-nez v9, :cond_e

    if-nez p2, :cond_e

    .line 779
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 782
    :cond_e
    iget-object v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    goto/16 :goto_1

    .line 787
    .end local v5    # "recaptureInfo":Lcom/nuance/input/swypecorelib/RecaptureInfo;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public clearMessages()V
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1219
    return-void
.end method

.method public hasPendingRecaptureMessage()Z
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method protected isExploreByTouchOn()Z
    .locals 2

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, "exploreByTouch":Z
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v0

    .line 1214
    :cond_0
    return v0
.end method

.method public isUsingInputView(Lcom/nuance/swype/input/InputView;)Z
    .locals 1
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 573
    return-void
.end method

.method public onCharKey(C)Z
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 380
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    if-eqz v3, :cond_2

    .line 382
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    .line 383
    .local v1, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDiacriticMark(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureEditState(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 389
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 391
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/RecaptureHandler;->editStateRecapture(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Z)Z

    .line 392
    const/4 v0, 0x1

    .line 408
    .end local v1    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_2
    :goto_0
    return v0

    .line 393
    .restart local v1    # "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    :cond_3
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/RecaptureHandler;->isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    goto :goto_0

    .line 397
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v3, v4, :cond_2

    .line 398
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputView;->onCancelNonEditStateRecaptureViaCharKey(C)V

    .line 401
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 402
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputView;->setLastInput(I)V

    .line 403
    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->core:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 404
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 608
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 609
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 610
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 611
    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v1

    .line 617
    .local v1, "selection":[I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    aget v3, v1, v4

    if-gt v2, v3, :cond_2

    aget v2, v1, v5

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-gt v2, v3, :cond_2

    .line 619
    iget-boolean v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->selectOnDoubleTap:Z

    if-eqz v2, :cond_0

    .line 620
    iget v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    iget v3, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 622
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    .line 625
    :cond_0
    iput-boolean v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    .line 635
    .end local v1    # "selection":[I
    :cond_1
    :goto_0
    return v4

    .line 631
    .restart local v1    # "selection":[I
    :cond_2
    invoke-virtual {p0, v4, v4}, Lcom/nuance/swype/input/RecaptureHandler;->onSingleTap(ZZ)Z

    goto :goto_0
.end method

.method public onKey(II)Z
    .locals 18
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->isPredictionOn()Z

    move-result v13

    if-nez v13, :cond_1

    .line 202
    const/4 v5, 0x0

    .line 362
    :cond_0
    :goto_0
    return v5

    .line 205
    :cond_1
    const/4 v5, 0x0

    .line 206
    .local v5, "handled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v13}, Lcom/nuance/swype/input/IME;->getAppSpecificInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    .line 207
    .local v7, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v7, :cond_0

    .line 208
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 329
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v13

    if-nez v13, :cond_4

    .line 330
    sget-object v13, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "cursor GESTURE_KEYCODE_CASE_EDIT onKey"

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureForCaseEdit()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 333
    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v13

    if-eqz v13, :cond_1a

    :cond_3
    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 334
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(ZZ)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v14, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/nuance/swype/input/InputView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 338
    :cond_4
    const/4 v5, 0x1

    .line 339
    goto :goto_0

    .line 210
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureForSingleTapWhenFocusInURLField()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_6
    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 211
    const/4 v13, 0x1

    move/from16 v0, p2

    if-gt v0, v13, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureEditState(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 214
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/nuance/swype/input/RecaptureHandler;->wordRecapture(ZZ)Z

    .line 215
    const/4 v8, 0x0

    .line 216
    .local v8, "isRecaptured":Z
    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v4

    .line 219
    .local v4, "hadSelection":Z
    if-eqz v4, :cond_9

    .line 220
    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->clearSelection()V

    .line 245
    :goto_3
    if-eqz v4, :cond_b

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v9, 0x1

    .line 246
    .local v9, "isSelectedTextAccepted":Z
    :goto_4
    if-nez v8, :cond_7

    if-eqz v9, :cond_0

    .line 248
    :cond_7
    move v5, v4

    goto/16 :goto_0

    .line 210
    .end local v4    # "hadSelection":Z
    .end local v8    # "isRecaptured":Z
    .end local v9    # "isSelectedTextAccepted":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    .line 228
    .restart local v4    # "hadSelection":Z
    .restart local v8    # "isRecaptured":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v13

    sget-object v14, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v13, v14, :cond_a

    const-string/jumbo v13, "com.facebook.katana"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v14}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/InputFieldInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 229
    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v13

    const/16 v14, 0xff

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 230
    .local v12, "textBeforeCursor":Ljava/lang/CharSequence;
    instance-of v13, v12, Landroid/text/Spanned;

    if-eqz v13, :cond_a

    move-object v13, v12

    .line 231
    check-cast v13, Landroid/text/Spanned;

    const/4 v14, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const-class v16, Landroid/text/style/BackgroundColorSpan;

    invoke-interface/range {v13 .. v16}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/BackgroundColorSpan;

    .line 232
    .local v11, "spans":[Landroid/text/style/BackgroundColorSpan;
    if-eqz v11, :cond_a

    array-length v13, v11

    if-lez v13, :cond_a

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v13}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v13

    const v14, -0x272016

    if-ne v13, v14, :cond_a

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    const/4 v5, 0x1

    .line 237
    goto/16 :goto_0

    .line 241
    .end local v11    # "spans":[Landroid/text/style/BackgroundColorSpan;
    .end local v12    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_a
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/nuance/swype/input/RecaptureHandler;->editStateRecapture(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;Z)Z

    move-result v8

    goto/16 :goto_3

    .line 245
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 250
    .end local v4    # "hadSelection":Z
    .end local v8    # "isRecaptured":Z
    :cond_c
    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_d

    .line 251
    sget-object v13, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "KeyboardEx.KEYCODE_DELETE...repeatedCount: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 253
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    goto/16 :goto_0

    .line 254
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nuance/swype/input/RecaptureHandler;->isCursorWithinWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 255
    invoke-virtual {v13}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 256
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v13

    const/4 v14, 0x6

    if-eq v13, v14, :cond_0

    .line 257
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 261
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 262
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->hasPendingSuggestionsUpdate()Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 263
    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->isHandlingTrace()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->tracedGesture()Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v14, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 264
    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/InputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 265
    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 266
    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechDictationInProgress()Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_f
    const/4 v13, 0x1

    .line 268
    :goto_5
    if-nez v13, :cond_10

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 272
    :cond_10
    const/4 v5, 0x1

    .line 273
    goto/16 :goto_0

    .line 266
    :cond_11
    const/4 v13, 0x0

    goto :goto_5

    .line 276
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureForSwypeKey()Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/RecaptureHandler;->isExploreByTouchOn()Z

    move-result v13

    if-nez v13, :cond_0

    .line 279
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    .line 281
    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectionRangeInEditor()[I

    move-result-object v10

    .line 282
    .local v10, "selection":[I
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setByPassCache(Z)V

    .line 283
    if-eqz v10, :cond_16

    .line 284
    const/4 v13, 0x0

    aget v13, v10, v13

    const/4 v14, 0x1

    aget v14, v10, v14

    if-eq v13, v14, :cond_15

    const/4 v6, 0x1

    .line 290
    .local v6, "hasSelection":Z
    :goto_6
    if-nez v6, :cond_14

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v13

    if-nez v13, :cond_19

    .line 293
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/input/RecaptureHandler;->extractContext(Z)Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    move-result-object v3

    .line 295
    .local v3, "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    iget-boolean v13, v3, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->shouldRecapture:Z

    if-eqz v13, :cond_18

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 314
    .end local v3    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    :cond_13
    :goto_7
    const/4 v5, 0x1

    .line 319
    :cond_14
    :goto_8
    if-eqz v5, :cond_0

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->updateShiftKeyState()V

    goto/16 :goto_0

    .line 284
    .end local v6    # "hasSelection":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_6

    .line 288
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v13}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    const/4 v6, 0x1

    .restart local v6    # "hasSelection":Z
    :goto_9
    goto :goto_6

    .end local v6    # "hasSelection":Z
    :cond_17
    const/4 v6, 0x0

    goto :goto_9

    .line 299
    .restart local v3    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    .restart local v6    # "hasSelection":Z
    :cond_18
    iget-object v13, v3, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 302
    const/4 v5, 0x1

    goto :goto_8

    .line 305
    .end local v3    # "editorContext":Lcom/nuance/swype/input/RecaptureHandler$EditorContext;
    :cond_19
    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v2

    .line 306
    .local v2, "composing":[I
    if-eqz v2, :cond_14

    .line 308
    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->finishComposingText()Z

    .line 309
    const/4 v13, 0x0

    aget v13, v2, v13

    const/4 v14, 0x1

    aget v14, v2, v14

    invoke-virtual {v7, v13, v14}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->isHandWritingInputView()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->showNextWordPrediction()V

    goto :goto_7

    .line 333
    .end local v2    # "composing":[I
    .end local v6    # "hasSelection":Z
    .end local v10    # "selection":[I
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 343
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v13}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v13, v14, :cond_0

    .line 344
    new-instance v13, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v13}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v13

    .line 345
    invoke-static {v13}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v10

    .line 346
    .restart local v10    # "selection":[I
    if-eqz v10, :cond_0

    .line 347
    const/4 v13, 0x0

    aget v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    aget v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ne v13, v14, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v14, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v13, v14}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_0
        0x8 -> :sswitch_1
        0xfe4 -> :sswitch_3
        0x192d -> :sswitch_3
        0xaa37 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public onPressMoveCandidate(FFF)V
    .locals 0
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 569
    return-void
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(II)V
    .locals 5
    .param p1, "primaryCode"    # I
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 369
    if-le p2, v2, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 370
    sget-object v0, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "cursor onRelease"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 372
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    invoke-virtual {v0, v4, v1, v1}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 11
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 422
    const/4 v0, 0x0

    .line 424
    .local v0, "absorbSelection":Z
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_0

    .line 425
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_4

    .line 426
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 427
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    if-eqz v7, :cond_3

    .line 429
    iput-boolean v9, p0, Lcom/nuance/swype/input/RecaptureHandler;->restoreCursor:Z

    .line 430
    if-eqz v4, :cond_3

    .line 432
    new-instance v7, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v7}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v4, v7, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 433
    .local v2, "eText":Landroid/view/inputmethod/ExtractedText;
    invoke-static {v2}, Lcom/nuance/swype/util/InputConnectionUtils;->getSelection(Landroid/view/inputmethod/ExtractedText;)[I

    move-result-object v6

    .line 434
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

    .line 439
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x3

    if-ge v3, v7, :cond_3

    .line 440
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    aget v1, v7, v3

    .line 441
    .local v1, "cursorPosition":I
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-le v1, v7, :cond_1

    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-gt v7, v1, :cond_5

    .line 445
    :cond_1
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-le v1, v7, :cond_2

    .line 446
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    iget v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    sub-int v5, v7, v8

    .line 447
    .local v5, "oldLength":I
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 451
    .end local v5    # "oldLength":I
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    invoke-virtual {v7, v10, v1, v9}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 452
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 459
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

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 461
    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->noReplacingReselectedWordWhenMatching()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->editorContext:Lcom/nuance/swype/input/RecaptureHandler$EditorContext;

    iget-object v7, v7, Lcom/nuance/swype/input/RecaptureHandler$EditorContext;->word:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 463
    const/4 v0, 0x1

    .line 464
    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 465
    if-eqz v4, :cond_4

    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-ltz v7, :cond_4

    .line 466
    iget v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    iget v8, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 472
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    :goto_1
    return v0

    .line 439
    .restart local v1    # "cursorPosition":I
    .restart local v2    # "eText":Landroid/view/inputmethod/ExtractedText;
    .restart local v3    # "i":I
    .restart local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v6    # "selection":[I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "cursorPosition":I
    .end local v2    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v3    # "i":I
    .end local v6    # "selection":[I
    :cond_6
    if-eqz v4, :cond_4

    .line 469
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/RecaptureHandler;->deleteRecapturedText(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_1
.end method

.method public onSingleTap(ZZ)Z
    .locals 10
    .param p1, "shouldResyncCache"    # Z
    .param p2, "orientationChanged"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 576
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 577
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 578
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechDictationInProgress()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 581
    .local v2, "speechDictationInProgress":Z
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 582
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 583
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 584
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v1, v3

    .line 585
    .local v1, "isCurrentLanguageCJ":Z
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 586
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 587
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    move v0, v3

    .line 589
    .local v0, "hasActiveAlphaWord":Z
    :goto_2
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 590
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

    .line 604
    :goto_3
    return v4

    .end local v0    # "hasActiveAlphaWord":Z
    .end local v1    # "isCurrentLanguageCJ":Z
    .end local v2    # "speechDictationInProgress":Z
    :cond_3
    move v2, v4

    .line 578
    goto :goto_0

    .restart local v2    # "speechDictationInProgress":Z
    :cond_4
    move v1, v4

    .line 584
    goto :goto_1

    .restart local v1    # "isCurrentLanguageCJ":Z
    :cond_5
    move v0, v4

    .line 587
    goto :goto_2

    .line 596
    .restart local v0    # "hasActiveAlphaWord":Z
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldRecaptureForSingleTapWhenFocusInURLField()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 597
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 599
    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    invoke-virtual {v5, v8}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 601
    iget-object v6, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    iget-object v7, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    if-eqz p1, :cond_a

    move v5, v3

    :goto_5
    if-eqz p2, :cond_b

    :goto_6
    invoke-virtual {v7, v8, v5, v3}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v3, v8, v9}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_9
    move v5, v4

    .line 597
    goto :goto_4

    :cond_a
    move v5, v4

    .line 601
    goto :goto_5

    :cond_b
    move v3, v4

    goto :goto_6
.end method

.method public onStartInputView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Lcom/nuance/swype/input/RecaptureHandler;->shouldDisableRecapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureDisabled:Z

    .line 189
    iput-boolean v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->undoLastAccept:Z

    .line 190
    return-void

    :cond_1
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    .line 418
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
    .line 497
    if-ne p3, p4, :cond_1

    .line 498
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 499
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    aput v5, v4, v1

    .line 498
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 501
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->previousCursorPositions:[I

    const/4 v5, 0x0

    aput p3, v4, v5

    .line 508
    .end local v1    # "i":I
    :cond_1
    if-eq p1, p3, :cond_2

    if-eq p2, p4, :cond_2

    if-ne p3, p4, :cond_2

    if-eq p5, p6, :cond_3

    :cond_2
    if-ne p3, p4, :cond_d

    .line 511
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne p3, v4, :cond_d

    if-eq p1, p2, :cond_d

    :cond_3
    const/4 v0, 0x1

    .line 516
    .local v0, "cursorValid":Z
    :goto_1
    iget v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    iget v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    iget v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-lt p3, v4, :cond_4

    iget v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lt v4, p4, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    if-eqz v4, :cond_e

    :cond_4
    const/4 v2, 0x1

    .line 523
    .local v2, "refreshRecapture":Z
    :goto_2
    const/4 v3, 0x1

    .line 524
    .local v3, "shouldClearAndRecapture":Z
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isUsingVietnameseTelexInputMode()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isUsingVietnameseNationalInputMode()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isComposingText()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 525
    const/4 v3, 0x0

    .line 529
    :cond_6
    if-ne p3, p4, :cond_7

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ne p3, v4, :cond_7

    if-eq p1, p2, :cond_7

    .line 530
    if-eqz v3, :cond_7

    .line 531
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 535
    :cond_7
    iget-boolean v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 536
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 537
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 538
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->hasPendingSuggestionsUpdate()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 539
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isHandlingTrace()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->tracedGesture()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getLastInput()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    :cond_8
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 540
    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 541
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 542
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechDictationInProgress()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    if-nez v3, :cond_f

    :cond_a
    const/4 v4, 0x1

    .line 545
    :goto_3
    if-nez v4, :cond_c

    if-eqz v0, :cond_c

    if-nez v2, :cond_b

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 546
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->isEmptyCandidateList()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 547
    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 548
    :cond_b
    sget-object v4, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "onUpdateSelection(): wordRecapture"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 549
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 550
    iget-object v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    iget-object v5, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 553
    :cond_c
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureNextOnUpdateSelection:Z

    .line 554
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/swype/input/RecaptureHandler;->suppressNextRecaptureOnUpdateSelection:Z

    .line 555
    return-void

    .line 511
    .end local v0    # "cursorValid":Z
    .end local v2    # "refreshRecapture":Z
    .end local v3    # "shouldClearAndRecapture":Z
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 516
    .restart local v0    # "cursorValid":Z
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 542
    .restart local v2    # "refreshRecapture":Z
    .restart local v3    # "shouldClearAndRecapture":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public reconstructByTap()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 640
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 641
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/RecaptureHandler;->reconstruct(Z)Lcom/nuance/input/swypecorelib/RecaptureInfo;

    move-result-object v1

    .line 642
    sget-object v2, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureEnd:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->recaptureStart:I

    if-ltz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/nuance/swype/input/RecaptureHandler;->inputView:Lcom/nuance/swype/input/InputView;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/InputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    .line 644
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->editState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->recapture()V

    .line 645
    const/4 v0, 0x1

    .line 647
    :cond_0
    return v0
.end method

.method public removePendingRecaptureMessage()V
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureHandler;->handler:Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/RecaptureHandler$MsgHandler;->removeMessages(I)V

    .line 1175
    return-void
.end method
