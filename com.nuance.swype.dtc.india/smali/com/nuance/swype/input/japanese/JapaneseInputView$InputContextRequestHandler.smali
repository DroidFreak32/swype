.class Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;
.super Ljava/lang/Object;
.source "JapaneseInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/japanese/JapaneseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputContextRequestHandler"
.end annotation


# instance fields
.field private final phantomCapTextBuffer:[C

.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .locals 1

    .prologue
    .line 4489
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4490
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->phantomCapTextBuffer:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x20s
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/japanese/JapaneseInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/japanese/JapaneseInputView$1;

    .prologue
    .line 4489
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;[CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;
    .param p1, "x1"    # [C
    .param p2, "x2"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4489
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->addExplicitSymbol([CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method private addExplicitSymbol([CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 2
    .param p1, "symbols"    # [C
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, p1, v1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method private getTextBeforeCursor(I)[C
    .locals 4
    .param p1, "maxBufferLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 4497
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1800(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4498
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4499
    .local v1, "textBeforeCursor":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :cond_0
    return-object v2

    .end local v1    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, v2

    .line 4498
    goto :goto_0
.end method


# virtual methods
.method public autoAccept(Z)Z
    .locals 5
    .param p1, "addSeparator"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4516
    .local v0, "selectWord":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4517
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4518
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1900(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4519
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2000(Lcom/nuance/swype/input/japanese/JapaneseInputView;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->wordSelected(IZ)V

    .line 4520
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4521
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearAllKeys()V

    .line 4522
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->clearSuggestions()V

    .line 4525
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2102(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)I

    .line 4526
    return v4
.end method

.method public getAutoCapitalizationTextBuffer(I)[C
    .locals 1
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->phantomCapTextBuffer:[C

    return-object v0
.end method

.method public getContextBuffer(I)[C
    .locals 1
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 4504
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView$InputContextRequestHandler;->getTextBeforeCursor(I)[C

    move-result-object v0

    return-object v0
.end method
