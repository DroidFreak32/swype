.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/FlurryAgent$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/flurry/android/FlurryAgentListener;

.field private static d:Z

.field private static e:I

.field private static f:J

.field private static g:Z

.field private static h:Z

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/flurry/android/FlurryAgent$1;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$1;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/sdk/ka;

    .line 66
    sput-object v3, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    .line 69
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->d:Z

    .line 72
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/FlurryAgent;->e:I

    .line 75
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->f:J

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->g:Z

    .line 81
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->h:Z

    .line 84
    sput-object v3, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic a()Lcom/flurry/android/FlurryAgentListener;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    return-object v0
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryAgentListener;ZIJZZLandroid/content/Context;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/16 v3, 0xa

    .line 36
    .line 4111
    sput-object p0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    .line 4204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_5e

    .line 4205
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    :goto_10
    sput-boolean p1, Lcom/flurry/android/FlurryAgent;->d:Z

    .line 4233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_8c

    .line 4234
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    :goto_1e
    sput p2, Lcom/flurry/android/FlurryAgent;->e:I

    .line 4257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_9e

    .line 4258
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    :goto_2c
    sput-wide p3, Lcom/flurry/android/FlurryAgent;->f:J

    .line 4354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_aa

    .line 4355
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    :goto_3a
    sput-boolean p5, Lcom/flurry/android/FlurryAgent;->g:Z

    .line 4393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_df

    .line 4394
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    :goto_48
    sput-boolean p6, Lcom/flurry/android/FlurryAgent;->h:Z

    .line 4466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_f7

    .line 4467
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    :goto_56
    sput-object p8, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    .line 4130
    sget-object v0, Lcom/flurry/android/FlurryAgent;->i:Ljava/lang/String;

    invoke-static {p7, v0}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void

    .line 4209
    :cond_5e
    if-nez p0, :cond_75

    .line 4210
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Listener cannot be null"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/sdk/ka;

    .line 4212
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    goto :goto_10

    .line 4216
    :cond_75
    sput-object p0, Lcom/flurry/android/FlurryAgent;->c:Lcom/flurry/android/FlurryAgentListener;

    .line 4217
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/flurry/android/FlurryAgent;->b:Lcom/flurry/sdk/ka;

    .line 4218
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 4220
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "\'setFlurryAgentListener\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 4238
    :cond_8c
    if-eqz p1, :cond_9a

    .line 4239
    invoke-static {}, Lcom/flurry/sdk/kf;->b()V

    .line 4244
    :goto_91
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "\'setLogEnabled\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 4241
    :cond_9a
    invoke-static {}, Lcom/flurry/sdk/kf;->a()V

    goto :goto_91

    .line 4262
    :cond_9e
    invoke-static {p2}, Lcom/flurry/sdk/kf;->a(I)V

    .line 4264
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "\'setLogLevel\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 4359
    :cond_aa
    const-wide/16 v0, 0x1388

    cmp-long v0, p3, v0

    if-gez v0, :cond_c7

    .line 4360
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid time set for session resumption: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 4364
    :cond_c7
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "ContinueSessionMillis"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4366
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "\'setContinueSessionMillis\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 4398
    :cond_df
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "CaptureUncaughtExceptions"

    .line 4399
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4401
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "\'setCaptureUncaughtExceptions\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 4471
    :cond_f7
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "ProtonEnabled"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4474
    if-nez p6, :cond_116

    .line 4475
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v0

    const-string/jumbo v1, "analyticsEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4478
    :cond_116
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "\'setPulseEnabled\' method is deprecated."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56
.end method

.method public static addSessionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1357
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_e
    :goto_e
    return-void

    .line 1361
    :cond_f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1362
    :cond_1b
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "String name or value passed to addSessionProperty was null or empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1366
    :cond_24
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_33

    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_33
    invoke-static {}, Lcom/flurry/sdk/jd;->a()Lcom/flurry/sdk/jd;

    .line 3173
    invoke-static {}, Lcom/flurry/sdk/jd;->i()Lcom/flurry/sdk/jq;

    move-result-object v0

    .line 3174
    if-eqz v0, :cond_e

    .line 3175
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/jq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    const-class v1, Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_13

    .line 150
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 174
    :goto_11
    monitor-exit v1

    return-void

    .line 154
    :cond_13
    if-nez p0, :cond_21

    .line 155
    :try_start_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Null context"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1e

    .line 149
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 158
    :cond_21
    :try_start_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "API key not specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_30
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 163
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "Flurry is already initialized"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_1e

    .line 167
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/flurry/sdk/mb;->a()V

    .line 168
    invoke-static {p0, p1}, Lcom/flurry/sdk/jr;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_4d
    .catchall {:try_start_3e .. :try_end_44} :catchall_1e

    .line 173
    :goto_44
    :try_start_44
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "\'init\' method is deprecated."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 169
    :catch_4d
    move-exception v0

    .line 170
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_1e

    goto :goto_44
.end method

.method public static logEvent(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 6

    .prologue
    .line 728
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_11

    .line 731
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_10
    return-object v1

    .line 735
    :cond_11
    if-nez p0, :cond_1c

    .line 736
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 741
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2104
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v2

    .line 2105
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2106
    if-eqz v2, :cond_2c

    .line 2107
    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/flurry/sdk/ja;->a$7a1fda5(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2b} :catch_2e

    move-result-object v0

    :cond_2c
    :goto_2c
    move-object v1, v0

    .line 746
    goto :goto_10

    .line 742
    :catch_2e
    move-exception v0

    .line 743
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2c
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .registers 7
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
    .line 781
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_11

    .line 784
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_10
    return-object v1

    .line 788
    :cond_11
    if-nez p0, :cond_1c

    .line 789
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "String eventId passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 793
    :cond_1c
    if-nez p1, :cond_27

    .line 794
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, "String parameters passed to logEvent was null."

    invoke-static {v0, v2}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 799
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 2113
    invoke-static {}, Lcom/flurry/sdk/hk;->c()Lcom/flurry/sdk/ja;

    move-result-object v2

    .line 2114
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 2115
    if-eqz v2, :cond_36

    .line 2116
    invoke-virtual {v2, p0, p1}, Lcom/flurry/sdk/ja;->a$7a1fda5(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_35} :catch_38

    move-result-object v0

    :cond_36
    :goto_36
    move-object v1, v0

    .line 804
    goto :goto_10

    .line 800
    :catch_38
    move-exception v0

    .line 801
    sget-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_36
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 632
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 633
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_e
    return-void

    .line 637
    :cond_f
    if-nez p0, :cond_1a

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_1a
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_29

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Flurry SDK must be initialized before ending a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lf;->c(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_e

    .line 648
    :catch_31
    move-exception v0

    .line 649
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static onStartSession(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 578
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_e
    return-void

    .line 582
    :cond_f
    if-nez p0, :cond_1a

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1a
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-nez v0, :cond_29

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/flurry/sdk/lf;->a()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lf;->b(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_e

    .line 593
    :catch_31
    move-exception v0

    .line 594
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method
