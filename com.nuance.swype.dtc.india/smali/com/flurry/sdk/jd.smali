.class public Lcom/flurry/sdk/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ki;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/sdk/jd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jd;
    .locals 3

    .prologue
    .line 29
    const-class v1, Lcom/flurry/sdk/jd;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/jd;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jr;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ki;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()J
    .locals 3

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    .line 90
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 1137
    iget-wide v0, v2, Lcom/flurry/sdk/jq;->c:J

    .line 95
    :cond_0
    return-wide v0
.end method

.method public static e()J
    .locals 3

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    .line 101
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 1141
    iget-wide v0, v2, Lcom/flurry/sdk/jq;->d:J

    .line 106
    :cond_0
    return-wide v0
.end method

.method public static f()J
    .locals 3

    .prologue
    .line 110
    const-wide/16 v0, -0x1

    .line 112
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_0

    .line 1145
    iget-wide v0, v2, Lcom/flurry/sdk/jq;->e:J

    .line 117
    :cond_0
    return-wide v0
.end method

.method public static g()J
    .locals 3

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    .line 123
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Lcom/flurry/sdk/jq;->c()J

    move-result-wide v0

    .line 128
    :cond_0
    return-wide v0
.end method

.method public static h()Lcom/flurry/sdk/jk$a;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jk;->c()Lcom/flurry/sdk/jk$a;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lcom/flurry/sdk/jq;
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lf;->c()Lcom/flurry/sdk/ld;

    move-result-object v0

    .line 1200
    if-nez v0, :cond_0

    .line 1201
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1204
    :cond_0
    const-class v1, Lcom/flurry/sdk/jq;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ld;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jq;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/flurry/sdk/jq;

    invoke-static {v0}, Lcom/flurry/sdk/ld;->a(Ljava/lang/Class;)V

    .line 43
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/jn;->a()Lcom/flurry/sdk/jn;

    .line 53
    invoke-static {}, Lcom/flurry/sdk/jh;->a()Lcom/flurry/sdk/jh;

    .line 54
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    .line 55
    return-void
.end method
