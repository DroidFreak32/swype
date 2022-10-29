.class final Lcom/nuance/nmdp/speechkit/VocalizerImpl;
.super Ljava/lang/Object;
.source "VocalizerImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Vocalizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    }
.end annotation


# instance fields
.field private final _actions:Lcom/nuance/nmdp/speechkit/util/List;

.field private _currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

.field private _currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

.field private _language:Ljava/lang/String;

.field private final _listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

.field private final _tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

.field private _transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

.field private final _transactionListener:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

.field private _voice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;)V
    .registers 7
    .param p1, "transactionRunner"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p2, "voice"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_voice:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_language:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .line 44
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    .line 45
    invoke-direct {p0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    .line 46
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    .line 47
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .line 48
    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 49
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/List;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/List;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    .line 50
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->handleTransactionError(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)Lcom/nuance/nmdp/speechkit/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/nmdp/speechkit/VocalizerImpl;Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl;
    .param p1, "x1"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V

    return-void
.end method

.method private createTransactionListener()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;
    .registers 2

    .prologue
    .line 67
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$1;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerImpl;)V

    return-object v0
.end method

.method private handleTransactionError(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 54
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    invoke-interface {v3, p0, p1, p3, p2}, Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;->onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V

    .line 57
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v2

    .line 58
    .local v2, "numActions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_26

    .line 60
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v3, v1}, Lcom/nuance/nmdp/speechkit/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .line 61
    .local v0, "action":Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_listener:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, p0, v4, p3, v5}, Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;->onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 63
    .end local v0    # "action":Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    :cond_26
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/util/List;->clear()V

    .line 64
    return-void
.end method

.method private startTransaction(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V
    .registers 10
    .param p1, "action"    # Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 116
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->isValid()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 118
    iput-object v6, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionError:Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 119
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_tr:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Voice:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$900(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Language:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$1000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->IsMarkup:Z
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$1100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Z

    move-result v4

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_transactionListener:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createVocalizeTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionListener;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    .line 120
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    if-nez v0, :cond_41

    .line 122
    const-string/jumbo v0, "Unable to create TTS transaction"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v2, v7, v6, v6}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->handleTransactionError(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 134
    :goto_40
    return-void

    .line 126
    :cond_41
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentText:Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    .line 127
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;->start()V

    goto :goto_40

    .line 131
    :cond_49
    const-string/jumbo v0, "Unable to create TTS transaction. Transaction runner is invalid."

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Text:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->Context:Ljava/lang/Object;
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;->access$100(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;

    invoke-direct {v2, v7, v6, v6}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->handleTransactionError(Ljava/lang/String;Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    goto :goto_40
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;->cancel()V

    .line 165
    :cond_9
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_language:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_voice:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public final setListener(Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    .prologue
    .line 184
    return-void
.end method

.method public final setVoice(Ljava/lang/String;)V
    .registers 3
    .param p1, "voice"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_language:Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_voice:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public final speakMarkupString(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 150
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_voice:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_language:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .local v0, "action":Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    if-nez v1, :cond_15

    .line 152
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V

    .line 156
    :goto_14
    return-void

    .line 154
    :cond_15
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public final speakString(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 139
    new-instance v0, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_voice:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_language:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerImpl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .local v0, "action":Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_currentTransaction:Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransaction;

    if-nez v1, :cond_15

    .line 141
    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->startTransaction(Lcom/nuance/nmdp/speechkit/VocalizerImpl$VocalizerAction;)V

    .line 145
    :goto_14
    return-void

    .line 143
    :cond_15
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->_actions:Lcom/nuance/nmdp/speechkit/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/nmdp/speechkit/util/List;->add(Ljava/lang/Object;)V

    goto :goto_14
.end method
