.class public Lcom/flurry/sdk/ix;
.super Lcom/flurry/sdk/kr;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/ix;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/ix;->f:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/ix;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ix;-><init>(B)V

    .line 43
    return-void
.end method

.method private constructor <init>(B)V
    .registers 7

    .prologue
    const/4 v4, 0x4

    .line 46
    const-string/jumbo v0, "Analytics"

    const-class v1, Lcom/flurry/sdk/ix;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/kr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/flurry/sdk/ix;->e:Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    .line 1055
    const-string/jumbo v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ix;->i:Z

    .line 1056
    const-string/jumbo v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1057
    sget-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initSettings, UseHttps = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/ix;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1060
    const-string/jumbo v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1061
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ix;->b(Ljava/lang/String;)V

    .line 1062
    sget-object v1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initSettings, ReportUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/ix;->b()V

    .line 50
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ix;)V
    .registers 1

    .prologue
    .line 29
    .line 4121
    invoke-virtual {p0}, Lcom/flurry/sdk/kr;->b()V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ix;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    .line 6297
    new-instance v0, Lcom/flurry/sdk/kr$8;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/kr$8;-><init>(Lcom/flurry/sdk/kr;Ljava/lang/String;)V

    .line 12060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 94
    if-eqz p1, :cond_14

    const-string/jumbo v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 95
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    const-string/jumbo v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_14
    iput-object p1, p0, Lcom/flurry/sdk/ix;->h:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    const/4 v3, 0x4

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_68

    :cond_9
    :goto_9
    packed-switch v0, :pswitch_data_72

    .line 83
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    const-string/jumbo v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_15
    return-void

    .line 72
    :sswitch_16
    const-string/jumbo v1, "UseHttps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :sswitch_21
    const-string/jumbo v1, "ReportUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    .line 74
    :pswitch_2c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ix;->i:Z

    .line 75
    sget-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSettingUpdate, UseHttps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/ix;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 78
    :pswitch_4c
    check-cast p2, Ljava/lang/String;

    .line 79
    invoke-direct {p0, p2}, Lcom/flurry/sdk/ix;->b(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSettingUpdate, ReportUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 72
    nop

    :sswitch_data_68
    .sparse-switch
        -0xe48ec3c -> :sswitch_16
        0x62629b7b -> :sswitch_21
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4c
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 165
    new-instance v0, Lcom/flurry/sdk/ix$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/ix$2;-><init>(Lcom/flurry/sdk/ix;I)V

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/kr;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    return-void
.end method

.method protected final a([BLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 118
    .line 1106
    iget-object v0, p0, Lcom/flurry/sdk/ix;->h:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1107
    iget-object v0, p0, Lcom/flurry/sdk/ix;->h:Ljava/lang/String;

    .line 120
    :goto_6
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FlurryDataSender: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/flurry/sdk/kl;

    invoke-direct {v1}, Lcom/flurry/sdk/kl;-><init>()V

    .line 1134
    iput-object v0, v1, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    .line 2029
    const v0, 0x186a0

    iput v0, v1, Lcom/flurry/sdk/lx;->w:I

    .line 126
    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 2142
    iput-object v0, v1, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    .line 127
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/flurry/sdk/kv;

    invoke-direct {v0}, Lcom/flurry/sdk/kv;-><init>()V

    .line 3040
    iput-object v0, v1, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 4036
    iput-object p1, v1, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/flurry/sdk/ix$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/ix$1;-><init>(Lcom/flurry/sdk/ix;Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    iput-object v0, v1, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 160
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    .line 161
    return-void

    .line 1110
    :cond_67
    iget-boolean v0, p0, Lcom/flurry/sdk/ix;->i:Z

    if-eqz v0, :cond_6e

    .line 1111
    sget-object v0, Lcom/flurry/sdk/ix;->g:Ljava/lang/String;

    goto :goto_6

    .line 1113
    :cond_6e
    sget-object v0, Lcom/flurry/sdk/ix;->f:Ljava/lang/String;

    goto :goto_6
.end method
