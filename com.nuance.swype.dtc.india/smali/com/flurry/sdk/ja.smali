.class public Lcom/flurry/sdk/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field static final a:Ljava/lang/String;

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I


# instance fields
.field private final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:I

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/it;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private final G:Lcom/flurry/sdk/hl;

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/ld;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/io/File;

.field i:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iy;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:B

.field n:Ljava/lang/Long;

.field o:Z

.field final p:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jf;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final t:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private u:J

.field private v:I

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iy;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
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

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/flurry/sdk/ja;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    .line 82
    const/16 v0, 0x64

    sput v0, Lcom/flurry/sdk/ja;->b:I

    .line 83
    const/16 v0, 0xa

    sput v0, Lcom/flurry/sdk/ja;->c:I

    .line 84
    const/16 v0, 0x3e8

    sput v0, Lcom/flurry/sdk/ja;->d:I

    .line 85
    const v0, 0x27100

    sput v0, Lcom/flurry/sdk/ja;->e:I

    .line 86
    const/16 v0, 0x32

    sput v0, Lcom/flurry/sdk/ja;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Lcom/flurry/sdk/ja$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ja$1;-><init>(Lcom/flurry/sdk/ja;)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->t:Lcom/flurry/sdk/ka;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/ja;->v:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->x:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    .line 169
    iput-boolean v2, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 170
    iput v1, p0, Lcom/flurry/sdk/ja;->C:I

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    .line 172
    iput v1, p0, Lcom/flurry/sdk/ja;->E:I

    .line 173
    iput v1, p0, Lcom/flurry/sdk/ja;->F:I

    .line 175
    iput-boolean v2, p0, Lcom/flurry/sdk/ja;->o:Z

    .line 184
    new-instance v0, Lcom/flurry/sdk/hl;

    invoke-direct {v0}, Lcom/flurry/sdk/hl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->G:Lcom/flurry/sdk/hl;

    .line 186
    new-instance v0, Lcom/flurry/sdk/ja$9;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ja$9;-><init>(Lcom/flurry/sdk/ja;)V

    iput-object v0, p0, Lcom/flurry/sdk/ja;->p:Lcom/flurry/sdk/ka;

    .line 201
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ja;->t:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 202
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ja;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/ja;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ja;ZJ)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ja;->a(ZJ)V

    return-void
.end method

.method private declared-synchronized a(ZJ)V
    .locals 20

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flurry/sdk/ja;->o:Z

    if-nez v2, :cond_1

    .line 884
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v4, "Analytics disabled, not sending agent report."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 888
    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 892
    :cond_2
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v4, "generating agent report"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    const/16 v19, 0x0

    .line 896
    :try_start_2
    new-instance v3, Lcom/flurry/sdk/iw;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 25101
    iget-object v4, v2, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 896
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jn;->i()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/flurry/sdk/ja;->j:Z

    .line 897
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/je;->d()Z

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/flurry/sdk/ja;->u:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    .line 898
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v2

    .line 25127
    iget-object v2, v2, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/ja;->G:Lcom/flurry/sdk/hl;

    invoke-virtual {v2}, Lcom/flurry/sdk/hl;->a()Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/sdk/ja;->x:Ljava/util/Map;

    .line 899
    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jt;->c()Ljava/util/HashMap;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v18}, Lcom/flurry/sdk/iw;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 25206
    iget-object v2, v3, Lcom/flurry/sdk/iw;->a:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    :goto_1
    if-nez v2, :cond_3

    .line 907
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26965
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v2}, Lcom/flurry/sdk/jy;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 902
    :catch_0
    move-exception v2

    .line 903
    :try_start_4
    sget-object v3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception while generating report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto :goto_1

    .line 909
    :cond_3
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    .line 910
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 909
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v3

    .line 26091
    iget-object v3, v3, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/ix;

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 915
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v5

    .line 26101
    iget-object v5, v5, Lcom/flurry/sdk/jr;->d:Ljava/lang/String;

    .line 32093
    if-eqz v2, :cond_4

    array-length v6, v2

    if-nez v6, :cond_5

    .line 32095
    :cond_4
    const/4 v2, 0x6

    iget-object v3, v3, Lcom/flurry/sdk/kr;->b:Ljava/lang/String;

    const-string/jumbo v4, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 32112
    :cond_5
    new-instance v6, Lcom/flurry/sdk/kr$3;

    invoke-direct {v6, v3, v2, v5, v4}, Lcom/flurry/sdk/kr$3;-><init>(Lcom/flurry/sdk/kr;[BLjava/lang/String;Ljava/lang/String;)V

    .line 33060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 32100
    invoke-virtual {v3}, Lcom/flurry/sdk/kr;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/flurry/sdk/ja;)Lcom/flurry/sdk/ka;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/ja;->t:Lcom/flurry/sdk/ka;

    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 9

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iv;

    .line 5041
    iget-boolean v2, v0, Lcom/flurry/sdk/iv;->b:Z

    .line 556
    if-eqz v2, :cond_0

    .line 5045
    iget-boolean v2, v0, Lcom/flurry/sdk/iv;->c:Z

    .line 556
    if-nez v2, :cond_0

    .line 29053
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/flurry/sdk/iv;->c:Z

    .line 29054
    iget-wide v2, v0, Lcom/flurry/sdk/iv;->g:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lcom/flurry/sdk/iv;->d:J

    .line 29055
    const/4 v2, 0x3

    const-string/jumbo v3, "FlurryAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Ended event \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/flurry/sdk/iv;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/flurry/sdk/iv;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/flurry/sdk/iv;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 560
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/ja;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->e()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/ja;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27978
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 28097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 27978
    const-string/jumbo v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27980
    const-string/jumbo v1, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/ja;->j:Z

    .line 27981
    const-string/jumbo v1, "com.flurry.sdk.initial_run_time"

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/ja;->u:J

    .line 79
    return-void
.end method

.method private declared-synchronized e()V
    .locals 6

    .prologue
    .line 928
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v2, "Loading persistent session report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 931
    if-eqz v0, :cond_1

    .line 932
    iget-object v1, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v2, "Legacy persistent agent data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/hn;->a(Ljava/io/File;)Lcom/flurry/sdk/jb;

    move-result-object v2

    .line 939
    if-eqz v2, :cond_3

    .line 27075
    iget-boolean v3, v2, Lcom/flurry/sdk/jb;->a:Z

    .line 27079
    iget-wide v0, v2, Lcom/flurry/sdk/jb;->b:J

    .line 944
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 945
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v0

    .line 948
    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/ja;->j:Z

    .line 949
    iput-wide v0, p0, Lcom/flurry/sdk/ja;->u:J

    .line 950
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->f()V

    .line 27083
    iget-object v0, v2, Lcom/flurry/sdk/jb;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_3

    .line 954
    iget-object v1, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 959
    invoke-virtual {p0}, Lcom/flurry/sdk/ja;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/ja;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/flurry/sdk/ja;->f()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/ja;)Ljava/util/List;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 985
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 27097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 985
    const-string/jumbo v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 988
    const-string/jumbo v1, "com.flurry.sdk.previous_successful_report"

    iget-boolean v2, p0, Lcom/flurry/sdk/ja;->j:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 989
    const-string/jumbo v1, "com.flurry.sdk.initial_run_time"

    iget-wide v2, p0, Lcom/flurry/sdk/ja;->u:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 990
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 991
    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/ja;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    return v0
.end method


# virtual methods
.method final declared-synchronized a(JJJI)Lcom/flurry/sdk/iy;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 570
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/sdk/iz;

    invoke-direct {v2}, Lcom/flurry/sdk/iz;-><init>()V

    .line 572
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jn;->i()Ljava/lang/String;

    move-result-object v0

    .line 6043
    iput-object v0, v2, Lcom/flurry/sdk/iz;->a:Ljava/lang/String;

    .line 6051
    iput-wide p1, v2, Lcom/flurry/sdk/iz;->b:J

    .line 6059
    iput-wide p3, v2, Lcom/flurry/sdk/iz;->c:J

    .line 6067
    iput-wide p5, v2, Lcom/flurry/sdk/iz;->d:J

    .line 576
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    .line 6075
    iput-object v0, v2, Lcom/flurry/sdk/iz;->e:Ljava/util/Map;

    .line 577
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 6150
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 6151
    if-eqz v0, :cond_1

    .line 6152
    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->d()Ljava/lang/String;

    move-result-object v0

    .line 7083
    :goto_0
    iput-object v0, v2, Lcom/flurry/sdk/iz;->f:Ljava/lang/String;

    .line 578
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 7165
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 7166
    if-eqz v0, :cond_2

    .line 7167
    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->e()Ljava/lang/String;

    move-result-object v0

    .line 8091
    :goto_1
    iput-object v0, v2, Lcom/flurry/sdk/iz;->g:Ljava/lang/String;

    .line 579
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 8180
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 8181
    if-eqz v0, :cond_3

    .line 8182
    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->f()Ljava/util/Map;

    move-result-object v0

    .line 9099
    :goto_2
    iput-object v0, v2, Lcom/flurry/sdk/iz;->h:Ljava/util/Map;

    .line 581
    invoke-static {}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    .line 30027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9107
    iput-object v0, v2, Lcom/flurry/sdk/iz;->i:Ljava/lang/String;

    .line 582
    invoke-static {}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    .line 10031
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 10115
    iput-object v0, v2, Lcom/flurry/sdk/iz;->j:Ljava/lang/String;

    .line 10123
    iput p7, v2, Lcom/flurry/sdk/iz;->k:I

    .line 584
    iget v0, p0, Lcom/flurry/sdk/ja;->v:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/flurry/sdk/ja;->v:I

    .line 10131
    :goto_3
    iput v0, v2, Lcom/flurry/sdk/iz;->l:I

    .line 11006
    iget-object v0, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    .line 11139
    :goto_4
    iput-object v0, v2, Lcom/flurry/sdk/iz;->m:Ljava/lang/String;

    .line 587
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ji;->e()Landroid/location/Location;

    move-result-object v0

    .line 11147
    iput-object v0, v2, Lcom/flurry/sdk/iz;->n:Landroid/location/Location;

    .line 12038
    iget v0, p0, Lcom/flurry/sdk/ja;->F:I

    .line 12155
    iput v0, v2, Lcom/flurry/sdk/iz;->o:I

    .line 590
    iget-byte v0, p0, Lcom/flurry/sdk/ja;->m:B

    .line 12163
    iput-byte v0, v2, Lcom/flurry/sdk/iz;->p:B

    .line 591
    iget-object v0, p0, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    .line 12171
    iput-object v0, v2, Lcom/flurry/sdk/iz;->q:Ljava/lang/Long;

    .line 13034
    iget-object v0, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    .line 13179
    iput-object v0, v2, Lcom/flurry/sdk/iz;->r:Ljava/util/Map;

    .line 14022
    iget-object v0, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    .line 14187
    iput-object v0, v2, Lcom/flurry/sdk/iz;->s:Ljava/util/List;

    .line 595
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 14195
    iput-boolean v0, v2, Lcom/flurry/sdk/iz;->t:Z

    .line 15030
    iget-object v0, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    .line 15211
    iput-object v0, v2, Lcom/flurry/sdk/iz;->v:Ljava/util/List;

    .line 598
    iget v0, p0, Lcom/flurry/sdk/ja;->E:I

    .line 16203
    iput v0, v2, Lcom/flurry/sdk/iz;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/iy;

    invoke-direct {v0, v2}, Lcom/flurry/sdk/iy;-><init>(Lcom/flurry/sdk/iz;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :goto_5
    if-nez v0, :cond_0

    .line 611
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v2, "New session report wasn\'t created"

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 6154
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 7169
    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 8184
    goto/16 :goto_2

    .line 584
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/lp;->e()I

    move-result v0

    goto :goto_3

    .line 11006
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    goto :goto_4

    .line 606
    :catch_0
    move-exception v0

    .line 607
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error creating analytics session report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_5

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lp;->e()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ja;->v:I

    .line 292
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/ih;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$15;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$15;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$16;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$16;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_1
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ja;->p:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/ka;)V

    .line 370
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$5;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 398
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/ja$6;-><init>(Lcom/flurry/sdk/ja;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 407
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 409
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 411
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z

    .line 412
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/li;->b(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 468
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 469
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 471
    if-eqz v2, :cond_2

    .line 472
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Launch Options Bundle is present "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/ja;->x:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ". Its value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    const-string/jumbo v1, "null"

    goto :goto_1

    .line 488
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 418
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 440
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_1
    return-void

    .line 418
    :sswitch_0
    const-string/jumbo v2, "LogEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "UserId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "Gender"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "Age"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "analyticsEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 420
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ja;->k:Z

    .line 421
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, LogEvents = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/ja;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    .line 425
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, UserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ja;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/ja;->m:B

    .line 429
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, Gender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/flurry/sdk/ja;->m:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 432
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    .line 433
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, Birthdate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ja;->n:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 436
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    .line 437
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/ja;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_1
        -0x66855b25 -> :sswitch_4
        -0x2bfdf2a3 -> :sswitch_0
        0x100df -> :sswitch_3
        0x7eeadee1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 761
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 763
    :goto_0
    iget v2, p0, Lcom/flurry/sdk/ja;->E:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/ja;->E:I

    .line 764
    iget-object v2, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/flurry/sdk/ja;->f:I

    if-ge v2, v3, :cond_2

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 766
    new-instance v0, Lcom/flurry/sdk/it;

    .line 21998
    iget-object v1, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 766
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/it;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    iget-object v1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error logged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22125
    iget-object v0, v0, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    .line 770
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 761
    goto :goto_0

    .line 771
    :cond_2
    if-eqz v1, :cond_4

    move v8, v0

    .line 774
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/it;

    .line 23125
    iget-object v1, v0, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    .line 776
    if-eqz v1, :cond_3

    const-string/jumbo v1, "uncaught"

    .line 24125
    iget-object v0, v0, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    .line 777
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 779
    new-instance v0, Lcom/flurry/sdk/it;

    .line 24998
    iget-object v1, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 779
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/it;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    iget-object v1, p0, Lcom/flurry/sdk/ja;->D:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 774
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 786
    :cond_4
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final a(Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 493
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v3, "boot.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 500
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_3

    .line 501
    iget-object v4, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v4, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v3, "carrier.name"

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    invoke-static {}, Lcom/flurry/sdk/jl;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v3, "carrier.details"

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    invoke-static {}, Lcom/flurry/sdk/jl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 520
    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 521
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 522
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 524
    iget-object v4, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "memory.available"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string/jumbo v0, ".start"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    .line 526
    iget-object v4, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "memory.total"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string/jumbo v0, ".start"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v3

    .line 4097
    iget-object v3, v3, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 535
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 537
    if-eqz v4, :cond_9

    .line 538
    const-string/jumbo v0, "status"

    const/4 v3, -0x1

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 539
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v8, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 541
    :goto_3
    :try_start_1
    const-string/jumbo v1, "level"

    const/4 v3, -0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 542
    :try_start_2
    const-string/jumbo v1, "scale"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    move v2, v3

    .line 549
    :goto_4
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 550
    iget-object v3, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "battery.charging"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const-string/jumbo v1, ".start"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "battery.remaining"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string/jumbo v0, ".start"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void

    .line 507
    :cond_3
    iget-object v4, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v4, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/flurry/sdk/ja;->y:Ljava/util/Map;

    const-string/jumbo v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 524
    :cond_4
    const-string/jumbo v0, ".end"

    goto/16 :goto_1

    .line 526
    :cond_5
    const-string/jumbo v0, ".end"

    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 539
    goto/16 :goto_3

    .line 545
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    .line 546
    :goto_7
    sget-object v4, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error getting battery status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v4, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_4

    .line 550
    :cond_7
    const-string/jumbo v1, ".end"

    goto/16 :goto_5

    .line 551
    :cond_8
    const-string/jumbo v0, ".end"

    goto/16 :goto_6

    .line 545
    :catch_1
    move-exception v1

    move-object v3, v1

    move v1, v2

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_7

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method public final declared-synchronized a$7a1fda5(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 640
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    if-nez v0, :cond_1

    .line 641
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 642
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v2, "Analytics has been disabled, not logging event."

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 646
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->e()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 648
    invoke-static {p1}, Lcom/flurry/sdk/lr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 650
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iu;

    .line 654
    if-nez v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v3, Lcom/flurry/sdk/ja;->b:I

    if-ge v0, v3, :cond_3

    .line 656
    new-instance v0, Lcom/flurry/sdk/iu;

    invoke-direct {v0}, Lcom/flurry/sdk/iu;-><init>()V

    .line 657
    const/4 v3, 0x1

    iput v3, v0, Lcom/flurry/sdk/iu;->a:I

    .line 658
    iget-object v3, p0, Lcom/flurry/sdk/ja;->z:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Event count started: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 671
    :goto_1
    iget-boolean v1, p0, Lcom/flurry/sdk/ja;->k:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/ja;->d:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/flurry/sdk/ja;->C:I

    sget v3, Lcom/flurry/sdk/ja;->e:I

    if-ge v1, v3, :cond_7

    .line 672
    if-nez p2, :cond_8

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 675
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/ja;->c:I

    if-le v0, v1, :cond_5

    .line 676
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MaxEventParams exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_0

    .line 661
    :cond_3
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Too many different events. Event not counted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 666
    :cond_4
    iget v1, v0, Lcom/flurry/sdk/iu;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/sdk/iu;->a:I

    .line 667
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Event count incremented: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 680
    :cond_5
    new-instance v0, Lcom/flurry/sdk/iv;

    .line 16994
    iget-object v1, p0, Lcom/flurry/sdk/ja;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 680
    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/iv;-><init>(ILjava/lang/String;Ljava/util/Map;J)V

    .line 17076
    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object v1

    array-length v1, v1

    .line 683
    iget v4, p0, Lcom/flurry/sdk/ja;->C:I

    add-int/2addr v1, v4

    sget v4, Lcom/flurry/sdk/ja;->e:I

    if-gt v1, v4, :cond_6

    .line 684
    iget-object v1, p0, Lcom/flurry/sdk/ja;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    iget v1, p0, Lcom/flurry/sdk/ja;->C:I

    .line 18076
    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->b()[B

    move-result-object v0

    array-length v0, v0

    .line 685
    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/ja;->C:I

    .line 686
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 692
    iget-boolean v1, p0, Lcom/flurry/sdk/ja;->o:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v1

    .line 18087
    iget-object v1, v1, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 692
    if-eqz v1, :cond_0

    .line 693
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    new-instance v4, Lcom/flurry/sdk/ja$7;

    invoke-direct {v4, p0, v2, v3}, Lcom/flurry/sdk/ja$7;-><init>(Lcom/flurry/sdk/ja;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 702
    :cond_6
    :try_start_2
    sget v0, Lcom/flurry/sdk/ja;->e:I

    iput v0, p0, Lcom/flurry/sdk/ja;->C:I

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ja;->B:Z

    .line 705
    sget-object v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_0

    .line 712
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/ja;->B:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v3, p2

    goto/16 :goto_2
.end method

.method public final declared-synchronized b()V
    .locals 10

    .prologue
    .line 314
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ja;->a(Z)V

    .line 317
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    .line 318
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->f()J

    move-result-wide v4

    .line 319
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 2132
    const-wide/16 v6, 0x0

    .line 2134
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 2135
    if-eqz v0, :cond_0

    .line 2149
    iget-wide v6, v0, Lcom/flurry/sdk/jq;->f:J

    .line 320
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->h()Lcom/flurry/sdk/jk$a;

    move-result-object v0

    .line 3063
    iget v8, v0, Lcom/flurry/sdk/jk$a;->e:I

    .line 322
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/ja;->b(J)V

    .line 325
    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    .line 3087
    iget-object v0, v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/if;

    .line 325
    if-eqz v0, :cond_1

    .line 326
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/sdk/ja$2;-><init>(Lcom/flurry/sdk/ja;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 335
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ja$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ja$3;-><init>(Lcom/flurry/sdk/ja;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 344
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v9

    new-instance v0, Lcom/flurry/sdk/ja$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/ja$4;-><init>(Lcom/flurry/sdk/ja;JJJI)V

    invoke-virtual {v9, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_2
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 922
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string/jumbo v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/flurry/sdk/ja;->i:Lcom/flurry/sdk/jy;

    iget-object v1, p0, Lcom/flurry/sdk/ja;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
