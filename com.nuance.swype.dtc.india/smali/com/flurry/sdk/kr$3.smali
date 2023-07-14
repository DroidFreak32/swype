.class final Lcom/flurry/sdk/kr$3;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/flurry/sdk/kr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kr;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/flurry/sdk/kr$3;->d:Lcom/flurry/sdk/kr;

    iput-object p2, p0, Lcom/flurry/sdk/kr$3;->a:[B

    iput-object p3, p0, Lcom/flurry/sdk/kr$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/kr$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/sdk/kr$3;->d:Lcom/flurry/sdk/kr;

    iget-object v1, p0, Lcom/flurry/sdk/kr$3;->a:[B

    iget-object v2, p0, Lcom/flurry/sdk/kr$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/kr$3;->c:Ljava/lang/String;

    .line 2182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/flurry/sdk/kr;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1189
    new-instance v3, Lcom/flurry/sdk/ks;

    invoke-direct {v3, v1}, Lcom/flurry/sdk/ks;-><init>([B)V

    .line 3102
    iget-object v1, v3, Lcom/flurry/sdk/ks;->a:Ljava/lang/String;

    .line 1192
    new-instance v4, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v5

    .line 4097
    iget-object v5, v5, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1192
    invoke-static {v1}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, ".yflurrydatasenderblock."

    const/4 v7, 0x1

    new-instance v8, Lcom/flurry/sdk/kr$5;

    invoke-direct {v8, v0}, Lcom/flurry/sdk/kr$5;-><init>(Lcom/flurry/sdk/kr;)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 1199
    invoke-virtual {v4, v3}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V

    .line 1200
    const/4 v4, 0x5

    iget-object v5, v0, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Saving Block File "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v7

    .line 5097
    iget-object v7, v7, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1200
    invoke-static {v1}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v0, v0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v0, v3, v2}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/ks;Ljava/lang/String;)V

    .line 116
    return-void
.end method
