.class public interface abstract Ljp/co/omronsoft/openwnn/WnnEngine;
.super Ljava/lang/Object;
.source "WnnEngine.java"


# static fields
.field public static final DICTIONARY_TYPE_LEARN:I = 0x1

.field public static final DICTIONARY_TYPE_USER:I = 0x2


# virtual methods
.method public abstract addWord(Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract breakSequence()V
.end method

.method public abstract close()V
.end method

.method public abstract convert(Ljp/co/omronsoft/openwnn/ComposingText;)I
.end method

.method public abstract deleteWord(Ljp/co/omronsoft/openwnn/WnnWord;)Z
.end method

.method public abstract getNextCandidate()Ljp/co/omronsoft/openwnn/WnnWord;
.end method

.method public abstract getUserDictionaryWords()[Ljp/co/omronsoft/openwnn/WnnWord;
.end method

.method public abstract init()V
.end method

.method public abstract initializeDictionary(I)Z
.end method

.method public abstract initializeDictionary(II)Z
.end method

.method public abstract learn(Ljp/co/omronsoft/openwnn/WnnWord;)Z
.end method

.method public abstract makeCandidateListOf(I)I
.end method

.method public abstract predict(Ljp/co/omronsoft/openwnn/ComposingText;II)I
.end method

.method public abstract searchWords(Ljava/lang/String;)I
.end method

.method public abstract searchWords(Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract setPreferences(Landroid/content/SharedPreferences;)V
.end method
