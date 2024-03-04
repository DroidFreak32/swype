.class public final Lorg/apache/james/mime4j/field/UnstructuredField$Parser;
.super Ljava/lang/Object;
.source "UnstructuredField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/UnstructuredField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    invoke-direct {v0, p3}, Lorg/apache/james/mime4j/field/UnstructuredField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
