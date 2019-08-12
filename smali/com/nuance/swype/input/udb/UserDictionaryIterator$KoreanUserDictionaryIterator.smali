.class public Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;
.super Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.source "UserDictionaryIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KoreanUserDictionaryIterator"
.end annotation


# instance fields
.field private final koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;


# direct methods
.method private constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "koreanInput"    # Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .param p2, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;-><init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V

    .line 149
    iput-object p1, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .param p2, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "x2"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p4, "x3"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/util/Set;)V
    .locals 3
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
    .line 159
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, "word":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmDelete(Ljava/lang/String;)Z

    goto :goto_0

    .line 163
    .end local v1    # "word":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v2, p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->removeCustomWords(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Ljava/util/Set;)V

    .line 166
    :cond_1
    return-void
.end method

.method public eraseAll()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->resetUserDatabases()V

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;->clearAllCustomWords(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V

    .line 174
    :cond_0
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmFind(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNext(Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$KoreanUserDictionaryIterator;->koreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->dlmGetNext(Ljava/lang/StringBuilder;)Z

    move-result v0

    return v0
.end method
