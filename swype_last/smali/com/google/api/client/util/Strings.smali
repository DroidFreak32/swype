.class public final Lcom/google/api/client/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 36
    .line 1075
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    .line 36
    goto :goto_9
.end method
