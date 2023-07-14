.class public interface abstract Lcom/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/n$a;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lcom/a/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/p",
            "<+",
            "Lcom/a/a/n;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lcom/a/a/n$a;
.end method

.method public abstract toBuilder()Lcom/a/a/n$a;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract writeTo(Lcom/a/a/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
