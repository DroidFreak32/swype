.class public abstract Lcom/flurry/sdk/kq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReportInfo:",
        "Lcom/flurry/sdk/kp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field public static b:J


# instance fields
.field public c:Z

.field public d:J

.field private final e:I

.field private final f:Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jy",
            "<",
            "Ljava/util/List",
            "<TReportInfo;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TReportInfo;>;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/lang/Runnable;

.field private final j:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/jj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/kq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/sdk/kq;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flurry/sdk/kq;->e:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/flurry/sdk/kq$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$1;-><init>(Lcom/flurry/sdk/kq;)V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->i:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/flurry/sdk/kq$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/kq$2;-><init>(Lcom/flurry/sdk/kq;)V

    iput-object v0, p0, Lcom/flurry/sdk/kq;->j:Lcom/flurry/sdk/ka;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/kq;->j:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 54
    invoke-virtual {p0}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/kq;->f:Lcom/flurry/sdk/jy;

    .line 56
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kq;->h:I

    .line 60
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$3;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/kq;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->b()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/kq;)Ljava/util/List;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 4

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/kq;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 161
    :goto_5
    monitor-exit p0

    return-void

    .line 140
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/flurry/sdk/kq;->h:I

    if-ltz v0, :cond_18

    .line 141
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string/jumbo v2, "Transmit is in progress"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 135
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->g()V

    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 148
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kq;->h:I

    goto :goto_5

    .line 154
    :cond_2b
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/kq;->h:I

    .line 155
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$8;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_15

    goto :goto_5
.end method

.method static synthetic c(Lcom/flurry/sdk/kq;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->e()V

    return-void
.end method

.method private declared-synchronized e()V
    .registers 5

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 166
    const/4 v1, 0x0

    .line 169
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 2079
    iget-boolean v0, v0, Lcom/flurry/sdk/jk;->b:Z

    .line 169
    if-eqz v0, :cond_30

    .line 170
    :cond_d
    iget v0, p0, Lcom/flurry/sdk/kq;->h:I

    iget-object v2, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 171
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    iget v2, p0, Lcom/flurry/sdk/kq;->h:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/sdk/kq;->h:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kp;

    .line 3022
    iget-boolean v2, v0, Lcom/flurry/sdk/kp;->o:Z

    .line 172
    if-nez v2, :cond_d

    .line 182
    :goto_29
    if-nez v0, :cond_3b

    .line 183
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->f()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_3f

    .line 187
    :goto_2e
    monitor-exit p0

    return-void

    .line 178
    :cond_30
    const/4 v0, 0x3

    :try_start_31
    sget-object v2, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string/jumbo v3, "Network is not available, aborting transmission"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_39
    move-object v0, v1

    goto :goto_29

    .line 185
    :cond_3b
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/kp;)V
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3f

    goto :goto_2e

    .line 164
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 7

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/kq;->g()V

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/kq;->a(Ljava/util/List;)V

    .line 194
    iget-boolean v0, p0, Lcom/flurry/sdk/kq;->c:Z

    if-eqz v0, :cond_1f

    .line 195
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string/jumbo v2, "Reporter paused"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    .line 211
    :goto_1a
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/kq;->h:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_35

    .line 212
    monitor-exit p0

    return-void

    .line 198
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 199
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    const-string/jumbo v2, "All reports sent successfully"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_35

    goto :goto_1a

    .line 191
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_38
    :try_start_38
    iget-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    .line 206
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "One or more reports failed to send, backing off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/flurry/sdk/kq;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/kq;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/flurry/sdk/kq;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Runnable;J)V
    :try_end_68
    .catchall {:try_start_38 .. :try_end_68} :catchall_35

    goto :goto_1a
.end method

.method private declared-synchronized g()V
    .registers 7

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kp;

    .line 4022
    iget-boolean v2, v0, Lcom/flurry/sdk/kp;->o:Z

    .line 235
    if-eqz v2, :cond_43

    .line 236
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Url transmitted - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4030
    iget-object v5, v0, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5026
    iget v0, v0, Lcom/flurry/sdk/kp;->p:I

    .line 236
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_40

    goto :goto_7

    .line 231
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6026
    :cond_43
    :try_start_43
    iget v2, v0, Lcom/flurry/sdk/kp;->p:I

    .line 9034
    iget v3, v0, Lcom/flurry/sdk/kp;->s:I

    .line 238
    if-le v2, v3, :cond_72

    .line 239
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exceeded max no of attempts - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6030
    iget-object v5, v0, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7026
    iget v0, v0, Lcom/flurry/sdk/kp;->p:I

    .line 239
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 241
    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8018
    iget-wide v4, v0, Lcom/flurry/sdk/kp;->n:J

    .line 241
    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 8026
    iget v2, v0, Lcom/flurry/sdk/kp;->p:I

    .line 241
    if-lez v2, :cond_7

    .line 242
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/kq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Expired: Time expired - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8030
    iget-object v5, v0, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 9026
    iget v0, v0, Lcom/flurry/sdk/kp;->p:I

    .line 242
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_a8
    .catchall {:try_start_43 .. :try_end_a8} :catchall_40

    goto/16 :goto_7

    .line 246
    :cond_aa
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/flurry/sdk/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jy",
            "<",
            "Ljava/util/List",
            "<TReportInfo;>;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/kp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    iget-object v1, p0, Lcom/flurry/sdk/kq;->f:Lcom/flurry/sdk/jy;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 228
    monitor-exit p0

    return-void

    .line 224
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/kp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    if-nez p1, :cond_5

    .line 109
    :goto_3
    monitor-exit p0

    return-void

    .line 100
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/flurry/sdk/kq;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$5;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_3

    .line 96
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TReportInfo;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 217
    iget-object v0, p0, Lcom/flurry/sdk/kq;->f:Lcom/flurry/sdk/jy;

    invoke-virtual {v0}, Lcom/flurry/sdk/jy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    if-eqz v0, :cond_11

    .line 219
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 221
    :cond_11
    monitor-exit p0

    return-void

    .line 215
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/flurry/sdk/kp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    .line 2046
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p1, Lcom/flurry/sdk/kp;->o:Z

    .line 114
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$6;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 120
    monitor-exit p0

    return-void

    .line 112
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lcom/flurry/sdk/kp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReportInfo;)V"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/flurry/sdk/kp;->a_()V

    .line 125
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/kq$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kq$7;-><init>(Lcom/flurry/sdk/kq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 131
    monitor-exit p0

    return-void

    .line 123
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
