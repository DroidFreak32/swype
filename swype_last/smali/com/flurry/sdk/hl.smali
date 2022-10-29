.class public Lcom/flurry/sdk/hl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private final c:Lcom/flurry/sdk/hm;

.field private final d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/hl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 26
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hl;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/flurry/sdk/hm;

    invoke-direct {v0}, Lcom/flurry/sdk/hm;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hl;->c:Lcom/flurry/sdk/hm;

    .line 31
    const-string/jumbo v0, ".flurryinstallreceiver."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hl;->d:Ljava/io/File;

    .line 32
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/hl;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Referrer file name if it exists:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/hl;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    if-nez p1, :cond_3

    .line 77
    :goto_2
    return-void

    .line 76
    :cond_3
    iput-object p1, p0, Lcom/flurry/sdk/hl;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method private c()V
    .registers 5

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/flurry/sdk/hl;->a:Z

    if-eqz v0, :cond_5

    .line 92
    :goto_4
    return-void

    .line 85
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/hl;->a:Z

    .line 87
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/hl;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Loading referrer info from file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/hl;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/hl;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/lq;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/flurry/sdk/hl;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Referrer file contents: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/flurry/sdk/hl;->b(Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/hl;->c()V

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/hl;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/hm;->a(Ljava/lang/String;)Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    .line 52
    monitor-exit p0

    return-object v0

    .line 45
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/flurry/sdk/hl;->a:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/flurry/sdk/hl;->b(Ljava/lang/String;)V

    .line 2096
    iget-object v0, p0, Lcom/flurry/sdk/hl;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/flurry/sdk/hl;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/sdk/lq;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 69
    monitor-exit p0

    return-void

    .line 65
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/hl;->c()V

    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/hl;->e:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
