.class public Lcom/nuance/swype/input/udb/UserDictionaryIterator$JapaneseUserDictionaryIterator;
.super Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.source "UserDictionaryIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JapaneseUserDictionaryIterator"
.end annotation


# direct methods
.method private constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "japaneseInput"    # Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .param p2, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;-><init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .param p2, "x1"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "x2"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p4, "x3"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/udb/UserDictionaryIterator$JapaneseUserDictionaryIterator;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/util/Set;)V
    .locals 0
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
    .line 197
    .local p1, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public eraseAll()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getNext(Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/StringBuilder;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method
