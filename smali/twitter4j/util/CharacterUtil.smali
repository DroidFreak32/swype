.class public final Ltwitter4j/util/CharacterUtil;
.super Ljava/lang/Object;
.source "CharacterUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static count(Ljava/lang/String;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static isExceedingLengthLimitation(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Ltwitter4j/util/CharacterUtil;->count(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
