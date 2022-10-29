.class public final Lcom/google/api/client/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 1129
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    return-object v0
.end method
