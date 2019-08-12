.class public final Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
