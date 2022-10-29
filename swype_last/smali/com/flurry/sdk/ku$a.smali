.class public final Lcom/flurry/sdk/ku$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ku;
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
        "Lcom/flurry/sdk/ku;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    .line 1042
    if-nez p1, :cond_4

    .line 1043
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 1046
    :cond_4
    new-instance v1, Lcom/flurry/sdk/ku$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ku$a$2;-><init>(Lcom/flurry/sdk/ku$a;Ljava/io/InputStream;)V

    .line 1053
    new-instance v0, Lcom/flurry/sdk/ku;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/flurry/sdk/ku;-><init>(B)V

    .line 1054
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2016
    iput-object v1, v0, Lcom/flurry/sdk/ku;->a:Ljava/lang/String;

    goto :goto_3
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p2, Lcom/flurry/sdk/ku;

    .line 2024
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 2025
    :cond_6
    :goto_6
    return-void

    .line 2028
    :cond_7
    new-instance v0, Lcom/flurry/sdk/ku$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ku$a$1;-><init>(Lcom/flurry/sdk/ku$a;Ljava/io/OutputStream;)V

    .line 3016
    iget-object v1, p2, Lcom/flurry/sdk/ku;->a:Ljava/lang/String;

    .line 2035
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_6
.end method
