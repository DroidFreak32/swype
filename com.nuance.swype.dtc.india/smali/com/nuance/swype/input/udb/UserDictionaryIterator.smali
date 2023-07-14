.class public abstract Lcom/nuance/swype/input/udb/UserDictionaryIterator;
.super Ljava/lang/Object;
.source "UserDictionaryIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;,
        Lcom/nuance/swype/input/udb/UserDictionaryIterator$AlphaUserDictionaryIterator;
    }
.end annotation


# instance fields
.field protected final speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0
    .param p1, "speechWraper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p2, "x1"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    return-void
.end method

.method public static createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .locals 2
    .param p0, "xt9coreAlpha"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 25
    new-instance v0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$AlphaUserDictionaryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator$AlphaUserDictionaryIterator;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V

    return-object v0
.end method

.method public static createChineseIterator(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .locals 2
    .param p0, "xt9coreChinese"    # Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 29
    new-instance v0, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator$ChineseUserDictionaryIterator;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/udb/UserDictionaryIterator$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract delete(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract eraseAll()V
.end method

.method public abstract find(Ljava/lang/String;)Z
.end method

.method public abstract getNext(Ljava/lang/StringBuilder;)Z
.end method
