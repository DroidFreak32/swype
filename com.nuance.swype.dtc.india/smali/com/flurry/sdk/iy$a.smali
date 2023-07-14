.class public final Lcom/flurry/sdk/iy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/iy;
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
        "Lcom/flurry/sdk/iy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    .line 1055
    if-nez p1, :cond_1

    .line 1056
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    .line 1059
    :cond_1
    new-instance v1, Lcom/flurry/sdk/iy$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/iy$a$2;-><init>(Lcom/flurry/sdk/iy$a;Ljava/io/InputStream;)V

    .line 1066
    new-instance v0, Lcom/flurry/sdk/iy;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/iy;-><init>(B)V

    .line 1069
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1070
    if-lez v2, :cond_0

    .line 1071
    new-array v2, v2, [B

    .line 1072
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1075
    iput-object v2, v0, Lcom/flurry/sdk/iy;->a:[B

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p2, Lcom/flurry/sdk/iy;

    .line 2028
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2032
    :cond_1
    new-instance v1, Lcom/flurry/sdk/iy$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/iy$a$1;-><init>(Lcom/flurry/sdk/iy$a;Ljava/io/OutputStream;)V

    .line 2039
    const/4 v0, 0x0

    .line 2040
    iget-object v2, p2, Lcom/flurry/sdk/iy;->a:[B

    if-eqz v2, :cond_2

    .line 2041
    iget-object v0, p2, Lcom/flurry/sdk/iy;->a:[B

    array-length v0, v0

    .line 2045
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2046
    if-lez v0, :cond_3

    .line 2047
    iget-object v0, p2, Lcom/flurry/sdk/iy;->a:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 2050
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method
