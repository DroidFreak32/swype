.class public abstract Lcom/a/a/h$a;
.super Lcom/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/a/a/h;",
        "BuilderType:",
        "Lcom/a/a/h$a;",
        ">",
        "Lcom/a/a/a$a",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()Lcom/a/a/h$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/h$a;->clear()Lcom/a/a/h$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/a/a/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/h$a;->clone()Lcom/a/a/h$a;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/a/a/h$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/h$a;->clone()Lcom/a/a/h$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/h$a;->clone()Lcom/a/a/h$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInstanceForType()Lcom/a/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/h$a;->getDefaultInstanceForType()Lcom/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/a/a/h;)Lcom/a/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method protected parseUnknownField(Lcom/a/a/d;Lcom/a/a/f;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/a/a/d;->b(I)Z

    move-result v0

    return v0
.end method
