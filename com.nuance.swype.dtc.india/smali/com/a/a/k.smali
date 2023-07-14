.class final Lcom/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/n;

.field private final b:Lcom/a/a/f;

.field private c:Lcom/a/a/c;

.field volatile d:Lcom/a/a/n;


# virtual methods
.method final b()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/a/a/k;->c:Lcom/a/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/k;->a:Lcom/a/a/n;

    invoke-interface {v0}, Lcom/a/a/n;->getParserForType()Lcom/a/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/k;->c:Lcom/a/a/c;

    iget-object v2, p0, Lcom/a/a/k;->b:Lcom/a/a/f;

    invoke-interface {v0, v1, v2}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    iput-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/k;->b()V

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/k;->b()V

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/k;->b()V

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
