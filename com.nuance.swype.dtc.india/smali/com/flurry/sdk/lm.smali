.class public final Lcom/flurry/sdk/lm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Lcom/flurry/sdk/lm;


# instance fields
.field private final c:Lcom/flurry/sdk/ln;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/flurry/sdk/lm;->a:J

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/flurry/sdk/ln;

    invoke-direct {v0}, Lcom/flurry/sdk/ln;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    sget-wide v2, Lcom/flurry/sdk/lm;->a:J

    .line 1034
    iput-wide v2, v0, Lcom/flurry/sdk/ln;->a:J

    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    .line 1038
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/ln;->b:Z

    .line 33
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lm;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/flurry/sdk/lm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/flurry/sdk/lm;

    invoke-direct {v0}, Lcom/flurry/sdk/lm;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;

    .line 20
    :cond_0
    sget-object v0, Lcom/flurry/sdk/lm;->b:Lcom/flurry/sdk/lm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/ka;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/ll;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 37
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    invoke-virtual {v0}, Lcom/flurry/sdk/ln;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/ka;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/ll;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 44
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.TickEvent"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/lm;->c:Lcom/flurry/sdk/ln;

    invoke-virtual {v0}, Lcom/flurry/sdk/ln;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
