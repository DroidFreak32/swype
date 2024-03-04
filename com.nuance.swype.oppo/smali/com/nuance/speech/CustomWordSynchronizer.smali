.class public abstract Lcom/nuance/speech/CustomWordSynchronizer;
.super Ljava/lang/Object;
.source "CustomWordSynchronizer.java"


# static fields
.field public static final RECOGNITION_TYPE_DICTATION:I = 0x0

.field public static final RECOGNITION_TYPE_WEB_SERACH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addCustomWord(ILjava/lang/String;)V
.end method

.method public addCustomWord(Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/nuance/speech/CustomWordSynchronizer;->getRecognizerType(Lcom/nuance/swype/input/InputFieldInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/nuance/speech/CustomWordSynchronizer;->addCustomWord(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public abstract clearAllCustomWords()V
.end method

.method protected getRecognizerType(Lcom/nuance/swype/input/InputFieldInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract removeCustomWord(ILjava/lang/String;)V
.end method

.method public removeCustomWord(Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/nuance/speech/CustomWordSynchronizer;->getRecognizerType(Lcom/nuance/swype/input/InputFieldInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/nuance/speech/CustomWordSynchronizer;->removeCustomWord(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public abstract removeCustomWords(Ljava/util/Set;)V
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

.method public abstract resyncAllUserWords(I)V
.end method

.method public resyncAllUserWords(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/nuance/speech/CustomWordSynchronizer;->getRecognizerType(Lcom/nuance/swype/input/InputFieldInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/speech/CustomWordSynchronizer;->resyncAllUserWords(I)V

    .line 54
    return-void
.end method
