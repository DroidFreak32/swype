.class public Lcom/nuance/swype/input/RecaptureEditWord;
.super Ljava/lang/Object;
.source "RecaptureEditWord.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;
.implements Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;


# static fields
.field protected static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private recaptureWord:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "RecaptureEditWord"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/RecaptureEditWord;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

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
    .locals 3
    .param p1, "buffer"    # [C

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/RecaptureEditWord;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "recaptureWord = "

    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/RecaptureEditWord;->set([C)V

    .line 49
    return-void
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recapture([C)V
    .locals 1
    .param p1, "buffer"    # [C

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/RecaptureEditWord;->recaptureWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/RecaptureEditWord;->set([C)V

    .line 45
    :cond_0
    return-void
.end method

.method public updateSelection(ZIILandroid/view/inputmethod/InputConnection;)V
    .locals 0
    .param p1, "composingWordCandidates"    # Z
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 63
    return-void
.end method
