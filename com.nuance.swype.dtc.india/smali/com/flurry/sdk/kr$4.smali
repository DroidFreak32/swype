.class final Lcom/flurry/sdk/kr$4;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kr$a;

.field final synthetic b:Lcom/flurry/sdk/kr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kr;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/kr$4;->b:Lcom/flurry/sdk/kr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/kr$4;->a:Lcom/flurry/sdk/kr$a;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const/4 v11, 0x4

    .line 128
    iget-object v4, p0, Lcom/flurry/sdk/kr$4;->b:Lcom/flurry/sdk/kr;

    .line 1209
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 2079
    iget-boolean v0, v0, Lcom/flurry/sdk/jk;->b:Z

    .line 1209
    if-nez v0, :cond_1

    .line 1210
    iget-object v0, v4, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string/jumbo v1, "Reports were not sent! No Internet connection!"

    invoke-static {v12, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v0, v4, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    .line 2228
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/flurry/sdk/kt;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1217
    iget-object v0, v4, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string/jumbo v1, "No more reports to send."

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1222
    invoke-virtual {v4}, Lcom/flurry/sdk/kr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, v4, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1228
    iget-object v0, v4, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Number of not sent blocks = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1230
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1232
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1234
    iget-object v1, v4, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1239
    invoke-virtual {v4}, Lcom/flurry/sdk/kr;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1243
    new-instance v1, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v7

    .line 3097
    iget-object v7, v7, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 1243
    invoke-static {v0}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, ".yflurrydatasenderblock."

    const/4 v9, 0x1

    new-instance v10, Lcom/flurry/sdk/kr$6;

    invoke-direct {v10, v4}, Lcom/flurry/sdk/kr$6;-><init>(Lcom/flurry/sdk/kr;)V

    invoke-direct {v1, v7, v8, v9, v10}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    .line 1250
    invoke-virtual {v1}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ks;

    .line 1251
    if-nez v1, :cond_5

    .line 1252
    iget-object v1, v4, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string/jumbo v7, "Internal ERROR! Cannot read!"

    invoke-static {v13, v1, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v1, v4, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1230
    :cond_4
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3106
    :cond_5
    iget-object v1, v1, Lcom/flurry/sdk/ks;->b:[B

    .line 1258
    if-eqz v1, :cond_6

    array-length v7, v1

    if-nez v7, :cond_7

    .line 1259
    :cond_6
    iget-object v1, v4, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string/jumbo v7, "Internal ERROR! Report is empty!"

    invoke-static {v13, v1, v7}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v1, v4, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/kt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1264
    :cond_7
    iget-object v7, v4, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Reading block info "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v7, v8}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v7, v4, Lcom/flurry/sdk/kr;->c:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-virtual {v4, v1, v0, v2}, Lcom/flurry/sdk/kr;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
