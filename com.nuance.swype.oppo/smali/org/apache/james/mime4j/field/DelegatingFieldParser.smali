.class public Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.super Ljava/lang/Object;
.source "DelegatingFieldParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

.field private parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    .line 24
    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredField$Parser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/UnstructuredField$Parser;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/FieldParser;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

    .line 45
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    return-object v0
.end method

.method public final setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/apache/james/mime4j/field/FieldParser;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
