.class public final Lcom/flurry/sdk/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:J

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field g:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    .line 23
    iput p1, p0, Lcom/flurry/sdk/iv;->f:I

    .line 24
    iput-object p2, p0, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    .line 26
    if-eqz p3, :cond_16

    .line 27
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    :cond_16
    iput-wide p4, p0, Lcom/flurry/sdk/iv;->g:J

    .line 31
    iput-boolean v1, p0, Lcom/flurry/sdk/iv;->b:Z

    .line 33
    iget-boolean v0, p0, Lcom/flurry/sdk/iv;->b:Z

    if-eqz v0, :cond_21

    .line 34
    iput-boolean v1, p0, Lcom/flurry/sdk/iv;->c:Z

    .line 38
    :goto_20
    return-void

    .line 36
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/iv;->c:Z

    goto :goto_20
.end method


# virtual methods
.method public final declared-synchronized b()[B
    .registers 6

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    .line 92
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_7e
    .catchall {:try_start_2 .. :try_end_c} :catchall_72

    .line 95
    :try_start_c
    iget v0, p0, Lcom/flurry/sdk/iv;->f:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/iv;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4f} :catch_50
    .catchall {:try_start_c .. :try_end_4f} :catchall_79

    goto :goto_29

    .line 110
    :catch_50
    move-exception v0

    move-object v1, v2

    :goto_52
    const/4 v0, 0x0

    :try_start_53
    new-array v0, v0, [B
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_7b

    .line 112
    :try_start_55
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6f

    .line 115
    :goto_58
    monitor-exit p0

    return-object v0

    .line 102
    :cond_5a
    :try_start_5a
    iget-wide v0, p0, Lcom/flurry/sdk/iv;->g:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/flurry/sdk/iv;->d:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 105
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 107
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6a} :catch_50
    .catchall {:try_start_5a .. :try_end_6a} :catchall_79

    move-result-object v0

    .line 112
    :try_start_6b
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_58

    .line 90
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :catchall_72
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_75
    :try_start_75
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_6f

    :catchall_79
    move-exception v0

    goto :goto_75

    :catchall_7b
    move-exception v0

    move-object v2, v1

    goto :goto_75

    .line 110
    :catch_7e
    move-exception v1

    move-object v1, v0

    goto :goto_52
.end method
