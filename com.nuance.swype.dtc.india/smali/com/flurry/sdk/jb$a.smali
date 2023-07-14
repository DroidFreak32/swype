.class public final Lcom/flurry/sdk/jb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jb;
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
        "Lcom/flurry/sdk/jb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    .line 1031
    if-nez p1, :cond_1

    .line 1032
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 1035
    :cond_1
    new-instance v1, Lcom/flurry/sdk/jb$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/jb$a$1;-><init>(Lcom/flurry/sdk/jb$a;Ljava/io/InputStream;)V

    .line 1042
    new-instance v0, Lcom/flurry/sdk/jb;

    invoke-direct {v0}, Lcom/flurry/sdk/jb;-><init>()V

    .line 1045
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 1046
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 1048
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;Z)Z

    .line 1049
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;J)J

    .line 1052
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 1053
    if-eqz v2, :cond_0

    .line 1057
    new-array v2, v2, [B

    .line 1058
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1059
    new-instance v3, Lcom/flurry/sdk/iy;

    invoke-direct {v3, v2}, Lcom/flurry/sdk/iy;-><init>([B)V

    .line 1060
    invoke-static {v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

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
    .line 2026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Serialization not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
