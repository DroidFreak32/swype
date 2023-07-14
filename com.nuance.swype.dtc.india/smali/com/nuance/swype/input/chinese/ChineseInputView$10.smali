.class Lcom/nuance/swype/input/chinese/ChineseInputView$10;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 6471
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTextBeforeCursor(I)[C
    .locals 8
    .param p1, "maxBufferLen"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 6474
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "inputContextRequestHandler...getTextBeforeCursor...maxBufferLen: "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6475
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$12000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 6476
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6477
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

    .line 6476
    goto :goto_0
.end method


# virtual methods
.method public autoAccept(Z)Z
    .locals 7
    .param p1, "addSeparator"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6494
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "inputContextRequestHandler...autoAccept...addSeparator: "

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "...mLastInput is LAST_INPUT_TRACE: "

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 6495
    invoke-static {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$12100(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    .line 6494
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6498
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$12200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;->access$3100(Lcom/nuance/swype/input/chinese/ChineseInputView$TouchKeyActionHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 6499
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$7600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6500
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$12300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 6503
    :cond_2
    return v1
.end method

.method public getAutoCapitalizationTextBuffer(I)[C
    .locals 4
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 6488
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "inputContextRequestHandler...getAutoCapitalizationTextBuffer...maxBufferLen: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6489
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->getTextBeforeCursor(I)[C

    move-result-object v0

    return-object v0
.end method

.method public getContextBuffer(I)[C
    .locals 4
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 6482
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "inputContextRequestHandler...getContextBuffer...maxBufferLen: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 6483
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->getTextBeforeCursor(I)[C

    move-result-object v0

    return-object v0
.end method
