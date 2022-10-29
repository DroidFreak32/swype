.class Lcom/nuance/swype/input/InputView$4;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/InputView;->getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final phantomCapTextBuffer:[C

.field final synthetic this$0:Lcom/nuance/swype/input/InputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 3362
    iput-object p1, p0, Lcom/nuance/swype/input/InputView$4;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3363
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/nuance/swype/input/InputView$4;->phantomCapTextBuffer:[C

    return-void

    :array_e
    .array-data 2
        0x78s
        0x20s
    .end array-data
.end method


# virtual methods
.method public autoAccept(Z)Z
    .registers 3
    .param p1, "addSeparator"    # Z

    .prologue
    .line 3377
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoCapitalizationTextBuffer(I)[C
    .registers 3
    .param p1, "maxBufferLen"    # I

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$4;->phantomCapTextBuffer:[C

    return-object v0
.end method

.method public getContextBuffer(I)[C
    .registers 9
    .param p1, "maxBufferLen"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 3366
    iget-object v3, p0, Lcom/nuance/swype/input/InputView$4;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3367
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2f

    invoke-interface {v0, p1, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3368
    .local v1, "textBeforeCursor":Ljava/lang/CharSequence;
    :goto_e
    sget-object v4, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "**** Core called getTextBeforeCursor: "

    aput-object v3, v5, v6

    const/4 v6, 0x1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1f
    aput-object v3, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3369
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :cond_2e
    return-object v2

    .end local v1    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_2f
    move-object v1, v2

    .line 3367
    goto :goto_e

    .line 3368
    .restart local v1    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_31
    const-string/jumbo v3, "null"

    goto :goto_1f
.end method
