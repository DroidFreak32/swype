.class public final Lcom/flurry/sdk/li;
.super Lcom/flurry/sdk/lj;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field public static final p:Ljava/lang/Boolean;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/Boolean;

.field private static s:Lcom/flurry/sdk/li;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    const/16 v0, 0xe2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->a:Ljava/lang/Integer;

    .line 64
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->b:Ljava/lang/Integer;

    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->c:Ljava/lang/Integer;

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->d:Ljava/lang/Integer;

    .line 69
    sput-object v3, Lcom/flurry/sdk/li;->e:Ljava/lang/String;

    .line 70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->f:Ljava/lang/Boolean;

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->g:Ljava/lang/Boolean;

    .line 72
    sput-object v3, Lcom/flurry/sdk/li;->h:Ljava/lang/String;

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->i:Ljava/lang/Boolean;

    .line 74
    sput-object v3, Lcom/flurry/sdk/li;->j:Landroid/location/Criteria;

    .line 75
    sput-object v3, Lcom/flurry/sdk/li;->k:Landroid/location/Location;

    .line 76
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->l:Ljava/lang/Long;

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->m:Ljava/lang/Boolean;

    .line 78
    sput-object v3, Lcom/flurry/sdk/li;->n:Ljava/lang/Long;

    .line 79
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->o:Ljava/lang/Byte;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->p:Ljava/lang/Boolean;

    .line 83
    sput-object v3, Lcom/flurry/sdk/li;->q:Ljava/lang/String;

    .line 84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/li;->r:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/flurry/sdk/lj;-><init>()V

    .line 1091
    const-string/jumbo v0, "AgentVersion"

    sget-object v1, Lcom/flurry/sdk/li;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1092
    const-string/jumbo v0, "ReleaseMajorVersion"

    sget-object v1, Lcom/flurry/sdk/li;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1093
    const-string/jumbo v0, "ReleaseMinorVersion"

    sget-object v1, Lcom/flurry/sdk/li;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1094
    const-string/jumbo v0, "ReleasePatchVersion"

    sget-object v1, Lcom/flurry/sdk/li;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    const-string/jumbo v0, "ReleaseBetaVersion"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    const-string/jumbo v0, "VersionName"

    sget-object v1, Lcom/flurry/sdk/li;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    const-string/jumbo v0, "CaptureUncaughtExceptions"

    sget-object v1, Lcom/flurry/sdk/li;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    const-string/jumbo v0, "UseHttps"

    sget-object v1, Lcom/flurry/sdk/li;->g:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    const-string/jumbo v0, "ReportUrl"

    sget-object v1, Lcom/flurry/sdk/li;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    const-string/jumbo v0, "ReportLocation"

    sget-object v1, Lcom/flurry/sdk/li;->i:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1105
    const-string/jumbo v0, "ExplicitLocation"

    sget-object v1, Lcom/flurry/sdk/li;->k:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1107
    const-string/jumbo v0, "ContinueSessionMillis"

    sget-object v1, Lcom/flurry/sdk/li;->l:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    const-string/jumbo v0, "LogEvents"

    sget-object v1, Lcom/flurry/sdk/li;->m:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1109
    const-string/jumbo v0, "Age"

    sget-object v1, Lcom/flurry/sdk/li;->n:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    const-string/jumbo v0, "Gender"

    sget-object v1, Lcom/flurry/sdk/li;->o:Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    const-string/jumbo v0, "UserId"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string/jumbo v0, "ProtonEnabled"

    sget-object v1, Lcom/flurry/sdk/li;->p:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    const-string/jumbo v0, "ProtonConfigUrl"

    sget-object v1, Lcom/flurry/sdk/li;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    const-string/jumbo v0, "analyticsEnabled"

    sget-object v1, Lcom/flurry/sdk/li;->r:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/li;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/flurry/sdk/li;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/flurry/sdk/li;

    invoke-direct {v0}, Lcom/flurry/sdk/li;-><init>()V

    sput-object v0, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;

    .line 28
    :cond_0
    sget-object v0, Lcom/flurry/sdk/li;->s:Lcom/flurry/sdk/li;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
