.class public Lcom/flurry/sdk/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static b:Lcom/flurry/sdk/lf;

.field private static final c:Ljava/lang/String;


# instance fields
.field public a:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/ld;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/lg;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private h:Lcom/flurry/sdk/ld;

.field private i:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/lh;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/flurry/sdk/lf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/flurry/sdk/lg;

    invoke-direct {v0}, Lcom/flurry/sdk/lg;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->e:Lcom/flurry/sdk/lg;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/flurry/sdk/lf$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$1;-><init>(Lcom/flurry/sdk/lf;)V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->i:Lcom/flurry/sdk/ka;

    .line 67
    new-instance v0, Lcom/flurry/sdk/lf$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lf$2;-><init>(Lcom/flurry/sdk/lf;)V

    iput-object v0, p0, Lcom/flurry/sdk/lf;->j:Lcom/flurry/sdk/ka;

    .line 103
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    .line 105
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/flurry/sdk/lf;->a:J

    .line 106
    const-string/jumbo v0, "ContinueSessionMillis"

    .line 107
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/lf;->g:J

    .line 108
    const-string/jumbo v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 109
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initSettings, ContinueSessionMillis = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/flurry/sdk/lf;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.ActivityLifecycleEvent"

    iget-object v2, p0, Lcom/flurry/sdk/lf;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 113
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionTimerEvent"

    iget-object v2, p0, Lcom/flurry/sdk/lf;->i:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 114
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lf;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/flurry/sdk/lf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/flurry/sdk/lf;

    invoke-direct {v0}, Lcom/flurry/sdk/lf;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;

    .line 33
    :cond_0
    sget-object v0, Lcom/flurry/sdk/lf;->b:Lcom/flurry/sdk/lf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/lf;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->h()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lf;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/lf;Lcom/flurry/sdk/ld;)V
    .locals 2

    .prologue
    .line 25
    .line 1141
    iget-object v1, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    if-ne v0, p1, :cond_0

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    .line 1145
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ld;

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Session already started with context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session already started with context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/lf;->e:Lcom/flurry/sdk/lg;

    invoke-virtual {v0}, Lcom/flurry/sdk/lg;->a()V

    .line 232
    invoke-virtual {p0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    .line 234
    if-nez v0, :cond_2

    .line 235
    new-instance v0, Lcom/flurry/sdk/ld;

    invoke-direct {v0}, Lcom/flurry/sdk/ld;-><init>()V

    .line 237
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Flurry session started for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 240
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 241
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 242
    sget v2, Lcom/flurry/sdk/le$a;->a:I

    iput v2, v1, Lcom/flurry/sdk/le;->c:I

    .line 243
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-object v1, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1136
    :try_start_3
    iput-object v0, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    .line 1137
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    :try_start_4
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Flurry session resumed for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 252
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 253
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 254
    sget v0, Lcom/flurry/sdk/le$a;->c:I

    iput v0, v1, Lcom/flurry/sdk/le;->c:I

    .line 255
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->a:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1137
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()I
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 5

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->g()I

    move-result v0

    .line 296
    if-lez v0, :cond_0

    .line 297
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Session cannot be finalized, sessionContextCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    .line 303
    if-nez v0, :cond_1

    .line 304
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string/jumbo v2, "Session cannot be finalized, current session not found"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string/jumbo v2, "Flurry session ended"

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 311
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 312
    sget v2, Lcom/flurry/sdk/le$a;->e:I

    iput v2, v1, Lcom/flurry/sdk/le;->c:I

    .line 313
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/le;->d:J

    .line 314
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 318
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/lf$4;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/lf$4;-><init>(Lcom/flurry/sdk/lf;Lcom/flurry/sdk/ld;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bootstrap for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lf;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 328
    const-string/jumbo v0, "ContinueSessionMillis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->g:J

    .line 330
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, ContinueSessionMillis = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/flurry/sdk/lf;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    const-string/jumbo v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Manual onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/flurry/sdk/lf;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/flurry/sdk/ld;
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/flurry/sdk/lf;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->h:Lcom/flurry/sdk/ld;

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Manual onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/lf;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ld;

    .line 265
    if-nez v0, :cond_1

    .line 266
    invoke-static {}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Session cannot be ended, session not found for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session cannot be ended, session not found for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 275
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Flurry session paused for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v1, Lcom/flurry/sdk/le;

    invoke-direct {v1}, Lcom/flurry/sdk/le;-><init>()V

    .line 278
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 279
    iput-object v0, v1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 280
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/le;->d:J

    .line 281
    sget v0, Lcom/flurry/sdk/le$a;->d:I

    iput v0, v1, Lcom/flurry/sdk/le;->c:I

    .line 282
    invoke-virtual {v1}, Lcom/flurry/sdk/le;->b()V

    .line 286
    invoke-direct {p0}, Lcom/flurry/sdk/lf;->g()I

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/flurry/sdk/lf;->e:Lcom/flurry/sdk/lg;

    iget-wide v2, p0, Lcom/flurry/sdk/lf;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/lg;->a(J)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->a:J

    goto :goto_0

    .line 290
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/lf;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized e()V
    .locals 6

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    new-instance v2, Lcom/flurry/sdk/le;

    invoke-direct {v2}, Lcom/flurry/sdk/le;-><init>()V

    .line 199
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ld;

    iput-object v0, v2, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 201
    sget v0, Lcom/flurry/sdk/le$a;->d:I

    iput v0, v2, Lcom/flurry/sdk/le;->c:I

    .line 202
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/flurry/sdk/le;->d:J

    .line 203
    invoke-virtual {v2}, Lcom/flurry/sdk/le;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/lf;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/lf$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/lf$3;-><init>(Lcom/flurry/sdk/lf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return-void
.end method
