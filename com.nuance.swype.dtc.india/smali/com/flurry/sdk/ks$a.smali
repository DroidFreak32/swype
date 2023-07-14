.class public final Lcom/flurry/sdk/ks$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz",
        "<",
        "Lcom/flurry/sdk/ks;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    .line 1061
    if-nez p1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-object v0

    .line 1065
    :cond_1
    new-instance v2, Lcom/flurry/sdk/ks$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ks$a$2;-><init>(Lcom/flurry/sdk/ks$a;Ljava/io/InputStream;)V

    .line 1072
    new-instance v1, Lcom/flurry/sdk/ks;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/flurry/sdk/ks;-><init>(B)V

    .line 1074
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 1075
    if-eqz v3, :cond_0

    .line 1079
    new-array v0, v3, [B

    invoke-static {v1, v0}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;[B)[B

    .line 1080
    invoke-static {v1}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1082
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-object v0, v1

    .line 32
    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p2, Lcom/flurry/sdk/ks;

    .line 2038
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ks$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ks$a$1;-><init>(Lcom/flurry/sdk/ks$a;Ljava/io/OutputStream;)V

    .line 2049
    invoke-static {p2}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)[B

    move-result-object v1

    array-length v1, v1

    .line 2051
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2052
    invoke-static {p2}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 2053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2055
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
