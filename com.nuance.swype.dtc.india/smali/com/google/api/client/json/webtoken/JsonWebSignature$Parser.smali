.class public final Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
.super Ljava/lang/Object;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation


# instance fields
.field private headerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private payloadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const-class v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 554
    const-class v0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 560
    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 561
    return-void
.end method


# virtual methods
.method public final getHeaderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getPayloadClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .locals 13
    .param p1, "tokenString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2e

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 598
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 599
    .local v0, "firstDot":I
    if-eq v0, v11, :cond_0

    move v8, v9

    .line 2037
    :goto_0
    invoke-static {v8}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 600
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2101
    invoke-static {v8}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 601
    .local v2, "headerBytes":[B
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p1, v12, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 602
    .local v5, "secondDot":I
    if-eq v5, v11, :cond_1

    move v8, v9

    .line 3037
    :goto_1
    invoke-static {v8}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 603
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v12, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v11, :cond_2

    move v8, v9

    .line 4037
    :goto_2
    invoke-static {v8}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 605
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 4101
    invoke-static {v8}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    .line 606
    .local v4, "payloadBytes":[B
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 5101
    invoke-static {v8}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v6

    .line 607
    .local v6, "signatureBytes":[B
    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v7

    .line 609
    .local v7, "signedContentBytes":[B
    iget-object v8, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v12, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    invoke-virtual {v8, v11, v12}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 611
    .local v1, "header":Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    invoke-virtual {v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 6037
    :goto_3
    invoke-static {v9}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 612
    iget-object v8, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v10, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 614
    .local v3, "payload":Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    new-instance v8, Lcom/google/api/client/json/webtoken/JsonWebSignature;

    invoke-direct {v8, v1, v3, v6, v7}, Lcom/google/api/client/json/webtoken/JsonWebSignature;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V

    return-object v8

    .end local v1    # "header":Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .end local v2    # "headerBytes":[B
    .end local v3    # "payload":Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .end local v4    # "payloadBytes":[B
    .end local v5    # "secondDot":I
    .end local v6    # "signatureBytes":[B
    .end local v7    # "signedContentBytes":[B
    :cond_0
    move v8, v10

    .line 599
    goto :goto_0

    .restart local v2    # "headerBytes":[B
    .restart local v5    # "secondDot":I
    :cond_1
    move v8, v10

    .line 602
    goto :goto_1

    :cond_2
    move v8, v10

    .line 603
    goto :goto_2

    .restart local v1    # "header":Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .restart local v4    # "payloadBytes":[B
    .restart local v6    # "signatureBytes":[B
    .restart local v7    # "signedContentBytes":[B
    :cond_3
    move v9, v10

    .line 611
    goto :goto_3
.end method

.method public final setHeaderClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;>;"
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 571
    return-object p0
.end method

.method public final setPayloadClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "payloadClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;>;"
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 582
    return-object p0
.end method
