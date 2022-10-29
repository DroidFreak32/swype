.class final Lcom/flurry/sdk/if$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/if;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kl$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/if;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if;JZ)V
    .registers 5

    .prologue
    .line 459
    iput-object p1, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iput-wide p2, p0, Lcom/flurry/sdk/if$2;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/if$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kl;Ljava/lang/Object;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v1, 0x0

    const/4 v7, 0x3

    .line 459
    check-cast p2, [B

    .line 2218
    iget v4, p1, Lcom/flurry/sdk/kn;->p:I

    .line 1464
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Proton config request: HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1466
    const/16 v0, 0x190

    if-eq v4, v0, :cond_2f

    const/16 v0, 0x196

    if-eq v4, v0, :cond_2f

    const/16 v0, 0x19c

    if-eq v4, v0, :cond_2f

    const/16 v0, 0x19f

    if-ne v4, v0, :cond_35

    .line 1469
    :cond_2f
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0, v8, v9}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;J)J

    .line 1470
    :cond_34
    :goto_34
    return-void

    .line 1474
    :cond_35
    invoke-virtual {p1}, Lcom/flurry/sdk/kl;->c()Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz p2, :cond_94

    .line 1478
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/if$2$1;

    invoke-direct {v2, p0, p2}, Lcom/flurry/sdk/if$2$1;-><init>(Lcom/flurry/sdk/if$2;[B)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 1486
    :try_start_49
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->e(Lcom/flurry/sdk/if;)Lcom/flurry/sdk/kj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kj;->b([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hs;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_55} :catch_113

    .line 1491
    :goto_55
    invoke-static {v0}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/hs;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 1495
    :goto_5b
    if-eqz v1, :cond_94

    .line 1496
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0, v8, v9}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;J)J

    .line 1498
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iget-wide v2, p0, Lcom/flurry/sdk/if$2;->a:J

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/if;->b(Lcom/flurry/sdk/if;J)J

    .line 1499
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    iget-boolean v2, p0, Lcom/flurry/sdk/if$2;->b:Z

    invoke-static {v0, v2}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;Z)Z

    .line 1500
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0, v1}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;Lcom/flurry/sdk/hs;)Lcom/flurry/sdk/hs;

    .line 1503
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->f(Lcom/flurry/sdk/if;)V

    .line 1506
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->g(Lcom/flurry/sdk/if;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1507
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->h(Lcom/flurry/sdk/if;)Z

    .line 1508
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    const-string/jumbo v2, "flurry.session_start"

    invoke-static {v0, v2}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;Ljava/lang/String;)V

    .line 1512
    :cond_8f
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->i(Lcom/flurry/sdk/if;)V

    .line 1516
    :cond_94
    if-nez v1, :cond_34

    .line 1518
    iget-object v0, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->j(Lcom/flurry/sdk/if;)J

    move-result-wide v0

    const/4 v2, 0x1

    shl-long v2, v0, v2

    .line 1520
    const/16 v0, 0x1ad

    if-ne v4, v0, :cond_13a

    .line 1521
    const-string/jumbo v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1522
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 1523
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1525
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Server returned retry time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1527
    :try_start_ce
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_d1} :catch_12f

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1533
    :goto_d5
    iget-object v2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;J)J

    .line 1535
    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Proton config request failed, backing off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v2}, Lcom/flurry/sdk/if;->j(Lcom/flurry/sdk/if;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v1}, Lcom/flurry/sdk/if;->k(Lcom/flurry/sdk/if;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/if$2;->c:Lcom/flurry/sdk/if;

    invoke-static {v2}, Lcom/flurry/sdk/if;->j(Lcom/flurry/sdk/if;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_34

    .line 1487
    :catch_113
    move-exception v0

    .line 1488
    const/4 v2, 0x5

    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to decode proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_55

    .line 1529
    :catch_12f
    move-exception v0

    invoke-static {}, Lcom/flurry/sdk/if;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Server returned nonsensical retry time"

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13a
    move-wide v0, v2

    goto :goto_d5

    :cond_13c
    move-object v1, v0

    goto/16 :goto_5b
.end method
