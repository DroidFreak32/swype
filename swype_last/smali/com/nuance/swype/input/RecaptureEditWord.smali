.class public Lcom/nuance/swype/input/RecaptureEditWord;
.super Ljava/lang/Object;
.source "RecaptureEditWord.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;
.implements Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private recaptureWord:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "RecaptureEditWord"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/RecaptureEditWord;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    return-void
.end method

.method private set([C)V
    .registers 6
    .param p1, "buffer"    # [C

    .prologue
    const/4 v3, 0x0

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 29
    :cond_10
    sget-object v0, Lcom/nuance/swype/input/RecaptureEditWord;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "recaptureWord = "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/RecaptureEditWord;->set([C)V

    .line 49
    return-void
.end method

.method public getWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recapture([C)V
    .registers 3
    .param p1, "buffer"    # [C

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 41
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureEditWord;->set([C)V

    .line 45
    :cond_b
    return-void
.end method

.method public updateSelection(ZIILandroid/view/inputmethod/InputConnection;)V
    .registers 5
    .param p1, "composingWordCandidates"    # Z
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 63
    return-void
.end method
