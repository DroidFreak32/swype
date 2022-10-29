.class public Lcom/flurry/sdk/kw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz",
        "<TObjectType;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kz",
            "<TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kz;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kz",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/flurry/sdk/kw;->a:Lcom/flurry/sdk/kz;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/kw;->a:Lcom/flurry/sdk/kz;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/kw;->a:Lcom/flurry/sdk/kz;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/kz;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TObjectType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/sdk/kw;->a:Lcom/flurry/sdk/kz;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/kw;->a:Lcom/flurry/sdk/kz;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/kz;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 25
    :cond_d
    return-void
.end method
