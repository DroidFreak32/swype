.class final Lcom/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/n;

.field private final b:Lcom/a/a/f;

.field private c:Lcom/a/a/c;

.field volatile d:Lcom/a/a/n;


# virtual methods
.method final b()V
    .registers 4

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    if-eqz v0, :cond_f

    monitor-exit p0

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/a/a/k;->c:Lcom/a/a/c;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/a/a/k;->a:Lcom/a/a/n;

    invoke-interface {v0}, Lcom/a/a/n;->getParserForType()Lcom/a/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/k;->c:Lcom/a/a/c;

    iget-object v2, p0, Lcom/a/a/k;->b:Lcom/a/a/f;

    invoke-interface {v0, v1, v2}, Lcom/a/a/p;->parseFrom(Lcom/a/a/c;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    iput-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_27
    .catchall {:try_start_f .. :try_end_25} :catchall_c

    :cond_25
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_c

    goto :goto_4

    :catch_27
    move-exception v0

    goto :goto_25
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/a/a/k;->b()V

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/k;->b()V

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/a/k;->b()V

    iget-object v0, p0, Lcom/a/a/k;->d:Lcom/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
