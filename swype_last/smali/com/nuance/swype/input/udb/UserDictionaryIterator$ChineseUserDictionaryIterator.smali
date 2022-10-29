.class public Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;
.super Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.source "UserDictionaryIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseUserDictionaryIterator"
.end annotation


# instance fields
.field private final chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

.field private index:I


# direct methods
.method private constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 5
    .param p1, "chineseInput"    # Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .param p2, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;-><init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V

    .line 87
    iput-object p1, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 89
    invoke-virtual {p2, p1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .param p2, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "x2"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p4, "x3"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "word":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    goto :goto_4

    .line 118
    .end local v0    # "word":Ljava/lang/String;
    :cond_16
    return-void
.end method

.method public eraseAll()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->resetUserDictionary()Z

    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;->clearAllCustomWords(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V

    .line 127
    :cond_e
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getNext(Ljava/lang/StringBuilder;)Z
    .registers 8
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v2, "spell":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "cnWords":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmCount()I

    move-result v1

    .line 98
    .local v1, "count":I
    iget v4, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    if-lt v4, v1, :cond_18

    .line 99
    iput v3, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    .line 109
    :goto_17
    return v3

    .line 102
    :cond_18
    iget-object v4, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->chineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    iget v5, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    invoke-virtual {v4, v5, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 103
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v3, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    .line 106
    const/4 v3, 0x1

    goto :goto_17

    .line 108
    :cond_34
    iput v3, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;->index:I

    goto :goto_17
.end method
