.class public Lcom/flurry/sdk/ih;
.super Lcom/flurry/sdk/kq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/kq",
        "<",
        "Lcom/flurry/sdk/ii;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/ih;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/flurry/sdk/kq;-><init>()V

    .line 1070
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/flurry/sdk/kq;->b:J

    .line 1071
    sget-wide v0, Lcom/flurry/sdk/kq;->b:J

    iput-wide v0, p0, Lcom/flurry/sdk/kq;->d:J

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V
    .registers 4

    .prologue
    .line 19238
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/ij;)V

    .line 19240
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/kl;)V
    .registers 10

    .prologue
    const/4 v5, 0x3

    .line 23193
    const/4 v0, 0x0

    .line 23195
    const-string/jumbo v1, "Location"

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 23196
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 23197
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24030
    iget-object v1, p2, Lcom/flurry/sdk/kp;->q:Ljava/lang/String;

    .line 23197
    invoke-static {v0, v1}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23200
    :cond_1e
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z

    move-result v1

    .line 23202
    if-eqz v1, :cond_61

    .line 23203
    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Received redirect url. Retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 23210
    :goto_3d
    if-eqz v1, :cond_6a

    .line 24067
    iput-object v0, p2, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 24134
    iput-object v0, p3, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    .line 23213
    const-string/jumbo v0, "Location"

    .line 24267
    iget-object v1, p3, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    if-eqz v1, :cond_59

    iget-object v1, p3, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    .line 25108
    iget-object v1, v1, Lcom/flurry/sdk/jw;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 24267
    if-eqz v1, :cond_59

    .line 24268
    iget-object v1, p3, Lcom/flurry/sdk/kn;->q:Lcom/flurry/sdk/jw;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;)Z

    .line 23214
    :cond_59
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    :goto_60
    return-void

    .line 23206
    :cond_61
    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    const-string/jumbo v3, "Received redirect url. Retrying: false"

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 23217
    :cond_6a
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    goto :goto_60
.end method

.method static synthetic a(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 20224
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/ij;Ljava/lang/String;)Z

    move-result v0

    .line 20226
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed report retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 20228
    if-eqz v0, :cond_24

    .line 20229
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->d(Lcom/flurry/sdk/kp;)V

    :goto_23
    return-void

    .line 20232
    :cond_24
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    goto :goto_23
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ii;)V
    .registers 7

    .prologue
    .line 21184
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22124
    iget-object v3, p2, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 23084
    iget-object v3, v3, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 21184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " report sent successfully to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23116
    iget-object v3, p2, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 21184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 21186
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/il;->a(Lcom/flurry/sdk/ij;)V

    .line 21187
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ih;->c(Lcom/flurry/sdk/kp;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Lcom/flurry/sdk/jy;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jy",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ii;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/flurry/sdk/jy;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 1097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 40
    const-string/jumbo v2, ".yflurryanpulsecallbackreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, ".yflurryanpulsecallbackreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/ih$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/ih$1;-><init>(Lcom/flurry/sdk/ih;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jy;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lc;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/flurry/sdk/kp;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 24
    move-object v1, p1

    check-cast v1, Lcom/flurry/sdk/ii;

    .line 4050
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending next pulse report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5116
    iget-object v4, v1, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 4050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6038
    iget-object v4, v1, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 4051
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4050
    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->d()J

    move-result-wide v2

    .line 4056
    cmp-long v0, v2, v8

    if-nez v0, :cond_38

    .line 4057
    sget-wide v2, Lcom/flurry/sdk/ih;->a:J

    .line 4060
    :cond_38
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jd;->g()J

    move-result-wide v4

    .line 4063
    cmp-long v0, v4, v8

    if-nez v0, :cond_48

    .line 4064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 7026
    :cond_48
    iget v6, v1, Lcom/flurry/sdk/kp;->p:I

    .line 4070
    new-instance v0, Lcom/flurry/sdk/ij;

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ij;-><init>(Lcom/flurry/sdk/ii;JJI)V

    .line 4074
    new-instance v4, Lcom/flurry/sdk/kl;

    invoke-direct {v4}, Lcom/flurry/sdk/kl;-><init>()V

    .line 7038
    iget-object v2, v1, Lcom/flurry/sdk/kp;->r:Ljava/lang/String;

    .line 7134
    iput-object v2, v4, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    .line 8029
    const v2, 0x186a0

    iput v2, v4, Lcom/flurry/sdk/lx;->w:I

    .line 8108
    iget-object v2, v1, Lcom/flurry/sdk/ii;->e:Lcom/flurry/sdk/ip;

    .line 4079
    sget-object v3, Lcom/flurry/sdk/ip;->c:Lcom/flurry/sdk/ip;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ip;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 4080
    new-instance v2, Lcom/flurry/sdk/kv;

    invoke-direct {v2}, Lcom/flurry/sdk/kv;-><init>()V

    .line 9040
    iput-object v2, v4, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 9122
    iget-object v2, v1, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    .line 4082
    if-eqz v2, :cond_7a

    .line 10122
    iget-object v2, v1, Lcom/flurry/sdk/ii;->j:Ljava/lang/String;

    .line 4083
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 11036
    iput-object v2, v4, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 4087
    :cond_7a
    sget-object v2, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 11142
    iput-object v2, v4, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    .line 13118
    :goto_7e
    iget v2, v1, Lcom/flurry/sdk/ii;->h:I

    .line 4095
    mul-int/lit16 v2, v2, 0x3e8

    .line 13152
    iput v2, v4, Lcom/flurry/sdk/kn;->h:I

    .line 14120
    iget v2, v1, Lcom/flurry/sdk/ii;->i:I

    .line 4097
    mul-int/lit16 v2, v2, 0x3e8

    .line 14158
    iput v2, v4, Lcom/flurry/sdk/kn;->i:I

    .line 14193
    iput-boolean v7, v4, Lcom/flurry/sdk/kn;->l:Z

    .line 15162
    iput-boolean v7, v4, Lcom/flurry/sdk/kn;->r:Z

    .line 16118
    iget v2, v1, Lcom/flurry/sdk/ii;->h:I

    .line 16120
    iget v3, v1, Lcom/flurry/sdk/ii;->i:I

    .line 4104
    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    .line 16170
    iput v2, v4, Lcom/flurry/sdk/kn;->s:I

    .line 17114
    iget-object v5, v1, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    .line 4108
    if-eqz v5, :cond_c0

    .line 18114
    iget-object v2, v1, Lcom/flurry/sdk/ii;->f:Ljava/util/Map;

    .line 4109
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4111
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4112
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    .line 4091
    :cond_bb
    sget-object v2, Lcom/flurry/sdk/kn$a;->b:Lcom/flurry/sdk/kn$a;

    .line 12142
    iput-object v2, v4, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    goto :goto_7e

    .line 18191
    :cond_c0
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/flurry/sdk/kn;->j:Z

    .line 4118
    new-instance v2, Lcom/flurry/sdk/ih$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/flurry/sdk/ih$2;-><init>(Lcom/flurry/sdk/ih;Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ij;)V

    .line 19048
    iput-object v2, v4, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 4178
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    .line 24
    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ii;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/il;->d()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 247
    monitor-exit p0

    return-void

    .line 246
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ii;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    invoke-static {}, Lcom/flurry/sdk/il;->e()Ljava/util/List;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4b

    move-result-object v0

    .line 254
    if-nez v0, :cond_c

    .line 279
    :cond_a
    monitor-exit p0

    return-void

    .line 257
    :cond_c
    :try_start_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_a

    .line 260
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Restoring "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from report queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 263
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/il;->b(Lcom/flurry/sdk/im;)V
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4b

    goto :goto_37

    .line 252
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_4e
    :try_start_4e
    invoke-static {}, Lcom/flurry/sdk/il;->a()Lcom/flurry/sdk/il;

    invoke-static {}, Lcom/flurry/sdk/il;->c()Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/im;

    .line 271
    invoke-virtual {v0}, Lcom/flurry/sdk/im;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6d
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ii;

    .line 1127
    iget-boolean v3, v0, Lcom/flurry/sdk/ii;->l:Z

    .line 272
    if-nez v3, :cond_6d

    .line 273
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/ih;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Callback for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2124
    iget-object v6, v0, Lcom/flurry/sdk/ii;->m:Lcom/flurry/sdk/im;

    .line 3084
    iget-object v6, v6, Lcom/flurry/sdk/im;->c:Ljava/lang/String;

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3116
    iget-object v6, v0, Lcom/flurry/sdk/ii;->k:Ljava/lang/String;

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catchall {:try_start_4e .. :try_end_ae} :catchall_4b

    goto :goto_6d
.end method
